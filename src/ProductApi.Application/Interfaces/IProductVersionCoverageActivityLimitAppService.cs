using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;

namespace ProductApi.Application.Interfaces
{
    public interface IProductVersionCoverageActivityLimitAppService
    {
        Task<CoverageActivityLimitModel?> GetAsync(int productVersionId, int coverageId, int activityId, int profileId, RecordStatusEnum recordStatus);
    }
}
