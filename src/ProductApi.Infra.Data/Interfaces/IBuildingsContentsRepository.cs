using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface IBuildingsContentsRepository : IDomainRepository<BuildingsContents>
    {
        Task<IEnumerable<BuildingsContents>?> GetAllAsync(RecordStatusEnum recordStatus);
    }
}
