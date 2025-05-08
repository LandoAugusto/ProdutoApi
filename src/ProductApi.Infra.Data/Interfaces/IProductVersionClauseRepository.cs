using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface IProductVersionClauseRepository : IDomainRepository<ProductVersionClause>
    {
        Task<IEnumerable<ProductVersionClause>?> ListAsync(int productVersionId, decimal insuredAmountValue, RecordStatusEnum recordStatus);
    }
}
