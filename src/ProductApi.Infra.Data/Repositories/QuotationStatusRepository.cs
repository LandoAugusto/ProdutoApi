using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;

namespace ProductApi.Infra.Data.Repositories
{
    internal class QuotationStatusRepository(ProductDbContext context) : DomainRepository<QuotationStatus>(context),
        IQuotationStatusRepository
    {
        public async Task<IEnumerable<QuotationStatus>?> GetAllAsync(RecordStatusEnum recordStatus)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => filtr.Status.Equals((int)recordStatus)),
                            orderBy: item => item.OrderBy(y => y.QuotationStatusId )));
            return query.AsEnumerable();
        }
    }
}
