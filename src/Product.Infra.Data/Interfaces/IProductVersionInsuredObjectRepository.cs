using Product.Core.Entities;
using Product.Core.Entities.Enumerators;
using Product.Infra.Data.Repositories.Standard.Interfaces;

namespace Product.Infra.Data.Interfaces
{
    public interface IProductVersionInsuredObjectRepository:  IDomainRepository<ProductVersionInsuredObject>
    {
        Task<ProductVersionInsuredObject?> GetAsync(int productVersionId, RecordStatusEnum recordStatus);
    }
}
