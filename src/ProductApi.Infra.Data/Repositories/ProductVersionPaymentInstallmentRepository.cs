using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;
using Microsoft.EntityFrameworkCore;

namespace ProductApi.Infra.Data.Repositories
{
    internal class ProductVersionPaymentInstallmentRepository(ProductDbContext context) : DomainRepository<ProductVersionPaymentInstallment>(context), IProductVersionPaymentInstallmentRepository
    {
        public async Task<IEnumerable<ProductVersionPaymentInstallment>?> ListAsync(int productVersionPaymentMethodId)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => filtr.ProductVersionPaymentMethodId.Equals(productVersionPaymentMethodId)),
                            includeProperties: source =>
                                    source
                                    .Include(item => item.PaymentInstallment),                                    
                            orderBy: item => item.OrderBy(y => y.ProductVersionPaymentMethodId)));

            return query.AsEnumerable();
        }
    }
}
