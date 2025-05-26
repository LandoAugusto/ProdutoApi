using Microsoft.EntityFrameworkCore;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;

namespace ProductApi.Infra.Data.Repositories
{
    internal class ConstructionTypeUseTypeRepository(ProductDbContext context) : DomainRepository<ConstructionTypeUseType>(context),
        IConstructionTypeUseTypeRepository
    {
        public async Task<IEnumerable<ConstructionTypeUseType>?> GetAsync(int constructionTypeId, int profileId, RecordStatusEnum recordStatus)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => filtr.ConstructionTypeId.Equals(constructionTypeId) 
                            && filtr.ProfileId.Equals(profileId)
                            &&  filtr.Status.Equals((int)recordStatus)),
                            includeProperties: source =>
                                    source
                                    .Include(item => item.UseType),
                            orderBy: item => item.OrderBy(y => y.ConstructionTypeUseTypeId)));

            return query.AsEnumerable();
        }
    }
}
