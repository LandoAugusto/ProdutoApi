using Product.Core.Entities;
using Product.Core.Entities.Enumerators;
using Product.Infra.Data.Contexts;
using Product.Infra.Data.Interfaces;
using Product.Infra.Data.Repositories.Standard;
using Microsoft.EntityFrameworkCore;

namespace Product.Infra.Data.Repositories
{
    internal class ProductVersionClauseRepository(ProductDbContext context) : DomainRepository<ProductVersionClause>(context), IProductVersionClauseRepository
    {
        public async Task<IEnumerable<ProductVersionClause>?> ListAsync(int productVersionId, decimal insuredAmountValue, RecordStatusEnum recordStatus)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => filtr.ProductVersionId.Equals(productVersionId)
                                     && filtr.Status.Equals((int)recordStatus)
                                     && (insuredAmountValue >= filtr.InsuredAmountValueMin && insuredAmountValue <= filtr.InsuredAmountValueMax)),
                            includeProperties: source =>
                                    source
                                    .Include(item => item.Clause)
                                    .Include(item => item.ClauseText),
                            orderBy: item => item.OrderBy(y => y.ProductVersionClauseId)));

            return query.AsEnumerable();
        }
    }
}
