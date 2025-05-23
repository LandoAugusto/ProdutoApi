using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;

namespace ProductApi.Application.Interfaces
{
    public interface IRegisterVehicleYearAppService
    {
        Task<IEnumerable<RegisterVehicleYearModel>?> GetAllAsync(RecordStatusEnum recordStatus);
    }
}
