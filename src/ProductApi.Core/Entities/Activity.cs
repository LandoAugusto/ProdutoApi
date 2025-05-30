using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class Activity : IIdentityEntity
    {
        public int ActivityId { get; set; }
        public int ActivityNatureId { get; set; }
        public required string Name { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
        public virtual ActivityNature ActivityNature { get; set; } = null!;
        public virtual ICollection<ProductVersionActivity> ProductVersionActivity { get; set; } = new HashSet<ProductVersionActivity>();
        public virtual ICollection<ProductVersionPlanActivity> ProductVersionPlanActivity { get; set; } = new HashSet<ProductVersionPlanActivity>();
        public virtual ICollection<ProductVersionCoverageActivityLimit> ProductVersionCoverageActivityLimit { get; set; } = new HashSet<ProductVersionCoverageActivityLimit>();
    }
}
