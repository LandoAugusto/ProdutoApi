using Product.Core.Entities.Interfaces;

namespace Product.Core.Entities
{
    public class Product : IIdentityEntity
    {
        public int? ProductId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string ExternalCode { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }

        public virtual ICollection<ProductVersion> FlexRate { get; set; } = new HashSet<ProductVersion>();       
    }
}
