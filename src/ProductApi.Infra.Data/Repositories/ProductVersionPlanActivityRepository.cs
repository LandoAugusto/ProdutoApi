using Microsoft.EntityFrameworkCore;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;

namespace ProductApi.Infra.Data.Repositories
{
    internal class ProductVersionPlanActivityRepository(ProductDbContext context) : DomainRepository<ProductVersionPlanActivity>(context),
        IProductVersionPlanActivityRepository
    {
        public async Task<IEnumerable<ProductVersionPlanActivity>?> ListAsync(int productVersionId, int activityId, RecordStatusEnum recordStatus)
        {
            var query = await Task.FromResult(
                GenerateQuery(
                    filter: (filtr => filtr.ProductVersionPlan.ProductVersion.ProductVersionId.Equals(productVersionId)
                    && filtr.ActivityId.Equals(activityId)
                    && filtr.Status.Equals((int)recordStatus)),
                    includeProperties: source =>
                                    source
                                    .Include(item => item.ProductVersionPlan)
                                        .ThenInclude(item => item.Plan),
                    orderBy: item => item.OrderBy(y => y.ProductVersionPlanId)));

            return query.AsEnumerable();
        }
    }
}
