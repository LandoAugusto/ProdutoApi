using  ProductApi.Core.Entities.Enumerators;
using  ProductApi.Core.Entities;
using  ProductApi.Core.Models;

namespace ProductApi.Application.Interfaces
{
    public interface IRegisterVehicleBodyWorkTypeService
    {
        Task<IEnumerable<RegisterVehicleBodyWorkTypeModel>?> GetAllAsync(RecordStatusEnum recordStatus);
    }
}
