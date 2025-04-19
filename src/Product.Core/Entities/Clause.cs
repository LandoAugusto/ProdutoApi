using Product.Core.Entities.Enumerators;
using Product.Core.Entities.Interfaces;

namespace Product.Core.Entities
{
    public class Clause : IIdentityEntity
    {
        public int? ClauseId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public ClauseTypeEnum? ClauseType { get; set; }
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
