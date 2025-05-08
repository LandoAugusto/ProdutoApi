using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;

namespace ProductApi.Application.Interfaces
{
    public interface IProductVersionCoverageAppService
    {
        Task<CoverageModel?> GetAsync(int productVersionId, int coverageId, RecordStatusEnum recordStatus);
        Task<IEnumerable<CoverageModel>?> ListAsync(int productVersionId, RecordStatusEnum recordStatus);
    }
}
