
using  ProductApi.Core.Entities.Enumerators;
using  ProductApi.Core.Models;
using  ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace  ProductApi.Infra.Data.Interfaces
{
    public interface IRegisterVehicleDoorRepository : IDomainRepository<Core.Entities.RegisterVehicleDoor>
    {
        Task<IEnumerable<Core.Entities.RegisterVehicleDoor>?> GetAllAsync(RecordStatusEnum recordStatus);
    }
}
