using Product.Core.Entities;
using Product.Core.Entities.Interfaces;

namespace Product.Core.Entities
{
    public class ProductVersionInsuredObject : IIdentityEntity
    {
        public int ProductVersionInsuredObjectId { get; set; }
        public int InsuredObjectId { get; set; }
        public int ProductVersionId { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }

        public virtual ProductVersion ProductVersion { get; set; } = null!;
        public virtual InsuredObject InsuredObject { get; set; } = null!;
        
    }
}
