using Product.Core.Entities;
using Product.Core.Entities.Enumerators;
using Product.Infra.Data.Repositories.Standard.Interfaces;

namespace Product.Infra.Data.Interfaces
{
    public interface IProductVersionClauseRepository : IDomainRepository<ProductVersionClause>
    {
        Task<IEnumerable<ProductVersionClause?>> ListAsync(int productVersionId, decimal insuredAmountValue, RecordStatusEnum recordStatus);
    }
}
