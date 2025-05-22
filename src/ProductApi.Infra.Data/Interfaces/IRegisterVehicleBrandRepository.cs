using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace  ProductApi.Infra.Data.Interfaces
{
    public interface IRegisterVehicleBrandRepository : IDomainRepository<RegisterVehicleBrand>
    {
        Task<IEnumerable<RegisterVehicleBrand>?> GetSearchBrandAsync(string name, RecordStatusEnum recordStatus);        
    }
}
