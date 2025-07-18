using Microsoft.EntityFrameworkCore;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;

namespace ProductApi.Infra.Data.Repositories
{
    internal class ProductVersionPlanUsePropertyRepository(ProductDbContext context) : DomainRepository<ProductVersionPlanUseProperty>(context), 
        IProductVersionPlanUsePropertyRepository
    {
        public async Task<IEnumerable<ProductVersionPlanUseProperty>?> GetAsync(int productVersionId, int useTypeId,int propertyStructureId, RecordStatusEnum recordStatus)
        {
            var query = await Task.FromResult(
                GenerateQuery(
                    filter: (filtr => filtr.ProductVersionPlan.ProductVersion.ProductVersionId.Equals(productVersionId)
                    && filtr.UseTypeId.Equals(useTypeId)
                    && filtr.PropertyStructureId.Equals(propertyStructureId)
                    && filtr.Status.Equals((int)recordStatus)),
                    includeProperties: source =>
                                    source
                                    .Include(item => item.ProductVersionPlan)
                                        .ThenInclude(item => item.Plan)
                                        .ThenInclude(item => item.PlanType),
                    orderBy: item => item.OrderBy(y => y.ProductVersionPlanId)));

            return query.AsEnumerable();
        }
    }
}
