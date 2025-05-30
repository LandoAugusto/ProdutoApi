using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class ProductVersionPlanActivity : IIdentityEntity
    {
        public int ProductVersionPlanActivityId { get; set; }
        public int ProductVersionPlanId { get; set; }
        public int ActivityId { get; set; }        
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
        public virtual ProductVersionPlan ProductVersionPlan { get; set; } = null!;
        public virtual Activity Activity { get; set; } = null!;        
    }
}
