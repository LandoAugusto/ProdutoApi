using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class Plan : IIdentityEntity
    {
        public int PlanId { get; set; }
        public required string Name { get; set; }
        public required string Description { get; set; }        
        public string? Image { get; set; }
        public bool IsPersonalized { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
        public virtual ICollection<ProductVersionPlan> ProductVersionPlan { get; set; } = new HashSet<ProductVersionPlan>();
    }
}
