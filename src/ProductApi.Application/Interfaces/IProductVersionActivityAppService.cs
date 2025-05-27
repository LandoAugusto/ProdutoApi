using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;

namespace ProductApi.Application.Interfaces
{
    public interface IProductVersionActivityAppService
    {
        Task<ActivityModel?> GetAsync(int productVersionId, int profileId, int activityId, RecordStatusEnum recordStatus);
        Task<IEnumerable<ActivityModel>?> ListAsync(int productVersionId, int profileId, string? name, RecordStatusEnum recordStatus);
    }
}
