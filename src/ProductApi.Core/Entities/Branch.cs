using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class Branch : IIdentityEntity
    {
        public int BranchId { get; set; }
        public int BranchTypeId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
        public virtual BranchType BranchType { get; set; } = null!;
        public virtual ICollection<InsuranceBranch> Coverage { get; set; } = new HashSet<InsuranceBranch>();
    }
}
