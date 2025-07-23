using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface IGenderRepository : IDomainRepository<Gender>
    {
        Task<IEnumerable<Gender>?> ListAsync(RecordStatusEnum recordStatus);
    }
}
