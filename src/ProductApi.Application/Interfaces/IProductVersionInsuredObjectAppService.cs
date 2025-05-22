using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models.Product;

namespace ProductApi.Application.Interfaces
{
    public interface IProductVersionInsuredObjectAppService
    {
        Task<InsuredObjectModel?> GetAsync(int productVersionCoverageId, RecordStatusEnum recordStatus);
    }
}
