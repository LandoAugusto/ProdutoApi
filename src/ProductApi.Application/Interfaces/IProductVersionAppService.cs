using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;

namespace ProductApi.Application.Interfaces
{
    public  interface IProductVersionAppService
    {
        Task<ProductVersionModel?> GetAsync(int productId, RecordStatusEnum recordStatus);
    }
}
