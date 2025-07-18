using Microsoft.EntityFrameworkCore;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;

namespace ProductApi.Infra.Data.Repositories
{
    internal class ProductVersionConstructionUseStructureRepository(ProductDbContext context) : DomainRepository<ProductVersionConstructionUseStructure>(context),
        IProductVersionConstructionUseStructureRepository
    {
        public async Task<IEnumerable<ProductVersionConstructionUseStructure>?> GetAsync(int productVersionId, int constructionTypeId, int useTypeId, int profileId, RecordStatusEnum recordStatus)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => filtr.ProductVersionConstructionUseType.ProductVersionConstructionType.ProductVersionId.Equals(productVersionId)
                            && filtr.ProductVersionConstructionUseType.ProductVersionConstructionType.ConstructionTypeId.Equals(constructionTypeId)
                            && filtr.ProductVersionConstructionUseType.UseTypeId.Equals(useTypeId)
                            && filtr.ProductVersionConstructionUseType.ProductVersionConstructionType.ProfileId.Equals(profileId)                            
                            && filtr.Status.Equals((int)recordStatus)),
                            includeProperties: source =>
                                    source
                                    .Include(item => item.PropertyStructure),
                            orderBy: item => item.OrderBy(y => y.ProductVersionConstructionUseTypeId)));

            return query.AsEnumerable();
        }
    }
}
