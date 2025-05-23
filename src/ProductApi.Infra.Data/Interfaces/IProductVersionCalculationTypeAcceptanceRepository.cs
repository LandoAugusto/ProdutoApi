using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface IProductVersionCalculationTypeAcceptanceRepository : IDomainRepository<ProductVersionCalculationTypeAcceptance>    
    {
        Task<ProductVersionCalculationTypeAcceptance?> GetAsync(int productVersionCalculationTypeId, RecordStatusEnum recordStatus);
    }
}
