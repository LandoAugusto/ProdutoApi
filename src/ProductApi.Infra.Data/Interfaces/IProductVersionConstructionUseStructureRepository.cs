using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface IProductVersionConstructionUseStructureRepository : IDomainRepository<ProductVersionConstructionUseStructure>  
    {
        Task<IEnumerable<ProductVersionConstructionUseStructure>?> GetAsync(int productVersionId, int constructionTypeId, int useTypeId, int profileId, RecordStatusEnum recordStatus);
    }
}
