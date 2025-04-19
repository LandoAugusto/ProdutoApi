using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models.Product;

namespace ProductApi.Application.Interfaces
{
    public interface IProductVersionPaymentInstallmentService
    {
        Task<ProductVersionPaymentInstallmentModel?> ListAsync(int productVersionPaymentMethodId);
    }
}
