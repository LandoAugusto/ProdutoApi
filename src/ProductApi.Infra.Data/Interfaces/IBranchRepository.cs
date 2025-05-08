using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface IBranchRepository : IDomainRepository<Branch>
    {
        Task<IEnumerable<Branch>?> ListAsync(int? brachTypeId, RecordStatusEnum recordStatus);
    }
}
