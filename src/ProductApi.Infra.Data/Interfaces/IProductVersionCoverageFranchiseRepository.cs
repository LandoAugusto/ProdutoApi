using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface IProductVersionCoverageFranchiseRepository: IDomainRepository<ProductVersionCoverageFranchise> 
    {
        Task<IEnumerable<ProductVersionCoverageFranchise>?> GetAsync(int productVersionId, int coverageId, RecordStatusEnum recordStatus);
    }
}
