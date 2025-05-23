using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface IProductVersionCalculationTypeRepository : IDomainRepository<ProductVersionCalculationType>
    {
        Task<IEnumerable<ProductVersionCalculationType>?> ListAsync(int productVersionId, int profileId, RecordStatusEnum recordStatus);

        Task<ProductVersionCalculationType?> GetAsync(int productVersionId, int profileId, int calculationTypeId,
        RecordStatusEnum recordStatus);
    }
}
