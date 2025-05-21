using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;

namespace ProductApi.Application.Interfaces
{
    public interface IBranchAppService
    {
        Task<IEnumerable<BranchTypeModel>?> ListBranchTypeAsync(RecordStatusEnum recordStatusEnum);
        Task<IEnumerable<BranchModel>?> ListBranchAsync(int? brachTypeId, RecordStatusEnum recordStatusEnum);
        Task<IEnumerable<InsuranceBranchModel>?> ListInsuranceBranchAsync(int? brachId, RecordStatusEnum recordStatusEnum);
    }
}
