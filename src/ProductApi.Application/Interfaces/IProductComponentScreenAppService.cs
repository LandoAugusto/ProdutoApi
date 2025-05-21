using ProductApi.Core.Models;

namespace ProductApi.Application.Interfaces
{
    public interface IProductComponentScreenAppService
    {
        Task<ProductComponentScreenModel?> GetAsync(int code);
    }
}
