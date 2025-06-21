using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface IProductVersionRepository : IDomainRepository<ProductVersion>
    {
        Task<ProductVersion?> GetAsync(int productId, RecordStatusEnum recordStatus);
    }
}
