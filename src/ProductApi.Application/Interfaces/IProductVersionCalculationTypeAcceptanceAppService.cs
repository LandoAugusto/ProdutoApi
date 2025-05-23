using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;

namespace ProductApi.Application.Interfaces
{
    public interface IProductVersionCalculationTypeAcceptanceAppService
    {
        Task<CalculationTypeAcceptanceModel?> GetAsync(int productVersionId, int profileId, int calculationTypeId, RecordStatusEnum recordStatus);
    }
}
