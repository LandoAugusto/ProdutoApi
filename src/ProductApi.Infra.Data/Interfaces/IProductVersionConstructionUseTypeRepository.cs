using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface IProductVersionConstructionUseTypeRepository : IDomainRepository<ProductVersionConstructionUseType>
    {
        Task<IEnumerable<ProductVersionConstructionUseType>?> GetAsync(int productVersionId, int constructionTypeId, int profileId, RecordStatusEnum recordStatus);
    }
}
