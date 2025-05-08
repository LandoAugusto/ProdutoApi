
using Amazon.Runtime;
using  ProductApi.Core.Entities.Enumerators;
using  ProductApi.Core.Models;
using  ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace  ProductApi.Infra.Data.Interfaces
{
    public interface IRegisterVehicleFuelTypeRepository : IDomainRepository<Core.Entities.RegisterVehicleFuelType>
    {
        Task<IEnumerable<Core.Entities.RegisterVehicleFuelType>?> GetAllAsync(RecordStatusEnum recordStatus);
    }
}

