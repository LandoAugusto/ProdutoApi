using  ProductApi.Core.Entities.Enumerators;
using  ProductApi.Core.Entities;
using  ProductApi.Core.Models;

namespace Product.Application.Interfaces
{
    public interface IRegisterVehicleBodyWorkTypeService
    {
        Task<IEnumerable<RegisterVehicleBodyWorkTypeModel>?> GetAllAsync(RecordStatusEnum recordStatus);
    }
}
