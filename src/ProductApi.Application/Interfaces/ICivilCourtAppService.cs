using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;

namespace ProductApi.Application.Interfaces
{
    public interface ICivilCourtAppService
    {
        Task<IEnumerable<CivilCourtModel>?> GetAllAsync(RecordStatusEnum recordStatus);

        Task<IEnumerable<CivilCourtModel?>> ListAsync(CivilCourtFilterModel filter);
    }
}
