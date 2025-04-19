using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;

namespace ProductApi.Application.Interfaces
{
    public  interface IProductVersionClauseService
    {
        Task<IEnumerable<ProductVersionClauseModel>?> ListAsync(int productVersionId, decimal insuredAmountValue, RecordStatusEnum recordStatus);
    }
}
