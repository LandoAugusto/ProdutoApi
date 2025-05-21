using ProductApi.Core.Models;

namespace ProductApi.Application.Interfaces
{
    public interface IFlexRateAppService
    {
        Task<FlexRateModel?> GetAsync(int flexRateId);

        Task<IEnumerable<FlexRateModel?>> ListAsync(int productVersionId, int? statusId);
    }
}
