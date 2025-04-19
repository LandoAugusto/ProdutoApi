using Product.Core.Entities;
using Product.Core.Entities.Enumerators;
using Product.Infra.Data.Contexts;
using Product.Infra.Data.Interfaces;
using Product.Infra.Data.Repositories.Standard;

namespace Product.Infra.Data.Repositories
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
