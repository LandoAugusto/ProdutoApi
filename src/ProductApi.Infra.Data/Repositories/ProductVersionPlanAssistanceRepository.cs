using Microsoft.EntityFrameworkCore;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;

namespace ProductApi.Infra.Data.Repositories
{
    internal class ProductVersionPlanAssistanceRepository(ProductDbContext context) : DomainRepository<ProductVersionPlanAssistance>(context),
        IProductVersionPlanAssistanceRepository
    {

        public async Task<IEnumerable<ProductVersionPlanAssistance>?> GetAsync(int productVersionId, int planId, RecordStatusEnum recordStatus)
        {
            var query = await Task.FromResult(
                GenerateQuery(
                    filter: (filtr => filtr.ProductVersionPlan.ProductVersionId.Equals(productVersionId)
                    && filtr.ProductVersionPlan.PlanId.Equals(planId)                    
                    && filtr.Status.Equals((int)recordStatus)),
                     includeProperties: source =>
                                    source
                                    .Include(item => item.Assistance),
                    orderBy: item => item.OrderBy(y => y.AssistanceId)));

            return query.AsEnumerable();
        }
    }
}
