using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface IProductVersionPlanActivityRepository : IDomainRepository<ProductVersionPlanActivity>
    {
        Task<IEnumerable<ProductVersionPlanActivity>?> ListAsync(int productVersionId, int activityId, RecordStatusEnum recordStatus);
    }
}
