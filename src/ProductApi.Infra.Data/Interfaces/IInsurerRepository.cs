using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface IInsurerRepository : IDomainRepository<Insurer>
    {
        Task<IEnumerable<Insurer>?> GetAllAsync(RecordStatusEnum recordStatus);
    }
}
