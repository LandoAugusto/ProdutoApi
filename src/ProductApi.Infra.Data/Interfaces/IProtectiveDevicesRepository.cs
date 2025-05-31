using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface IProtectiveDevicesRepository : IDomainRepository<ProtectiveDevices>
    {
        // Define any additional methods specific to ProtectiveDevice if needed
        Task<IEnumerable<ProtectiveDevices>?> GetAllAsync(int protectiveDevicesTypeId, RecordStatusEnum recordStatus);
    }
}
