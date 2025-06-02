using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class Franchise : IIdentityEntity
    {
        public int FranchiseId { get; set; }
        public required string Description { get; set; }
        public required string Text { get; set; }
        public int FranchiseTypeId { get; set; }
        public decimal? PercentangeLmi { get; set; }
        public decimal? Percentange { get; set; }
        public decimal? Value { get; set; }
        public int? CountDays { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
        public virtual FranchiseType FranchiseType { get; set; } = null!;
        public virtual ICollection<ProductVersionCoverageFranchise> ProductVersionCoverageFranchise { get; set; } = new HashSet<ProductVersionCoverageFranchise>();
    }
}
