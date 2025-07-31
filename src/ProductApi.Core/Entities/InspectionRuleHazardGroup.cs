using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class InspectionRuleHazardGroup : IIdentityEntity
    {
        public int InspectionRuleHazardGroupId { get; set; }
        public int InspectionReasonId { get; set; }
        public int ProductVersionId { get; set; }
        public int ContractTypeId { get; set; }        
        public int HazardGroupId { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
        public virtual InspectionReason InspectionReason { get; set; } = null!;
        public virtual ProductVersion ProductVersion { get; set; } = null!;
        public virtual ContractType ContractType { get; set; } = null!;
        public virtual HazardGroup HazardGroup { get; set; } = null!;
        public virtual ICollection<InspectionRuleHazardGroupLimit> InspectionRuleHazardGroupLimit { get; set; } = new HashSet<InspectionRuleHazardGroupLimit>();
    }
}
