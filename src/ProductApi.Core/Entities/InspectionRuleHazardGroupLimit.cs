using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class InspectionRuleHazardGroupLimit : IIdentityEntity
    {
        public int? InspectionRuleHazardGroupLimitId { get; set; }
        public int? InspectionRuleHazardGroupId { get; set; }
        public int ProfileId  { get; set; }
        public decimal ValueMin { get; set; }
        public decimal ValueMax { get; set; }             
        public required string Description { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }        
        public virtual InspectionRuleHazardGroup InspectionRuleHazardGroup { get; set; } = null!;
        public virtual Profile Profile { get; set; } = null!;
    }
}
