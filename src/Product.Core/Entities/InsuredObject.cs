using Product.Core.Entities;
using Product.Core.Entities.Interfaces;

namespace Product.Core.Entities
{
    public class InsuredObject : IIdentityEntity
    {
        public int InsuredObjectId { get; set; }
        public string Name { get; set; }
        public string? Description { get; set; }
        public string? ExternalCode { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }

        public virtual ICollection<ProductVersionInsuredObject> ProductVersionInsuredObject { get; set; } = new HashSet<ProductVersionInsuredObject>();
        public virtual ICollection<InsuredObjectBlock> InsuredObjectBlock { get; set; } = new HashSet<InsuredObjectBlock>();
    }
}
