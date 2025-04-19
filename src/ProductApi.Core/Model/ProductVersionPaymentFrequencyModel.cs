namespace ProductApi.Core.Models
{
    public class ProductVersionPaymentFrequencyModel
    {
        public int ProductVersionId { get; set; }
        public List<PaymentFrequencyModel> PaymentFrequency { get; set; } = [];
    }
}
