using  ProductApi.Core.Entities.Enumerators;
using  ProductApi.Infra.Data.Repositories.Standard.Interfaces;


namespace  ProductApi.Infra.Data.Interfaces
{
    public interface IRegisterVehicleAcessoryRepository : IDomainRepository<Core.Entities.RegisterVehicleAccessory>
    {
        Task<IEnumerable<Core.Entities.RegisterVehicleAccessory>?> GetAllAsync(RecordStatusEnum recordStatus);
    }
}
