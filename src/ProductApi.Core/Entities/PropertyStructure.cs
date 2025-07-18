using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class PropertyStructure : IIdentityEntity
    {
        public int PropertyStructureId { get; set; }
        public required string Name { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
        public virtual ICollection<ProductVersionConstructionUseStructure> ProductVersionConstructionUseStructure { get; set; } = new HashSet<ProductVersionConstructionUseStructure>();
        public virtual ICollection<ProductVersionPlanUseProperty> ProductVersionPlanUseProperty { get; set; } = new HashSet<ProductVersionPlanUseProperty>();
    }
}
