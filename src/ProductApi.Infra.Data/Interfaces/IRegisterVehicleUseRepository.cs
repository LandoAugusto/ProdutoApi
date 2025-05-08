using  ProductApi.Core.Entities.Enumerators;
using  ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace  ProductApi.Infra.Data.Interfaces
{
    public interface IRegisterVehicleUseRepository : IDomainRepository<Core.Entities.RegisterVehicleUse>
    {
        Task<IEnumerable<Core.Entities.RegisterVehicleUse>?> GetAllAsync(RecordStatusEnum recordStatus);
    }
}

