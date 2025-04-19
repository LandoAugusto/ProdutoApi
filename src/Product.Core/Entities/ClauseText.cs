using Product.Core.Entities.Enumerators;
using Product.Core.Entities.Interfaces;

namespace Product.Core.Entities
{
    public class ClauseText : IIdentityEntity
    {
        public int? ClauseTextId { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public TextTypeEnum? TextType { get; set; }
        public DateTime? EffectiveDateStart { get; set; }
        public DateTime? EffectiveDateEnd { get; set; }
        public RecordStatusEnum? Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
        public virtual ICollection<ProductVersionClause> ProductVersionClause { get; set; } = new HashSet<ProductVersionClause>();
    }
}
