using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;

namespace ProductApi.Application.Interfaces
{
    public interface IProductVersionPlanUsePropertyAppService
    {
        Task<IEnumerable<PlanModel>> GetAsync(int productVersionId, int useTypeId, int propertyStructureId, RecordStatusEnum recordStatus);
    }
}
