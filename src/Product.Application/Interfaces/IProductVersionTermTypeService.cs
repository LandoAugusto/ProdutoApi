using Product.Core.Entities.Enumerators;
using Product.Core.Models;

namespace Product.Application.Interfaces
{
    public  interface IProductVersionTermTypeService
    {
        Task<IEnumerable<ProductVersionTermTypeModel>?> ListAsync(int productVersionId, RecordStatusEnum recordStatus);
    }
}
