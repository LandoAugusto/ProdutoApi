using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class ProductVersionCoverageActivityLimit : IIdentityEntity
    {
        public int ProductVersionCoverageActivityLimitId { get; set; }
        public int ProductVersionCoverageId { get; set; }
        public int ActivityId { get; set; }
        public int ProfileId { get; set; }
        public decimal InsuredAmountMin { get; set; }
        public decimal InsuredAmountMax { get; set; }
        public decimal PercenteSubLimitBasic { get; set; }
        public decimal PercenteSubLimit { get; set; }
        public decimal PercenteLimitMin { get; set; }
        public decimal PercenteLimitMax { get; set; }
        public decimal PercenteLimitUF { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }     
        public virtual Profile Profile { get; set; } = null!;
        public virtual Activity Activity { get; set; } = null!;
        public virtual ProductVersionCoverage ProductVersiProductVersionCoverageonPlan { get; set; } = null!;
    }
}
