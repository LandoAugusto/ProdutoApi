using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;

namespace ProductApi.Infra.Data.Repositories
{
    internal class ProductVersionAcceptanceRepository(ProductDbContext context) : DomainRepository<ProductVersionAcceptance>(context), IProductVersionAcceptanceRepository
    {
        public async Task<ProductVersionAcceptance?> GetAsync(int productVersionId, int profileId, RecordStatusEnum recordStatus)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => filtr.ProductVersionId.Equals(productVersionId) 
                                                && filtr.ProfileId.Equals(profileId) 
                                                && filtr.Status.Equals((int)recordStatus)),
                            orderBy: item => item.OrderBy(y => y.ProductVersionId)));

            return query.FirstOrDefault();
        }
    }
}
