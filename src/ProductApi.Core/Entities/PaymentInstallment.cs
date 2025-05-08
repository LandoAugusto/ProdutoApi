using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class PaymentInstallment : IIdentityEntity
    {
        public int PaymentInstallmentId { get; set; }
        public string Description { get; set; }
        public int NumberOfInstallment { get; set; }        
        public bool IsInterest { get; set; }
        public decimal RateInterest { get; set; }
        public decimal Coefficient { get; set; }
        public int Code { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
        public virtual ICollection<ProductVersionPaymentInstallment> ProductVersionPaymentInstallment { get; set; } = new HashSet<ProductVersionPaymentInstallment>();
    }
}
