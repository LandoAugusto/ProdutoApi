using Product.Core.Entities.Interfaces;

namespace Product.Core.Entities
{
    public class PaymentMethod : IIdentityEntity
    {
        public int PaymentMethodId { get; set; }
        public string Name { get; set; }
        public int Code { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
        public virtual ICollection<ProductVersionPaymentMethod> ProductVersionPaymentMethod { get; set; } = new HashSet<ProductVersionPaymentMethod>();
    }
}
