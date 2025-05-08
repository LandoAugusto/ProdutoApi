using  ProductApi.Core.Entities.Enumerators;
using  ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace  ProductApi.Infra.Data.Interfaces
{
    public interface IRegisterVehiclePassengerCapacityRepository :IDomainRepository<Core.Entities.RegisterVehiclePassengerCapacity>
    {
        Task<IEnumerable<Core.Entities.RegisterVehiclePassengerCapacity>?> GetAllAsync(RecordStatusEnum recordStatus);
    }
}

