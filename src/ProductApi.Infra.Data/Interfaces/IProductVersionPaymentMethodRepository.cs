using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface IProductVersionPaymentMethodRepository
    {
        Task<IEnumerable<ProductVersionPaymentMethod>?> ListAsync(int productVersionId, RecordStatusEnum recordStatus);
    }
}
