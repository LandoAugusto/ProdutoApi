using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public  class LawsuitType : IIdentityEntity
    {
        public int LawsuitTypeId { get; set; }
        public string  Name { get; set; }
        public string ExternalCode { get; set; }
        public bool IsComplementRequired { get; set; }        
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
        public virtual ICollection<ProductVersionLawsuitType> ProductVersionLawsuitType { get; set; } = new HashSet<ProductVersionLawsuitType>();
    }
}
