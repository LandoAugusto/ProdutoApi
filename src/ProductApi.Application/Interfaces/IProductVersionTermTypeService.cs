using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;

namespace ProductApi.Application.Interfaces
{
    public  interface IProductVersionTermTypeService
    {
        Task<IEnumerable<TermTypeModel>?> ListAsync(int productVersionId, RecordStatusEnum recordStatus);
    }
}
