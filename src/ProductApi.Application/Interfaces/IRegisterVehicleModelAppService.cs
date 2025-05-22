using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;

namespace ProductApi.Application.Interfaces
{
    public interface IRegisterVehicleModelAppService
    {
        Task<IEnumerable<RegisterVehicleModelModel>?> GetSearchModelAsync(int vehicleBranchId, string? name, RecordStatusEnum recordStatus);
    }
}
