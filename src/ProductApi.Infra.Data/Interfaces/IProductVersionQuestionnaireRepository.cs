using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public  interface IProductVersionQuestionnaireRepository : IDomainRepository<ProductVersionQuestionnaire> 
    {
        Task<IEnumerable<ProductVersionQuestionnaire>?> GetAsync(int productVersionId, RecordStatusEnum recordStatus);
    }
}
