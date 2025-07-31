using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface IInspectionRuleCoverageRepository : IDomainRepository<InspectionRuleCoverage>  
    {
        Task<InspectionRuleCoverage?> ListAsync(int productVersionId, int contractTypeId, int profileId, int activityId, int coverageId, RecordStatusEnum recordStatus);
    }
}
