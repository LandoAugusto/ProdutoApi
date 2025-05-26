using Microsoft.EntityFrameworkCore;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;

namespace ProductApi.Infra.Data.Repositories
{
    internal class UseTypePropertyStructureRepository(ProductDbContext context) : DomainRepository<UseTypePropertyStructure>(context),
        IUseTypePropertyStructureRepository
    {
        public async Task<IEnumerable<UseTypePropertyStructure>?> GetAsync(int useTypeId, RecordStatusEnum recordStatus)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => filtr.UseTypeId.Equals(useTypeId) && filtr.Status.Equals((int)recordStatus)),
                            includeProperties: source =>
                                    source
                                    .Include(item => item.PropertyStructure),
                            orderBy: item => item.OrderBy(y => y.UseTypePropertyStructureId)));

            return query.AsEnumerable();
        }
    }
}
