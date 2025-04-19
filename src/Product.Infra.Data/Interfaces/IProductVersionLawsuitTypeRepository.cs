using Product.Core.Entities;
using Product.Core.Entities.Enumerators;
using Product.Infra.Data.Repositories.Standard.Interfaces;

namespace Product.Infra.Data.Interfaces
{
    public interface IProductVersionLawsuitTypeRepository : IDomainRepository<ProductVersionLawsuitType>
    {
        Task<IEnumerable<ProductVersionLawsuitType>?> ListAsync(int productVersionId, RecordStatusEnum recordStatus);
    }
}
