using Product.Core.Entities;
using Product.Core.Entities.Enumerators;
using Product.Infra.Data.Repositories.Standard.Interfaces;

namespace Product.Infra.Data.Interfaces
{
    public interface IProductVersionAcceptanceRepository : IDomainRepository<ProductVersionAcceptance>
    {
        Task<ProductVersionAcceptance?> GetAsync(int productVersionId, int profileId, RecordStatusEnum recordStatus);
    }
}
