using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;
using Microsoft.EntityFrameworkCore;

namespace ProductApi.Infra.Data.Repositories
{
    internal class ProductVersionTermTypeRepository(ProductDbContext context) : DomainRepository<ProductVersionTermType>(context), IProductVersionTermTypeRepository
    {
        public async Task<IEnumerable<ProductVersionTermType>?> ListAsync(int productVersionId, RecordStatusEnum recordStatus)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => filtr.ProductVersionId.Equals(productVersionId) && filtr.Status.Equals((int)recordStatus)),
                            includeProperties: source =>
                                    source
                                    .Include(item => item.TermType),
                            orderBy: item => item.OrderBy(y => y.ProductVersionTermTypeId)));

            return query.AsEnumerable();
        }
    }
}
