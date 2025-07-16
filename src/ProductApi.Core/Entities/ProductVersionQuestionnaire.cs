using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class ProductVersionQuestionnaire : IIdentityEntity
    {
        public int ProductVersionQuestionnaireId { get; set; }
        public int ProductVersionId { get; set; }
        public int QuestionId { get; set; }
        public int Order { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
        public virtual ProductVersion ProductVersion { get; set; } = null!;
        public virtual Question Question { get; set; } = null!;
    }
}
