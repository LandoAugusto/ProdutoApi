using Product.Core.Entities.Enumerators;
using Product.Core.Models;

namespace Product.Application.Interfaces
{
    public interface IProductVersionInsuredObjectService
    {
        Task<ProductVersionInsuredObjectModel?> GetAsync(int productVersionId, RecordStatusEnum recordStatus);
    }
}
