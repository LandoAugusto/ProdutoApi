using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;

namespace ProductApi.Application.Interfaces
{
    public interface IProductVersionLocalizationAppService
    {
        Task<IEnumerable<LocalizationModel>?> ListAsync(int productVersionId, RecordStatusEnum recordStatus);
    }
}
