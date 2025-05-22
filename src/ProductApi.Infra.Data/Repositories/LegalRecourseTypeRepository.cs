using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;

namespace ProductApi.Infra.Data.Repositories
{
    internal class LegalRecourseTypeRepository(ProductDbContext context) : DomainRepository<LegalRecourseType>(context), ILegalRecourseTypeRepository
    {
        public async Task<IEnumerable<LegalRecourseType>?> GetAllAsync(RecordStatusEnum recordStatus)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => filtr.Status.Equals((int)recordStatus)),
                            orderBy: item => item.OrderBy(y => y.LegalRecourseTypeId)));

            return query.AsEnumerable();
        }
    }
}
