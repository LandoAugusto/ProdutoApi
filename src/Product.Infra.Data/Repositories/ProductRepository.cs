using Product.Core.Entities.Enumerators;
using Product.Infra.Data.Contexts;
using Product.Infra.Data.Interfaces;
using Product.Infra.Data.Repositories.Standard;

namespace Product.Infra.Data.Repositories
{
    internal class ProductRepository(ProductDbContext context) : DomainRepository<Core.Entities.Product>(context), IProductRepository
    {
        public async Task<IEnumerable<Core.Entities.Product>?> GetAllAsync(RecordStatusEnum recordStatus)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => filtr.Status.Equals((int)recordStatus)),
                            orderBy: item => item.OrderBy(y => y.ProductId)));

            return query.AsEnumerable();
        }
    }
}
