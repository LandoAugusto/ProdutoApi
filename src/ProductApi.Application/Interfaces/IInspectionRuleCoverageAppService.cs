using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;

namespace ProductApi.Application.Interfaces
{
    public interface IInspectionRuleCoverageAppService
    {
        Task<InspectionRuleCoverageModel?> ListAsync(int productVersionId, int contractTypeId, int profileId, int activityId,            int coverageId, RecordStatusEnum recordStatus);
    }
}
