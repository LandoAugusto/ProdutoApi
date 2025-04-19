using Product.Core.Entities;
using Product.Core.Entities.Enumerators;
using Product.Infra.Data.Contexts;
using Product.Infra.Data.Interfaces;
using Product.Infra.Data.Repositories.Standard;
using Microsoft.EntityFrameworkCore;

namespace Product.Infra.Data.Repositories
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
