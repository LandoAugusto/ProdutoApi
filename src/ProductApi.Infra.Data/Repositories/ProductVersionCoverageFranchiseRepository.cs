using Microsoft.EntityFrameworkCore;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;

namespace ProductApi.Infra.Data.Repositories
{
    internal class ProductVersionCoverageFranchiseRepository(ProductDbContext context) : DomainRepository<ProductVersionCoverageFranchise>(context),
        IProductVersionCoverageFranchiseRepository
    {
        public async Task<IEnumerable<ProductVersionCoverageFranchise>?> GetAsync(int productVersionId, int coverageId, RecordStatusEnum recordStatus)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => filtr.ProductVersionCoverage.ProductVersionId.Equals(productVersionId)
                            && filtr.ProductVersionCoverage.CoverageId.Equals(coverageId)
                            && filtr.Status.Equals((int)recordStatus)),
                            includeProperties: source =>
                                    source
                                    .Include(item => item.Franchise),
                            orderBy: item => item.OrderBy(y => y.Order)));

            return query.AsEnumerable();
        }
    }
}
