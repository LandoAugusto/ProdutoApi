using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface IProductVersionLawsuitTypeRepository : IDomainRepository<ProductVersionLawsuitType>
    {
        Task<IEnumerable<ProductVersionLawsuitType>?> ListAsync(int productVersionId, RecordStatusEnum recordStatus);
    }
}
