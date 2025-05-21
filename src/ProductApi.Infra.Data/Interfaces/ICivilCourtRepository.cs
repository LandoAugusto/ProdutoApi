using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface ICivilCourtRepository : IDomainRepository<CivilCourt>
    {
        Task<IEnumerable<CivilCourt>?> GetAllAsync(RecordStatusEnum recordStatus);
        Task<IEnumerable<CivilCourt?>> ListAsync(string? name, int? laborCourtId, string? stateId, RecordStatusEnum recordStatus);
    }
}
