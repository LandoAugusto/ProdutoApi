using ProductApi.Core.Entities;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;

namespace ProductApi.Infra.Data.Repositories
{
    internal class FlexRateBrokerRepository(ProductDbContext context) : DomainRepository<FlexRateBroker>(context), IFlexRateBrokerRepository
    {
        public async Task<IEnumerable<FlexRateBroker?>> GetAsync(int brokerId)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => filtr.BrokerId.Equals(brokerId)),
                            orderBy: item => item.OrderBy(y => y.FlexRateBrokerId)));

            return query.AsEnumerable();
        }
    }
}

