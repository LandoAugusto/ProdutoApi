using Microsoft.EntityFrameworkCore;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;

namespace ProductApi.Infra.Data.Repositories
{
    internal class ProductVersionConstructionUseTypeRepository(ProductDbContext context) : DomainRepository<ProductVersionConstructionUseType>(context),
        IProductVersionConstructionUseTypeRepository
    {
        public async Task<IEnumerable<ProductVersionConstructionUseType>?> GetAsync(int productVersionId, int constructionTypeId, int profileId, RecordStatusEnum recordStatus)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (
                            filtr => filtr.ProductVersionConstructionType.ProductVersionId.Equals(productVersionId)
                            && filtr.ProductVersionConstructionType.ConstructionTypeId.Equals(constructionTypeId)
                            && filtr.ProductVersionConstructionType.ProfileId.Equals(profileId)
                            && filtr.Status.Equals((int)recordStatus)),
                            includeProperties: source =>
                                    source
                                    .Include(item => item.UseType),
                            orderBy: item => item.OrderBy(y => y.ProductVersionConstructionUseTypeId)));

            return query.AsEnumerable();
        }
    }
}
