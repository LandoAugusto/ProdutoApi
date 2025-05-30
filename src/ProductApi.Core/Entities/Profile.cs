namespace ProductApi.Core.Entities
{
    public class Profile
    {
        public int? ProfileId { get; set; }
        public required string Description { get; set; }
        public int? Status { get; set; }        
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
        public virtual ICollection<ProductVersionCalculationType> ProductVersionCalculationType { get; set; } = new HashSet<ProductVersionCalculationType>();
        public virtual ICollection<ProductVersionAcceptance> ProductVersionAcceptance { get; set; } = new HashSet<ProductVersionAcceptance>();
        public virtual ICollection<ConstructionTypeUseType> ConstructionTypeUseType { get; set; } = new HashSet<ConstructionTypeUseType>();
        public virtual ICollection<ProductVersionActivity> ProductVersionActivity { get; set; } = new HashSet<ProductVersionActivity>();
        public virtual ICollection<ProductVersionCoverageActivityLimit> ProductVersionCoverageActivityLimit { get; set; } = new HashSet<ProductVersionCoverageActivityLimit>();        
    }
}
