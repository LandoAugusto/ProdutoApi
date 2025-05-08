using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface ICoverageRepository : IDomainRepository<Coverage>
    {
        Task<IEnumerable<Coverage>?> GetAllAsync(RecordStatusEnum recordStatus);
    }
}
 