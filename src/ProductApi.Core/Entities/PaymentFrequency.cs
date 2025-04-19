using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class PaymentFrequency : IIdentityEntity
    {
        public int PaymentFrequencyId { get; set; }
        public string Name { get; set; }
        public int Code { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
        public virtual ICollection<ProductVersionPaymentFrequency> ProductVersionPaymentFrequency { get; set; } = new HashSet<ProductVersionPaymentFrequency>();
    }
}
