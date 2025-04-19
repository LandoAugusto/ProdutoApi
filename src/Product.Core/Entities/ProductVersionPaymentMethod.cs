using Product.Core.Entities.Interfaces;

namespace Product.Core.Entities
{
    public class ProductVersionPaymentMethod : IIdentityEntity
    {
        public int ProductVersionPaymentMethodId { get; set; }
        public int ProductVersionId { get; set; }
        public int PaymentMethodId { get; set; }
        public int Code { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
        public ProductVersion ProductVersion { get; set; } = null!;
        public PaymentMethod PaymentMethod { get; set; } = null!;
        public virtual ICollection<ProductVersionPaymentInstallment> ProductVersionPaymentInstallment { get; set; } = new HashSet<ProductVersionPaymentInstallment>();
    }
}
