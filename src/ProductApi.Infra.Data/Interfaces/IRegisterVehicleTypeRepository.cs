using  ProductApi.Core.Entities.Enumerators;
using  ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace  ProductApi.Infra.Data.Interfaces
{
    public interface IRegisterVehicleTypeRepository : IDomainRepository<Core.Entities.RegisterVehicleType>
    {
        Task<IEnumerable<Core.Entities.RegisterVehicleType>?> GetAllAsync(RecordStatusEnum recordStatus);
    }
}

