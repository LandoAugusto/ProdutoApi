using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;
using Microsoft.EntityFrameworkCore;

namespace ProductApi.Infra.Data.Repositories
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
