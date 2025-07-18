using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;

namespace ProductApi.Application.Interfaces
{
    public interface IProductVersionConstructionUseStructureAppService
    {
        Task<IEnumerable<PropertyStructureModel>?> GetAsync(int productVersionId, int constructionTypeId, int useTypeId, int profileId, RecordStatusEnum recordStatus);
    }
}
