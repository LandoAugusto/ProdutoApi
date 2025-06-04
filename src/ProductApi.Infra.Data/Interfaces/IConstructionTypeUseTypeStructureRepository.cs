using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface IConstructionTypeUseTypeStructureRepository : IDomainRepository<ConstructionTypeUseTypeStructure>  
    {
        Task<IEnumerable<ConstructionTypeUseTypeStructure>?> GetAsync(int constructionTypeId,  int useTypeId, int profileId , RecordStatusEnum recordStatus);
    }
}
