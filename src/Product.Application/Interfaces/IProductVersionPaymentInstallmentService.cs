using Product.Core.Entities.Enumerators;
using Product.Core.Models.Product;

namespace Product.Application.Interfaces
{
    public interface IProductVersionPaymentInstallmentService
    {
        Task<ProductVersionPaymentInstallmentModel?> ListAsync(int productVersionPaymentMethodId);
    }
}
