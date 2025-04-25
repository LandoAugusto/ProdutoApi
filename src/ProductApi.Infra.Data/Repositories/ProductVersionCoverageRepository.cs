using Microsoft.EntityFrameworkCore;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;

namespace ProductApi.Infra.Data.Repositories
{
    internal class ProductVersionCoverageRepository(ProductDbContext context) : DomainRepository<ProductVersionCoverage>(context), IProductVersionCoverageRepository
    {
        public async Task<ProductVersionCoverage?> GetAsync(int productVersionId, int coverageId, RecordStatusEnum recordStatus)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => filtr.ProductVersionId.Equals(productVersionId)
                            && filtr.CoverageId.Equals(coverageId)
                            && filtr.Status.Equals((int)recordStatus)),
                            includeProperties: source =>
                                    source
                                    .Include(item => item.Coverage),
                            orderBy: item => item.OrderBy(y => y.ProductVersionCoverageId)));

            return query.FirstOrDefault();
        }

        public async Task<IEnumerable<ProductVersionCoverage>?> ListAsync(int productVersionId, RecordStatusEnum recordStatus)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => filtr.ProductVersionId.Equals(productVersionId) && filtr.Status.Equals((int)recordStatus)),
                            includeProperties: source =>
                                    source                                    
                                    .Include(item => item.Coverage),
                            orderBy: item => item.OrderBy(y => y.ProductVersionCoverageId)));

            return query.AsEnumerable();
        }
    }
}
