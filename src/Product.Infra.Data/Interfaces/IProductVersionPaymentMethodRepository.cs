using Product.Core.Entities;
using Product.Core.Entities.Enumerators;

namespace Product.Infra.Data.Interfaces
{
    public interface IProductVersionPaymentMethodRepository
    {
        Task<IEnumerable<ProductVersionPaymentMethod>?> ListAsync(int productVersionId, RecordStatusEnum recordStatus);
    }
}
