using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;

namespace ProductApi.Application.Interfaces
{
    public interface IRegisterVehicleBrandAppService
    {   
        Task<IEnumerable<RegisterVehicleBrandModel>?> GetVehicleBrandAsync(string name, RecordStatusEnum recordStatus);
    }
}
