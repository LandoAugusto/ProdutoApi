using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;

namespace ProductApi.Application.Interfaces
{
    public interface IProductVersionCoverageFranchiseAppService
    {
        Task<IEnumerable<FranchiseModel>?> GetAsync(int productVersionId, int coverageId, RecordStatusEnum recordStatus);
    }
}
