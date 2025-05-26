using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public  class ProductVersionConstructionType : IIdentityEntity
    {
        public int ProductVersionConstructionTypeId { get; set; }
        public int ProductVersionId { get; set; }
        public int ConstructionTypeId { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
        public virtual ConstructionType ConstructionType { get; set; } = null!;
        public virtual ProductVersion ProductVersion { get; set; } = null!;
    }
}
