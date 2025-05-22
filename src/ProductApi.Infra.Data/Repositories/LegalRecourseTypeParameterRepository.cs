using ProductApi.Core.Entities;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;

namespace ProductApi.Infra.Data.Repositories
{
    internal class LegalRecourseTypeParameterRepository(ProductDbContext context) : DomainRepository<LegalRecourseTypeParameter>(context), ILegalRecourseTypeParameterRepository
    {
        public async Task<LegalRecourseTypeParameter?> GetByLegalRecourseTypeIdAsync(int legalRecourseTypeId)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => filtr.LegalRecourseTypeId == legalRecourseTypeId && filtr.EndCoverage == null),
                            orderBy: item => item.OrderBy(y => y.LegalRecourseTypeId)));

            return query.FirstOrDefault();
        }
    }
}
