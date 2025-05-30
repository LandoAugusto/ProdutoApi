using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;

namespace ProductApi.Infra.Data.Repositories
{
    internal class ProductVersionCoverageActivityLimitRepository(ProductDbContext context) : DomainRepository<ProductVersionCoverageActivityLimit>(context)
        , IProductVersionCoverageActivityLimitRepository
    {
        public async Task<ProductVersionCoverageActivityLimit?> GetAsync(int productVersionId, int coverageId, int activityId, int profileId, RecordStatusEnum recordStatus)
        {
            var query = await Task.FromResult(
                GenerateQuery(
                    filter: (filtr => filtr.ProductVersionCoverage.ProductVersionId.Equals(productVersionId)
                    && filtr.ProductVersionCoverage.CoverageId.Equals(coverageId)
                    && filtr.ProfileId.Equals(profileId)
                    && filtr.ActivityId.Equals(activityId)
                    && filtr.Status.Equals((int)recordStatus)),
                    orderBy: item => item.OrderBy(y => y.ProductVersionCoverageId)));

            return query.FirstOrDefault();
        }

    }
}
