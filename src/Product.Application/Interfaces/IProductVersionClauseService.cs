using Product.Core.Entities.Enumerators;
using Product.Core.Models;

namespace Product.Application.Interfaces
{
    public  interface IProductVersionClauseService
    {
        Task<IEnumerable<ProductVersionClauseModel>?> ListAsync(int productVersionId, decimal insuredAmountValue, RecordStatusEnum recordStatus);
    }
}
