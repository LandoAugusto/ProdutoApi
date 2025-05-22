using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;

namespace ProductApi.Application.Interfaces
{
    public interface IRegisterVehicleVersionAppService
    {
        Task<IEnumerable<RegisterVehicleVersionModel>?> GetSearchVersionAsync(int vehicleModelId, string? name, RecordStatusEnum recordStatus);
    }
}
