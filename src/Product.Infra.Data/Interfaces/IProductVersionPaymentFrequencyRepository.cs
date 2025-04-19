using Product.Core.Entities;
using Product.Core.Entities.Enumerators;
using Product.Infra.Data.Repositories.Standard.Interfaces;

namespace Product.Infra.Data.Interfaces
{
    public interface IProductVersionPaymentFrequencyRepository : IDomainRepository<ProductVersionPaymentFrequency>    
    {
        Task<IEnumerable<ProductVersionPaymentFrequency?>> ListAsync(int productVersionId, RecordStatusEnum recordStatus);
    }
}
