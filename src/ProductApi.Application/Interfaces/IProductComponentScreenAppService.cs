using ProductApi.Core.Model;

namespace ProductApi.Application.Interfaces
{
    public interface IProductComponentScreenAppService
    {
        Task<ProductComponentScreenModel?> GetAsync(int code);
    }
}
