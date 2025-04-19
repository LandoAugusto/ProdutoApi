using Product.Core.Entities;
using Product.Core.Entities.Enumerators;
using Product.Infra.Data.Contexts;
using Product.Infra.Data.Interfaces;
using Product.Infra.Data.Repositories.Standard;

namespace Product.Infra.Data.Repositories
{
    internal class ProductVersionRepository(ProductDbContext context) : DomainRepository<ProductVersion>(context), IProductVersionRepository
    {
        public async Task<ProductVersion?> GetAsync(int productId, int coverageId, RecordStatusEnum recordStatus)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => filtr.ProductId.Equals(productId)  && filtr.Status.Equals((int)recordStatus)),                             
                            orderBy: item => item.OrderBy(y => y.ProductVersionId)));

            return query.FirstOrDefault();
        }
    }
}
