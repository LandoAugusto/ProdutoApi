using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface IDocumentTypeRepository : IDomainRepository<DocumentType>
    {
        Task<IEnumerable<DocumentType>?> ListAsync(RecordStatusEnum recordStatus);  
    }
}
