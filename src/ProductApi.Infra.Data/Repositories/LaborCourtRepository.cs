using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;

namespace ProductApi.Infra.Data.Repositories
{
    internal class LaborCourtRepository(ProductDbContext context) : DomainRepository<LaborCourt>(context), ILaborCourtRepository
    {
        public async Task<IEnumerable<LaborCourt>?> GetAllAsync(RecordStatusEnum recordStatus)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => filtr.Status.Equals((int)recordStatus)),
                            orderBy: item => item.OrderBy(y => y.LaborCourtId)));

            return query.AsEnumerable();
        }

        public async Task<IEnumerable<LaborCourt?>> ListAsync(string? name, string? stateId, RecordStatusEnum recordStatus)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => filtr.Status.Equals((int)recordStatus)
                                && (string.IsNullOrEmpty(name) || filtr.Name.Contains(name))
                                && (string.IsNullOrEmpty(stateId) || filtr.State == stateId)
                               ),
                            orderBy: item => item.OrderBy(y => y.LaborCourtId)));

            return query.AsEnumerable();
        }
    }
}