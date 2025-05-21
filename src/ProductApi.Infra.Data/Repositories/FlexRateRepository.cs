using Microsoft.EntityFrameworkCore;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;

namespace ProductApi.Infra.Data.Repositories
{
    internal class FlexRateRepository(ProductDbContext context) : DomainRepository<FlexRate>(context), IFlexRateRepository
    {
        public async Task<IEnumerable<FlexRate?>> ListAsync(int? productVersionId, RecordStatusEnum recordStatus)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => filtr.Status == recordStatus
                                && (productVersionId == null || filtr.ProductVersionId == productVersionId)),
                            includeProperties: source =>
                                    source
                                    .Include(item => item.ProductVersion)
                                        .ThenInclude(item => item.Product)
                                    .Include(item => item.ProductVersion)                                     
                                    .Include(item => item.RateType)
                                    .Include(item => item.OperationType),
                            orderBy: item => item.OrderBy(y => y.FlexRateId)));

            return query.AsEnumerable();
        }
    }
}
