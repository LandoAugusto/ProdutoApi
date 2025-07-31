using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface IInspectionRuleHazardGroupRepository : IDomainRepository<InspectionRuleHazardGroup>
    {
        Task<InspectionRuleHazardGroup?> ListAsync(int productVersionId, int contractTypeId, int hazardGroupId, RecordStatusEnum recordStatus);
    }
}
