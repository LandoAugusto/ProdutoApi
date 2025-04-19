using Product.Core.Entities;
using Product.Core.Entities.Enumerators;
using Product.Infra.Data.Contexts;
using Product.Infra.Data.Interfaces;
using Product.Infra.Data.Repositories.Standard;

namespace Product.Infra.Data.Repositories
{
    internal class StateRepository(ProductDbContext context) : DomainRepository<State>(context), IStateRepository
    {
        public async Task<IEnumerable<State>?> GetAllAsync(RecordStatusEnum recordStatus)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => filtr.Status.Equals((int)recordStatus)),
                            orderBy: item => item.OrderBy(y => y.StateId)));

            return query.AsEnumerable();
        }
    }
}
