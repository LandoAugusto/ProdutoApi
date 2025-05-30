using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface IProductVersionPlanCoverageRepository : IDomainRepository<ProductVersionPlanCoverage>
    {
        Task<IEnumerable<ProductVersionPlanCoverage>?> ListAsync(int productVersionPlanId, RecordStatusEnum recordStatus);
    }
}
