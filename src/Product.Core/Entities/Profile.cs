namespace Product.Core.Entities
{
    public class Profile
    {
        public int? ProfileId { get; set; }
        public string Description { get; set; }
        public int? Status { get; set; }        
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
        public virtual ICollection<ProductVersionAcceptance> ProductVersionAcceptance { get; set; } = new HashSet<ProductVersionAcceptance>(); 
    }
}
