using Product.Core.Entities.Enumerators;
using Product.Infra.Data.Repositories.Standard.Interfaces;

namespace Product.Infra.Data.Interfaces
{
    public interface IProductRepository : IDomainRepository<Core.Entities.Product>
    {
        Task<IEnumerable<Core.Entities.Product>?> GetAllAsync(RecordStatusEnum recordStatus);
    }
}

