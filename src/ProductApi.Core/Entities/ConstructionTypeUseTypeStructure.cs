using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public  class ConstructionTypeUseTypeStructure: IIdentityEntity
    {
        public int ConstructionTypeUseTypeStructureId { get; set; }    
        public int ConstructionTypeUseTypeId { get; set; }
        public int PropertyStructureId { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
        public virtual ConstructionTypeUseType ConstructionTypeUseType { get; set; } = null!;
        public virtual PropertyStructure PropertyStructure { get; set; } = null!;
    }
}
