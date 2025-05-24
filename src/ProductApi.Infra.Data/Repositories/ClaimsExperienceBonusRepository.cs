using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;

namespace ProductApi.Infra.Data.Repositories
{
    internal class ClaimsExperienceBonusRepository(ProductDbContext context): DomainRepository<ClaimsExperienceBonus>(context), IClaimsExperienceBonusRepository
    {
        public async Task<IEnumerable<ClaimsExperienceBonus>?> GetAllAsync(RecordStatusEnum recordStatus)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => filtr.Status.Equals((int)recordStatus)),
                            orderBy: item => item.OrderBy(y => y.ClaimsExperienceBonusId)));

            return query.AsEnumerable();
        }
    }
}
