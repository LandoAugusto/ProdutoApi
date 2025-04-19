using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface IProductRepository : IDomainRepository<Core.Entities.Product>
    {
        Task<IEnumerable<Core.Entities.Product>?> GetAllAsync(RecordStatusEnum recordStatus);
    }
}

