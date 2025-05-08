using  ProductApi.Core.Entities;
using  ProductApi.Core.Entities.Enumerators;
using  ProductApi.Core.Models;

namespace Product.Application.Interfaces
{
    public interface IRegisterVehicleAccessoryService
    {
        Task<IEnumerable<RegisterVehicleAccessoryModel>?> GetAllAsync(RecordStatusEnum recordStatus);
    }
}
