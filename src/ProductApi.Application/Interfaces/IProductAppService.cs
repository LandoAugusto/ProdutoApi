using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Model;

namespace ProductApi.Application.Interfaces
{
    public interface IProductAppService
    {
        Task<IEnumerable<ProductModel>?> GetAllAsync(RecordStatusEnum recordStatus);
    }
}
