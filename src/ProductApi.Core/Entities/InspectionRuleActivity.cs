using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class InspectionRuleActivity : IIdentityEntity
    {
        public int InspectionRuleActivityId { get; set; }
        public int InspectionReasonId { get; set; }
        public int ProductVersionId { get; set; }
        public int ContractTypeId { get; set; }
        public int ProfileId { get; set; }
        public int ActivityId { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
        public virtual InspectionReason InspectionReason { get; set; } = null!;
        public virtual ProductVersion ProductVersion { get; set; } = null!;
        public virtual ContractType ContractType { get; set; } = null!;
        public virtual Profile Profile { get; set; } = null!;
        public virtual Activity Activity { get; set; } = null!;
    }
}
