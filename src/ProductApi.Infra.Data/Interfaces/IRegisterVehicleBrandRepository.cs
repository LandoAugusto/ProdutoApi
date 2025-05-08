using  ProductApi.Core.Entities.Enumerators;
using  ProductApi.Core.Models;
using  ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace  ProductApi.Infra.Data.Interfaces
{
    public interface IRegisterVehicleBrandRepository : IDomainRepository<Core.Entities.RegisterVehicleBrand>
    {
        Task<IEnumerable<Core.Entities.RegisterVehicleBrand>?> GetAllAsync(RecordStatusEnum recordStatus);
    }
}
