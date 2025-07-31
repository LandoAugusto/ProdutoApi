using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public  class HazardGroup : IIdentityEntity
    {
        public int HazardGroupId { get; set; }
        public required string Name { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
        public virtual ICollection<ProductVersionActivity> ProductVersionActivity { get; set; } = new HashSet<ProductVersionActivity>();
        public virtual ICollection<InspectionRuleHazardGroup> InspectionRuleHazardGroup { get; set; } = new HashSet<InspectionRuleHazardGroup>();
    }
}
