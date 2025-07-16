using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;

namespace ProductApi.Application.Interfaces
{
    public interface IProductVersionPlanAssistanceAppService
    {
        Task<IEnumerable<AssistanceModel>?> GetAsync(int productVersionId, int planId, RecordStatusEnum recordStatus);
    }
}
