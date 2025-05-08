
using  ProductApi.Core.Entities.Enumerators;
using  ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace  ProductApi.Infra.Data.Interfaces
{
    public interface IRegisterVehicleYearRepository : IDomainRepository<Core.Entities.RegisterVehicleYear>
    {
        Task<IEnumerable<Core.Entities.RegisterVehicleYear>?> GetAllAsync(RecordStatusEnum recordStatus);
    }
}

