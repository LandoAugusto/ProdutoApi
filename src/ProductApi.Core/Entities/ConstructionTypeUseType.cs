using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class ConstructionTypeUseType : IIdentityEntity
    {
        public int ConstructionTypeUseTypeId { get; set; }
        public int ConstructionTypeId { get; set; }
        public int UseTypeId { get; set; }
        public int ProfileId { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
        public virtual UseType UseType { get; set; } = null!;
        public virtual Profile Profile { get; set; } = null!;
        public virtual ConstructionType ConstructionType { get; set; } = null!;
    }
}
