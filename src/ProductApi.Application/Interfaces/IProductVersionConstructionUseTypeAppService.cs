using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;

namespace ProductApi.Application.Interfaces
{
    public interface IProductVersionConstructionUseTypeAppService
    {
        Task<IEnumerable<UseTypeModel>?> GetAsync(int productVersionId, int constructionTypeId, int profileId, RecordStatusEnum recordStatus);
    }
}
