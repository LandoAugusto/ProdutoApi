using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class ProductVersionPlanAssistance : IIdentityEntity
    {
        public int ProductVersionPlanAssistanceId { get; set; }
        public int ProductVersionPlanId { get; set; }
        public int AssistanceId { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
        public virtual Assistance Assistance { get; set; } = null!;
        public virtual ProductVersionPlan ProductVersionPlan { get; set; } = null!; 
    }
}
