using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface IProductVersionPaymentFrequencyRepository : IDomainRepository<ProductVersionPaymentFrequency>    
    {
        Task<IEnumerable<ProductVersionPaymentFrequency?>> ListAsync(int productVersionId, RecordStatusEnum recordStatus);
    }
}
