using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;

namespace ProductApi.Application.Interfaces
{
    public interface IProductVersionPaymentMethodService
    {
        Task<IEnumerable<PaymentMethodModel>> ListAsync(int productVersionId, RecordStatusEnum recordStatus);
    }
}
