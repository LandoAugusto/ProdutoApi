using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;

namespace ProductApi.Application.Interfaces
{
    public interface IProductVersionCoverageActivityLimitAppService
    {
        Task<ProductVersionCoverageActivityLimitModel?> GetAsync(int productVersionId, int coverageId, int activityId, int profileId, RecordStatusEnum recordStatus);
    }
}
