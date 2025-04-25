using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class ProductVersionPaymentInstallment : IIdentityEntity
    {
        public int ProductVersionPaymentInstallmentId { get; set; }
        public int ProductVersionPaymentMethodId { get; set; }
        public int PaymentInstallmentId { get; set; }
        public int Code { get; set; }        
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
        public ProductVersionPaymentMethod ProductVersionPaymentMethod { get; set; } = null!;
        public PaymentInstallment PaymentInstallment { get; set; } = null!;
    }
}
