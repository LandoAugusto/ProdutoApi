using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;

namespace ProductApi.Application.Interfaces
{
    public interface IProductVersionLawsuitTypeService
    {
        Task<IEnumerable<ProductVersionLawsuitTypeModel>?> ListAsync(int productVersionId, RecordStatusEnum recordStatus);
    }
}
