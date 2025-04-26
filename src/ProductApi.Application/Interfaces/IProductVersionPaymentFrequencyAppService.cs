using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;

namespace ProductApi.Application.Interfaces
{
    public interface IProductVersionPaymentFrequencyAppService
    {
        Task<IEnumerable<PaymentFrequencyModel>> ListAsync(int productVersionId, RecordStatusEnum recordStatus);
    }
}
