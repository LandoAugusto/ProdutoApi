using ProductApi.Core.Models.Product;

namespace ProductApi.Core.Models
{
    public class ProductVersionPaymentMethodModel
    {   
        public  int ProductVersionId { get; set; }
        public List<PaymentMethodModel> PaymentMethodModel { get; set; } = [];
    }
}
