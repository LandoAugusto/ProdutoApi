using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface IProductVersionTermTypeRepository : IDomainRepository<ProductVersionTermType>
    {
        Task<IEnumerable<ProductVersionTermType>?> ListAsync(int productVersionId, RecordStatusEnum recordStatus);
    }
}
