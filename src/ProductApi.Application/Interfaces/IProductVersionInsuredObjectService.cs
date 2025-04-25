using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models.Product;

namespace ProductApi.Application.Interfaces
{
    public interface IProductVersionInsuredObjectService
    {
        Task<InsuredObjectModel?> GetAsync(int productVersionId, RecordStatusEnum recordStatus);
    }
}
