using Product.Core.Entities.Enumerators;
using Product.Core.Models;

namespace Product.Application.Interfaces
{
    public interface IProductVersionLawsuitTypeService
    {
        Task<IEnumerable<ProductVersionLawsuitTypeModel>?> ListAsync(int productVersionId, RecordStatusEnum recordStatus);
    }
}
