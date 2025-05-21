using Microsoft.EntityFrameworkCore;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;

namespace ProductApi.Infra.Data.Repositories
{
    internal class CivilCourtRepository(ProductDbContext context) : DomainRepository<CivilCourt>(context), ICivilCourtRepository
    {
        public async Task<IEnumerable<CivilCourt>?> GetAllAsync(RecordStatusEnum recordStatus)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => filtr.Status.Equals((int)recordStatus)),
                            orderBy: item => item.OrderBy(y => y.CivilCourtId)));

            return query.AsEnumerable();
        }

        public async Task<IEnumerable<CivilCourt?>> ListAsync(string? name, int? laborCourtId, string? stateId, RecordStatusEnum recordStatus)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => filtr.Status.Equals((int)recordStatus)
                                && (string.IsNullOrEmpty(name) || filtr.Name.Contains(name))
                                && (laborCourtId == null || filtr.LaborCourtId == laborCourtId)
                                && (string.IsNullOrEmpty(stateId) || filtr.State == stateId)
                               ),
                             includeProperties: source =>
                                    source
                                    .Include(item => item.LaborCourt),
                            orderBy: item => item.OrderBy(y => y.LaborCourtId)));

            return query.AsEnumerable();
        }
    }
}
