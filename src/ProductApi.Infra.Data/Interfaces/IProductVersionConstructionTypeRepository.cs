using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface IProductVersionConstructionTypeRepository: IDomainRepository<ProductVersionConstructionType>
    {
        Task<IEnumerable<ProductVersionConstructionType>?> GetAsync(int productVersionId, int profileId, RecordStatusEnum recordStatus);
    }
}
