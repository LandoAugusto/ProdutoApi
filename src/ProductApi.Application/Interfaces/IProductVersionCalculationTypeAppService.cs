using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;

namespace ProductApi.Application.Interfaces
{
    public interface IProductVersionCalculationTypeAppService
    {
        Task<IEnumerable<CalculationTypeModel>?> GeAsync(int productVersionId, int profileId, RecordStatusEnum recordStatus);
    }
}
