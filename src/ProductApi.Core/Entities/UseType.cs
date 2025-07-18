using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class UseType : IIdentityEntity
    {
        public int UseTypeId { get; set; }
        public required string Name { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }     
        public virtual ICollection<ProductVersionConstructionUseType> ProductVersionConstructionUseType { get; set; } = new HashSet<ProductVersionConstructionUseType>();
        public virtual ICollection<ProductVersionPlanUseProperty> ProductVersionPlanUseProperty { get; set; } = new HashSet<ProductVersionPlanUseProperty>();
    }
}
