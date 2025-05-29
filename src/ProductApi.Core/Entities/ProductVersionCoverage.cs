using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public  class ProductVersionCoverage : IIdentityEntity
    {
        public int ProductVersionCoverageId { get; set; }
        public int ProductVersionId { get; set; }
        public int CoverageId { get; set; }       
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
        public ProductVersion ProductVersion { get; set; } = null!;
        public Coverage Coverage { get; set; } = null!;
        public virtual ICollection<ProductVersionInsuredObject> ProductVersionInsuredObject { get; set; } = new HashSet<ProductVersionInsuredObject>();
    }
}
