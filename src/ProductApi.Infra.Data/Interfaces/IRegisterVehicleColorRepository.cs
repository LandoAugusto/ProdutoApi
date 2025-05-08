using  ProductApi.Core.Entities.Enumerators;
using  ProductApi.Core.Models;
using  ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace  ProductApi.Infra.Data.Interfaces
{
    public interface IRegisterVehicleColorRepository : IDomainRepository<Core.Entities.RegisterVehicleColor>
    {
        Task<IEnumerable<Core.Entities.RegisterVehicleColor>?> GetAllAsync(RecordStatusEnum recordStatus);

    }
}
