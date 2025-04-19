using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class Coverage : IIdentityEntity
    {
        public int CoverageId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public int BranchId { get; set; }
        public int CoverageGroupId { get; set; }
        public string ExternalCode { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
        public virtual Branch Branch { get; set; } = null!;
        public virtual CoverageGroup CoverageGroup { get; set; } = null!;
    }
}
