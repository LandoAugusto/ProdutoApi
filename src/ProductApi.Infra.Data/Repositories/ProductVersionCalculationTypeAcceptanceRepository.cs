using Microsoft.EntityFrameworkCore;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;

namespace ProductApi.Infra.Data.Repositories
{
    internal class ProductVersionCalculationTypeAcceptanceRepository(ProductDbContext context) : DomainRepository<ProductVersionCalculationTypeAcceptance>(context),
        IProductVersionCalculationTypeAcceptanceRepository
    {
        public async Task<ProductVersionCalculationTypeAcceptance?> GetAsync(int productVersionCalculationTypeId, RecordStatusEnum recordStatus)
        {
            var query = await Task.FromResult(
                GenerateQuery(
                    filter: (filtr => filtr.ProductVersionCalculationTypeId.Equals(productVersionCalculationTypeId) && filtr.Status.Equals((int)recordStatus)),                    
                    orderBy: item => item.OrderBy(y => y.ProductVersionCalculationTypeAcceptanceId)));

            return query.FirstOrDefault();
        }
    }
}
