using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class UseType : IIdentityEntity
    {
        public int UseTypeId { get; set; }
        public required string Name { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        //public int? LastChangeUserId { get; set; }
        //public DateTime? LastChangeDate { get; set; }
     
        public virtual ICollection<ConstructionTypeUseType> ConstructionTypeUseType { get; set; } = new HashSet<ConstructionTypeUseType>();
    }
}
