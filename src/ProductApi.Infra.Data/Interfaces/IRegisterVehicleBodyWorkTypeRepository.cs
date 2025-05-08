using  ProductApi.Core.Entities.Enumerators;
using  ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace  ProductApi.Infra.Data.Interfaces
{
    public interface IRegisterVehicleBodyWorkTypeRepository : IDomainRepository<Core.Entities.RegisterVehicleBodyWorkType>
    {
        Task<IEnumerable<Core.Entities.RegisterVehicleBodyWorkType>?> GetAllAsync(RecordStatusEnum recordStatus);
    }
}
