using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;

namespace ProductApi.Application.Interfaces
{
    public interface ILegalRecourseTypeAppService
    {
        Task<IEnumerable<LegalRecourseTypeModel>?> GetAllAsync(RecordStatusEnum recordStatus);
    }
}
