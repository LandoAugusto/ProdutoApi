using Product.Core.Entities;
using Product.Core.Entities.Enumerators;
using Product.Infra.Data.Contexts;
using Product.Infra.Data.Interfaces;
using Product.Infra.Data.Repositories.Standard;
using Microsoft.EntityFrameworkCore;

namespace Product.Infra.Data.Repositories
{
    internal class ProductVersionPaymentMethodRepository(ProductDbContext context) : DomainRepository<ProductVersionPaymentMethod>(context), IProductVersionPaymentMethodRepository
    {
        public async Task<IEnumerable<ProductVersionPaymentMethod>?> ListAsync(int productVersionId, RecordStatusEnum recordStatus)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => filtr.ProductVersionId.Equals(productVersionId) && filtr.Status.Equals((int)recordStatus)),
                            includeProperties: source =>
                                    source
                                    .Include(item => item.ProductVersion)
                                    .Include(item => item.PaymentMethod),
                            orderBy: item => item.OrderBy(y => y.ProductVersionPaymentMethodId)));

            return query.AsEnumerable();
        }
    }
}
