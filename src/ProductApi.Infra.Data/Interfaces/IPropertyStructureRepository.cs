using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface IPropertyStructureRepository : IDomainRepository<PropertyStructure>
    {
        Task<IEnumerable<PropertyStructure>?> GetAllAsync(RecordStatusEnum recordStatus);
    }
}
