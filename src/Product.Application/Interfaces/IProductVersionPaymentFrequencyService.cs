using Product.Core.Entities.Enumerators;
using Product.Core.Models;

namespace Product.Application.Interfaces
{
    public interface IProductVersionPaymentFrequencyService
    {
        Task<ProductVersionPaymentFrequencyModel> ListAsync(int productVersionId, RecordStatusEnum recordStatus);
    }
}
