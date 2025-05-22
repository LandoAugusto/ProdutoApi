using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface IProductVersionContractTypeRepository : IDomainRepository<ProductVersionContractType>
    {
        Task<IEnumerable<ProductVersionContractType>?> GetProductVersionContractTypeAsync(int productVersionId, RecordStatusEnum recordStatus);
    }
}

