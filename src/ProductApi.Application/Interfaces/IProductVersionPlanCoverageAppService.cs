using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;

namespace ProductApi.Application.Interfaces
{
    public interface IProductVersionPlanCoverageAppService
    {
        Task<IEnumerable<CoverageModel>?> ListAsync(int productVersionId, int planId, RecordStatusEnum recordStatus);
    }
}
