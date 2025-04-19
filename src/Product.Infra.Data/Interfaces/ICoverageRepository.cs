using Product.Core.Entities;
using Product.Core.Entities.Enumerators;
using Product.Infra.Data.Repositories.Standard.Interfaces;

namespace Product.Infra.Data.Interfaces
{
    public interface ICoverageRepository : IDomainRepository<Coverage>
    {
        Task<IEnumerable<Coverage>?> GetAllAsync(RecordStatusEnum recordStatus);
    }
}
 