using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class ProductVersionConstructionUseType : IIdentityEntity
    {
        public int ProductVersionConstructionUseTypeId { get; set; }
        public int ProductVersionConstructionTypeId { get; set; }
        public int UseTypeId { get; set; }        
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
        public virtual UseType UseType { get; set; } = null!;        
        public virtual ProductVersionConstructionType ProductVersionConstructionType { get; set; } = null!;
        public virtual ICollection<ProductVersionConstructionUseStructure> ProductVersionConstructionUseStructure { get; set; } = new HashSet<ProductVersionConstructionUseStructure>();
    }
}
