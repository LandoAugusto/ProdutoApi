using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface IProductVersionActivityRepository : IDomainRepository<ProductVersionActivity>
    {
        Task<ProductVersionActivity?> GetAsync(int productVersionId, int profileId, int activityId, RecordStatusEnum recordStatus);
        Task<IEnumerable<ProductVersionActivity>?> ListAsync(int productVersionId, int profileId, string? name ,RecordStatusEnum recordStatus);
    }
}
