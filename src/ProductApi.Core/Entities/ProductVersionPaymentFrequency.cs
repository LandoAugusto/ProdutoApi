using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class ProductVersionPaymentFrequency : IIdentityEntity
    {
        public int ProductVersionPaymentFrequencyId { get; set; }
        public int PaymentFrequencyId { get; set; }
        public int ProductVersionId { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
        public virtual ProductVersion ProductVersion { get; set; } = null!;
        public virtual PaymentFrequency PaymentFrequency { get; set; } = null!;
    }
}
