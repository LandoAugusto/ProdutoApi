using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface IFlexRateRepository : IDomainRepository<FlexRate>
    {
        Task<IEnumerable<FlexRate?>> ListAsync(int? productVersionId, RecordStatusEnum recordStatusId);
    }
}
