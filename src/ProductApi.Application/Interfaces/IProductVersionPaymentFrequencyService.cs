using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;

namespace ProductApi.Application.Interfaces
{
    public interface IProductVersionPaymentFrequencyService
    {
        Task<ProductVersionPaymentFrequencyModel> ListAsync(int productVersionId, RecordStatusEnum recordStatus);
    }
}
