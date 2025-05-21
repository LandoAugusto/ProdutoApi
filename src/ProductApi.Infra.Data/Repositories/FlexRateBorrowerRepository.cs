using ProductApi.Core.Entities;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;

namespace ProductApi.Infra.Data.Repositories
{
    internal class FlexRateBorrowerRepository(ProductDbContext context) : DomainRepository<FlexRateBorrower>(context), IFlexRateBorrowerRepository
    {
        public async Task<IEnumerable<FlexRateBorrower?>> GetAsync(int brokerId)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => filtr.BorrowerId.Equals(brokerId)),
                            orderBy: item => item.OrderBy(y => y.FlexRateBorrowerId)));

            return query.AsEnumerable();
        }
    }
}
