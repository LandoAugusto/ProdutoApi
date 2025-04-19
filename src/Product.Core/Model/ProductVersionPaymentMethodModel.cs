using Product.Core.Models.Product;

namespace Product.Core.Models
{
    public class ProductVersionPaymentMethodModel
    {   
        public  int ProductVersionId { get; set; }
        public List<PaymentMethodModel> PaymentMethodModel { get; set; } = [];
    }
}
