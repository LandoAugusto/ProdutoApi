using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class ProductVersion : IIdentityEntity
    {
        public int ProductVersionId { get; set; }
        public int ProductId { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
        public virtual Product Product { get; set; } = null!;                
        public virtual ICollection<ProductVersionPaymentFrequency> ProductVersionPaymentFrequency { get; set; } = new HashSet<ProductVersionPaymentFrequency>();
        public virtual ICollection<ProductVersionLawsuitType> ProductVersionLawsuitType { get; set; } = new HashSet<ProductVersionLawsuitType>();
        public virtual ICollection<ProductVersionTermType> ProductVersionTermType { get; set; } = new HashSet<ProductVersionTermType>();
        public virtual ICollection<ProductVersionAcceptance> ProductVersionAcceptance { get; set; } = new HashSet<ProductVersionAcceptance>();
        public virtual ICollection<ProductVersionClause> ProductVersionClause { get; set; } = new HashSet<ProductVersionClause>();
        public virtual ICollection<ProductVersionPaymentMethod> ProductVersionPaymentMethod { get; set; } = new HashSet<ProductVersionPaymentMethod>();
        public virtual ICollection<ProductVersionCoverage> ProductVersionCoverage { get; set; } = new HashSet<ProductVersionCoverage>();
        public virtual ICollection<ProductVersionCalculationType> ProductVersionCalculationType { get; set; } = new HashSet<ProductVersionCalculationType>();

    }
}