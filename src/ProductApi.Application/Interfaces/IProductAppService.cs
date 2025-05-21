using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;

namespace ProductApi.Application.Interfaces
{
    public interface IProductAppService
    {
        Task<IEnumerable<ProductModel>?> ListAsync(RecordStatusEnum recordStatus);
        Task<IEnumerable<ProductModel>?> ListBranchAsync(int insurancebranchId, RecordStatusEnum recordStatusEnum);
    }
}
