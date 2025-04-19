using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface IProductVersionAcceptanceRepository : IDomainRepository<ProductVersionAcceptance>
    {
        Task<ProductVersionAcceptance?> GetAsync(int productVersionId, int profileId, RecordStatusEnum recordStatus);
    }
}
