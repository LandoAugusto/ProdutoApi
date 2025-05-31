using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;

namespace ProductApi.Infra.Data.Repositories
{
    internal class ProtectiveDevicesRepository(ProductDbContext context) : DomainRepository<ProtectiveDevices>(context),
        IProtectiveDevicesRepository
    {
        public async Task<IEnumerable<ProtectiveDevices>?> GetAllAsync(int protectiveDevicesTypeId, RecordStatusEnum recordStatus)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => filtr.ProtectiveDevicesTypeId.Equals(protectiveDevicesTypeId) 
                            && filtr.Status.Equals((int)recordStatus)),
                            orderBy: item => item.OrderBy(y => y.ProtectiveDevicesId)));

            return query.AsEnumerable();
        }
    }
}
