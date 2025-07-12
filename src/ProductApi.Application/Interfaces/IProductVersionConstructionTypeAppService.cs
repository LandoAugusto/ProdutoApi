using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;

namespace ProductApi.Application.Interfaces
{
    public interface IProductVersionConstructionTypeAppService
    {
        Task<IEnumerable<ConstructionTypeModel>?> GetAsync(int productVersionId, int profileId, RecordStatusEnum recordStatus);
    }
}
