using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Model;

namespace ProductApi.Application.Interfaces
{
    public  interface IProductVersionTermTypeAppService
    {
        Task<IEnumerable<TermTypeModel>?> ListAsync(int productVersionId, RecordStatusEnum recordStatus);
    }
}
