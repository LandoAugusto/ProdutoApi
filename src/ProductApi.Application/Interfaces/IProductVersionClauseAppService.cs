using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Model;

namespace ProductApi.Application.Interfaces
{
    public  interface IProductVersionClauseAppService
    {
        Task<IEnumerable<ProductVersionClauseModel>?> ListAsync(int productVersionId, decimal insuredAmountValue, RecordStatusEnum recordStatus);
    }
}
