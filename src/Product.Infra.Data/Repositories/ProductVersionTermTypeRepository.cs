using Product.Core.Entities;
using Product.Core.Entities.Enumerators;
using Product.Infra.Data.Contexts;
using Product.Infra.Data.Interfaces;
using Product.Infra.Data.Repositories.Standard;
using Microsoft.EntityFrameworkCore;

namespace Product.Infra.Data.Repositories
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
                                    .Include(item => item.ProductVersion)
                                    .Include(item => item.TermType),
                            orderBy: item => item.OrderBy(y => y.ProductVersionTermTypeId)));

            return query.AsEnumerable();
        }
    }
}
