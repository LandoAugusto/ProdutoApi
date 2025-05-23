using Microsoft.EntityFrameworkCore;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;

namespace ProductApi.Infra.Data.Repositories
{
    internal class ProductVersionCalculationTypeRepository(ProductDbContext context) : DomainRepository<ProductVersionCalculationType>(context),
        IProductVersionCalculationTypeRepository
    {
        public async Task<IEnumerable<ProductVersionCalculationType>?> ListAsync(int productVersionId, int profileId, RecordStatusEnum recordStatus)
        {
            var query = await Task.FromResult(
                GenerateQuery(
                    filter: (filtr => filtr.ProductVersionId.Equals(productVersionId) && filtr.ProfileId.Equals(profileId) && filtr.Status.Equals((int)recordStatus)),
                    includeProperties: source =>
                                    source
                                    .Include(item => item.CalculationType),
                    orderBy: item => item.OrderBy(y => y.CalculationTypeId)));

            return query.AsEnumerable();
        }

        public async Task<ProductVersionCalculationType?> GetAsync(int productVersionId, int profileId, int calculationTypeId,
            RecordStatusEnum recordStatus)
        {
            var query = await Task.FromResult(
                GenerateQuery(
                    filter: (filtr => filtr.ProductVersionId.Equals(productVersionId)
                    && filtr.ProfileId.Equals(profileId) && filtr.Status.Equals((int)recordStatus)
                    && filtr.CalculationTypeId.Equals(calculationTypeId)),
                    includeProperties: source =>
                                    source
                                    .Include(item => item.CalculationType),
                    orderBy: item => item.OrderBy(y => y.CalculationTypeId)));

            return query.FirstOrDefault();
        }
    }
}
