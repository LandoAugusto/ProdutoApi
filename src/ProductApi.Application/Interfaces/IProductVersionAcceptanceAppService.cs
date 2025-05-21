using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;

namespace ProductApi.Application.Interfaces
{
    public interface IProductVersionAcceptanceAppService
    {
        Task<ProductVersionAcceptanceModel?> GetAsync(int productId, int profileId, RecordStatusEnum recordStatus);
    }
}
