using Microsoft.EntityFrameworkCore;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;

namespace ProductApi.Infra.Data.Repositories
{
    internal class ProductVersionConstructionTypeRepository(ProductDbContext context) : DomainRepository<ProductVersionConstructionType>(context),
        IProductVersionConstructionTypeRepository
    {

        public async Task<IEnumerable<ProductVersionConstructionType>?> GetAsync(int productVersionId, int profileId, RecordStatusEnum recordStatus)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => filtr.ProductVersionId.Equals(productVersionId)
                            && filtr.ProfileId.Equals(profileId)
                            && filtr.Status.Equals((int)recordStatus)),
                            includeProperties: source =>
                                    source
                                    .Include(item => item.ConstructionType),
                            orderBy: item => item.OrderBy(y => y.ProductVersionConstructionTypeId)));

            return query.AsEnumerable();
        }
    }
}
