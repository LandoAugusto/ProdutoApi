using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface IProductVersionPaymentMethodRepository
    {
        Task<ProductVersionPaymentMethod?> GetAsync(int productVersionId, int paymentMethodId, RecordStatusEnum recordStatus);
        Task<IEnumerable<ProductVersionPaymentMethod>?> ListAsync(int productVersionId, RecordStatusEnum recordStatus);
    }
}
