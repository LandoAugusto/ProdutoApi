using Microsoft.EntityFrameworkCore;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;

namespace ProductApi.Infra.Data.Repositories
{
    internal class ProductVersionLocalizationRepository(ProductDbContext context) : DomainRepository<ProductVersionLocalization>(context), IProductVersionLocalizationRepository
    {
        public async Task<IEnumerable<ProductVersionLocalization>?> ListAsync(int productVersionId, RecordStatusEnum recordStatus)
        {
            var query = await Task.FromResult(
                GenerateQuery(
                    filter: (filtr => filtr.ProductVersionId.Equals(productVersionId)
                    && filtr.Status.Equals((int)recordStatus)),
                    includeProperties: source =>
                                    source
                                    .Include(item => item.Localization),
                    orderBy: item => item.OrderBy(y => y.ProductVersionLocalizationId)));

            return query.AsEnumerable();
        }
    }
}
