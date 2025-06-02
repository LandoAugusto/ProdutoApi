using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class ProductVersionCoverageFranchise : IIdentityEntity
    {
        public int ProductVersionCoverageFranchiseId { get; set; }
        public int ProductVersionCoverageId { get; set; }
        public int FranchiseId { get; set; }
        public int Order { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
        public virtual Franchise Franchise { get; set; } = null!;
        public virtual ProductVersionCoverage ProductVersionCoverage { get; set; } = null!;
    }
}
