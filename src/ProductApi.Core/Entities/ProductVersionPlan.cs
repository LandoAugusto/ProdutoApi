using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class ProductVersionPlan : IIdentityEntity
    {
        public int ProductVersionPlanId { get; set; }
        public int ProductVersionId { get; set; }        
        public int PlanId { get; set; }
        public required string Description { get; set; }
        public int Order { get; set; }        
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
        public virtual ProductVersion ProductVersion { get; set; } = null!;
        public virtual Plan Plan { get; set; } = null!;
        public virtual ICollection<ProductVersionPlanActivity> ProductVersionPlanActivity { get; set; } = new HashSet<ProductVersionPlanActivity>();
        public virtual ICollection<ProductVersionPlanCoverage> ProductVersionPlanCoverage { get; set; } = new HashSet<ProductVersionPlanCoverage>();
        public virtual ICollection<ProductVersionPlanAssistance> ProductVersionPlanAssistance { get; set; } = new HashSet<ProductVersionPlanAssistance>();
    }
}
