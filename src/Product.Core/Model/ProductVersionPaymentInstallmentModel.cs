namespace Product.Core.Models.Product
{
    public class ProductVersionPaymentInstallmentModel
    {
        public int ProductVersionPaymentMethodId { get; set; }
        public List<PaymentInstallmentModel> PaymentInstallment { get; set; } = [];
    }
}
