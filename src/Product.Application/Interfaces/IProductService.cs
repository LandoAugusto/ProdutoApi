using Product.Core.Entities.Enumerators;
using Product.Core.Model;

namespace Product.Application.Interfaces
{
    public interface IProductService
    {
        Task<IEnumerable<ProductModel>?> GetAllAsync(RecordStatusEnum recordStatus);
    }
}
