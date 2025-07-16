using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface IProductVersionPlanAssistanceRepository : IDomainRepository<ProductVersionPlanAssistance>
    {
        Task<IEnumerable<ProductVersionPlanAssistance>?> GetAsync(int productVersionId, int planId, RecordStatusEnum recordStatus);
    }
}
