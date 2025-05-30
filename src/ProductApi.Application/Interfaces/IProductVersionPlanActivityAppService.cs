using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;

namespace ProductApi.Application.Interfaces
{
    public interface IProductVersionPlanActivityAppService
    {
        Task<IEnumerable<PlanModel>?> ListAsync(int productVersionId, int activityId, RecordStatusEnum recordStatus);
    }
}
