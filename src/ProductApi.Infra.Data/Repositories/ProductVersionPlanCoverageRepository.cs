using Microsoft.EntityFrameworkCore;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;

namespace ProductApi.Infra.Data.Repositories
{
    internal class ProductVersionPlanCoverageRepository(ProductDbContext context) : DomainRepository<ProductVersionPlanCoverage>(context),
        IProductVersionPlanCoverageRepository   
    {
        public async Task<IEnumerable<ProductVersionPlanCoverage>?> ListAsync(int productVersionPlanId, RecordStatusEnum recordStatus)
        {
            var query = await Task.FromResult(
                GenerateQuery(
                    filter: (filtr => filtr.ProductVersionPlanId.Equals(productVersionPlanId)                    
                    && filtr.Status.Equals((int)recordStatus)),
                    includeProperties: source =>
                                    source
                                    .Include(item => item.ProductVersionCoverage)
                                        .ThenInclude(item => item.Coverage),
                    orderBy: item => item.OrderBy(y => y.ProductVersionPlanId)));

            return query.AsEnumerable();
        }
    }
}
