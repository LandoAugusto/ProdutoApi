using Product.Core.Entities.Enumerators;
using Product.Core.Models;

namespace Product.Application.Interfaces
{
    public interface IProductVersionPaymentMethodService
    {
        Task<ProductVersionPaymentMethodModel?> ListAsync(int productVersionId, RecordStatusEnum recordStatus);
    }
}
