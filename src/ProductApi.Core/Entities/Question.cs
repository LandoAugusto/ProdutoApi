using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class Question : IIdentityEntity
    {
        public int QuestionId { get; set; }
        public required string Name { get; set; }
        public int ComponentTypeId { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
        public virtual ComponentType ComponentType { get; set; } = null!;
        public virtual ICollection<QuestionResponse> QuestionResponse { get; set; } = new HashSet<QuestionResponse>();
        public virtual ICollection<ProductVersionQuestionnaire> ProductVersionQuestion { get; set; } = new HashSet<ProductVersionQuestionnaire>();
    }
}
