using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface IProductVersionInsuredObjectRepository:  IDomainRepository<ProductVersionInsuredObject>
    {
        Task<ProductVersionInsuredObject?> GetAsync(int productVersionId, RecordStatusEnum recordStatus);
    }
}
