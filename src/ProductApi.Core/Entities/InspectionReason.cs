using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class InspectionReason : IIdentityEntity
    {
        public int? InspectionReasonId { get; set; }
        public required string Description { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
        public virtual ICollection<InspectionRuleCoverage> InspectionRuleCoverage { get; set; } = new HashSet<InspectionRuleCoverage>();
        public virtual ICollection<InspectionRuleHazardGroup> InspectionRuleHazardGroup { get; set; } = new HashSet<InspectionRuleHazardGroup>();
        public virtual ICollection<InspectionRuleActivity> InspectionRuleActivity { get; set; } = new HashSet<InspectionRuleActivity>();
    }   
}
