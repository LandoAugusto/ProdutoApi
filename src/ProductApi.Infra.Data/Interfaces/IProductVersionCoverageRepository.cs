using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface IProductVersionCoverageRepository :IDomainRepository<ProductVersionCoverage>
    {
        Task<ProductVersionCoverage?> GetAsync(int productVersionId, int coverageId, RecordStatusEnum recordStatus);
        Task<IEnumerable<ProductVersionCoverage>?> ListAsync(int productVersionId, RecordStatusEnum recordStatus);
    }
}
