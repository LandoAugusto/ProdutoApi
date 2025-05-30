using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public  interface IProductVersionCoverageActivityLimitRepository : IDomainRepository<ProductVersionCoverageActivityLimit>
    {
        Task<ProductVersionCoverageActivityLimit?> GetAsync(int productVersionId, int coverageId, int activityId, int profileId, RecordStatusEnum recordStatus);
    }
}
