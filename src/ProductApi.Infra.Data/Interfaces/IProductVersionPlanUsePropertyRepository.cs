using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface IProductVersionPlanUsePropertyRepository : IDomainRepository<ProductVersionPlanUseProperty>
    {
        Task<IEnumerable<ProductVersionPlanUseProperty>?> GetAsync(int productVersionId, int useTypeId, int propertyStructureId, RecordStatusEnum recordStatus);
    }
}
