using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;

namespace ProductApi.Application.Interfaces
{
    public interface ILaborCourtAppService
    {
        Task<IEnumerable<LaborCourtModel>?> GetAllAsync(RecordStatusEnum recordStatus);
        Task<IEnumerable<LaborCourtModel?>> ListAsync(LaborCourtFilterModel filter);
    }
}
