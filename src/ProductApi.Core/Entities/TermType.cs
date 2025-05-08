using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class TermType: IIdentityEntity
    {
        public int TermTypeId { get; set; }
        public string Name { get; set; }        
        public string? ExternalCode { get; set; }
        public int TermDays { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
        public virtual ICollection<ProductVersionTermType> ProductVersionTermType { get; set; } = new HashSet<ProductVersionTermType>();        
    }
}
