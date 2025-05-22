using ProductApi.Core.Entities;
using  ProductApi.Core.Entities.Enumerators;
using  ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace  ProductApi.Infra.Data.Interfaces
{
    public interface IRegisterVehicleModelRepository : IDomainRepository<RegisterVehicleModel>
    {   
        Task<IEnumerable<RegisterVehicleModel>?> GetSearchModelAsync(int vehicleBranchId, string? name, RecordStatusEnum recordStatus);
    }
}

