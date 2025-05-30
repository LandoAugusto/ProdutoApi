using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class ProductVersionPlanCoverage : IIdentityEntity
    {
        public int ProductVersionPlanCoverageId { get; set; }
        public int ProductVersionPlanId { get; set; }
        public int ProductVersionCoverageId { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
        public virtual ProductVersionPlan ProductVersionPlan { get; set; } = null!;
        public virtual ProductVersionCoverage ProductVersionCoverage { get; set; } = null!;
    }
}
