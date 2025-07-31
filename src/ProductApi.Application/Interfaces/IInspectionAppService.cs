using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;

namespace ProductApi.Application.Interfaces
{
    public interface IInspectionAppService
    {
        Task<IEnumerable<InspectionReasonModel>?> ListReasoAsync(RecordStatusEnum recordStatus);
    }
}
