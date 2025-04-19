using Product.Core.Entities;
using Product.Core.Entities.Enumerators;
using Product.Infra.Data.Repositories.Standard.Interfaces;

namespace Product.Infra.Data.Interfaces
{
    public interface IProductVersionTermTypeRepository : IDomainRepository<ProductVersionTermType>
    {
        Task<IEnumerable<ProductVersionTermType>?> ListAsync(int productVersionId, RecordStatusEnum recordStatus);
    }
}
