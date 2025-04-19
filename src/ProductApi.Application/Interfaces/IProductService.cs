using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Model;

namespace ProductApi.Application.Interfaces
{
    public interface IProductService
    {
        Task<IEnumerable<ProductModel>?> GetAllAsync(RecordStatusEnum recordStatus);
    }
}
