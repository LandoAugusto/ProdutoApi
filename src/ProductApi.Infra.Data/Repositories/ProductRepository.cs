using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;

namespace ProductApi.Infra.Data.Repositories
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
