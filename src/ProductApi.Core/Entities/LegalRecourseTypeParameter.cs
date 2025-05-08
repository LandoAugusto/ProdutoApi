using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class LegalRecourseTypeParameter : IIdentityEntity
    {
        public int? LegalRecourseTypeParameterId { get; set; }
        public int LegalRecourseTypeId { get; set; }
        public decimal ApeelDepositAmount { get; set; }
        public DateTime EffectiveDateStart { get; set; }
        public DateTime? EffectiveDateEnd { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
        public virtual LegalRecourseType LegalRecourseType { get; set; } = null!;
    }
}
