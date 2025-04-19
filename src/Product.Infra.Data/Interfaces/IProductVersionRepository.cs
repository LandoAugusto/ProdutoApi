using Product.Core.Entities;
using Product.Core.Entities.Enumerators;
using Product.Infra.Data.Repositories.Standard.Interfaces;

namespace Product.Infra.Data.Interfaces
{
    public interface IProductVersionRepository : IDomainRepository<ProductVersion>
    {
        Task<ProductVersion?> GetAsync(int productId, int coverageId, RecordStatusEnum recordStatus);
    }
}
