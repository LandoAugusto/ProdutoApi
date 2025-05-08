using  ProductApi.Core.Entities.Enumerators;
using  ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace  ProductApi.Infra.Data.Interfaces
{
    public interface IRegisterVehicleModelRepository : IDomainRepository<Core.Entities.RegisterVehicleModel>
    {
        Task<IEnumerable<Core.Entities.RegisterVehicleModel>?> GetAllAsync(RecordStatusEnum recordStatus);
    }
}

