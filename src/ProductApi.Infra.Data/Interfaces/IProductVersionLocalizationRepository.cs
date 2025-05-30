using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface IProductVersionLocalizationRepository : IDomainRepository<ProductVersionLocalization>
    {
        Task<IEnumerable<ProductVersionLocalization>?> ListAsync(int productVersionId, RecordStatusEnum recordStatus);
    }
}
