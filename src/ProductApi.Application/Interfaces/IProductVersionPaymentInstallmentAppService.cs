using ProductApi.Core.Models.Product;

namespace ProductApi.Application.Interfaces
{
    public interface IProductVersionPaymentInstallmentAppService
    {
        Task<IEnumerable<PaymentInstallmentModel?>> ListAsync(int productVersionId, int paymentMethodId);
    }
}
