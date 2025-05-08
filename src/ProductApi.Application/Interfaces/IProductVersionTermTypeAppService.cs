using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;

namespace ProductApi.Application.Interfaces
{
    public  interface IProductVersionTermTypeAppService
    {
        Task<IEnumerable<TermTypeModel>?> ListAsync(int productVersionId, RecordStatusEnum recordStatus);
    }
}
