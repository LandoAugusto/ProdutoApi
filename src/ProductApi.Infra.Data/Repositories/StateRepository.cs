using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;

namespace ProductApi.Infra.Data.Repositories
{
    internal class StateRepository(ProductDbContext context) : DomainRepository<State>(context), IStateRepository
    {
        public async Task<IEnumerable<State>?> ListAsync( RecordStatusEnum recordStatus, string? stateId = null)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => filtr.Status.Equals((int)recordStatus)
                            && string.IsNullOrEmpty(stateId) || stateId.Equals(filtr.Initials)),
                            orderBy: item => item.OrderBy(y => y.StateId)));

            return query.AsEnumerable();
        }
    }
}
