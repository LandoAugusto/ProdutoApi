using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface ILaborCourtRepository : IDomainRepository<LaborCourt>
    {
        Task<IEnumerable<LaborCourt>?> GetAllAsync(RecordStatusEnum recordStatus);
        Task<IEnumerable<LaborCourt?>> ListAsync(string? name, string? stateId, RecordStatusEnum recordStatus);
    }
}


