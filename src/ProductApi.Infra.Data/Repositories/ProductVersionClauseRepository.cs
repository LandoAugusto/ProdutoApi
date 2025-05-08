using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;
using Microsoft.EntityFrameworkCore;

namespace ProductApi.Infra.Data.Repositories
{
    internal class ProductVersionClauseRepository(ProductDbContext context) : DomainRepository<ProductVersionClause>(context), IProductVersionClauseRepository
    {
        public async Task<IEnumerable<ProductVersionClause>?> ListAsync(int productVersionCoverageId, decimal insuredAmountValue, RecordStatusEnum recordStatus)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => filtr.ProductVersionCoverageId.Equals(productVersionCoverageId)
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
