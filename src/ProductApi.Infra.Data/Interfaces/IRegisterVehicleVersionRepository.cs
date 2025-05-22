using ProductApi.Core.Entities;
using  ProductApi.Core.Entities.Enumerators;
using  ProductApi.Infra.Data.Repositories.Standard.Interfaces;


namespace  ProductApi.Infra.Data.Interfaces
{
    public interface IRegisterVehicleVersionRepository : IDomainRepository<Core.Entities.RegisterVehicleVersion>
    {
        Task<IEnumerable<RegisterVehicleVersion>?> GetSearchVersionAsync(int vehicleBranchId, string? name, RecordStatusEnum recordStatus);
    }
}

