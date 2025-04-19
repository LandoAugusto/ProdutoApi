using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;
using Microsoft.EntityFrameworkCore;

namespace ProductApi.Infra.Data.Repositories
{
    internal class ProductVersionInsuredObjectRepository(ProductDbContext context) : DomainRepository<ProductVersionInsuredObject>(context), IProductVersionInsuredObjectRepository
    {
        public async Task<ProductVersionInsuredObject?> GetAsync(int productVersionId, RecordStatusEnum recordStatus)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => filtr.ProductVersionId.Equals(productVersionId) && filtr.Status.Equals((int)recordStatus)),
                            includeProperties: source =>
                                    source
                                    .Include(item => item.ProductVersion)
                                    .Include(item => item.InsuredObject)
                                       .ThenInclude(item => item.InsuredObjectBlock),
                            orderBy: item => item.OrderBy(y => y.ProductVersionInsuredObjectId)));

            return query.FirstOrDefault();
        }
    }
}
