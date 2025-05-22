using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;

namespace ProductApi.Application.Interfaces
{
    public interface IRegisterVehicleBrandAppService
    {   
        Task<IEnumerable<RegisterVehicleBrandModel>?> GetSearchBrandAsync(string name, RecordStatusEnum recordStatus);
    }
}
