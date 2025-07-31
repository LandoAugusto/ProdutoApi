using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class ContractType : IIdentityEntity
    {
        public int ContractTypeId { get; set; }
        public required string Name { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public virtual ICollection<ProductVersionContractType> ProductVersionContractType { get; set; } = new HashSet<ProductVersionContractType>();
        public virtual ICollection<InspectionRuleActivity> InspectionRuleActivity { get; set; } = new HashSet<InspectionRuleActivity>();
        public virtual ICollection<InspectionRuleHazardGroup> InspectionRuleHazardGroup { get; set; } = new HashSet<InspectionRuleHazardGroup>();
        public virtual ICollection<InspectionRuleCoverage> InspectionRuleCoverage { get; set; } = new HashSet<InspectionRuleCoverage>();
    }
}
