using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface IConstructionTypeUseTypeRepository : IDomainRepository<ConstructionTypeUseType>
    {
        Task<IEnumerable<ConstructionTypeUseType>?> GetAsync(int constructionTypeId, int profileId, RecordStatusEnum recordStatus);
    }
}
