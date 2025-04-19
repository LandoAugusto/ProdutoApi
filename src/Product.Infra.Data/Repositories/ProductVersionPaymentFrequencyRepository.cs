using Product.Core.Entities;
using Product.Core.Entities.Enumerators;
using Product.Infra.Data.Contexts;
using Product.Infra.Data.Interfaces;
using Product.Infra.Data.Repositories.Standard;
using Microsoft.EntityFrameworkCore;

namespace Product.Infra.Data.Repositories
{
    internal class ProductVersionPaymentFrequencyRepository(ProductDbContext context) : DomainRepository<ProductVersionPaymentFrequency>(context), IProductVersionPaymentFrequencyRepository    
    {

        public async Task<IEnumerable<ProductVersionPaymentFrequency?>> ListAsync(int productVersionId, RecordStatusEnum recordStatus)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => filtr.Status.Equals((int)recordStatus)        && filtr.ProductVersionId.Equals(productVersionId)),
                           includeProperties: source =>
                                    source
                                    .Include(item => item.PaymentFrequency),
                            orderBy: item => item.OrderBy(y => y.PaymentFrequencyId)));

            return query.AsEnumerable();
        }
    }
}
