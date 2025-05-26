using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface IUseTypePropertyStructureRepository : IDomainRepository<UseTypePropertyStructure>  
    {
        Task<IEnumerable<UseTypePropertyStructure>?> GetAsync(int useTypeId, RecordStatusEnum recordStatus);
    }
}
