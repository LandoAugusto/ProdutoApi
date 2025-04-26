using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Model;

namespace ProductApi.Application.Interfaces
{
    public interface IBranchAppService
    {
        Task<IEnumerable<BranchTypeModel>?> ListBranchTypeAsync(RecordStatusEnum recordStatusEnum);
    }
}
