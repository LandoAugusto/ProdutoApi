using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;

namespace ProductApi.Infra.Data.Repositories
{
    internal class ProfessionRepository(ProductDbContext context) : DomainRepository<Profession>(context),
        IProfessionRepository
    {
        public async Task<IEnumerable<Profession>?> ListAsync(string? name, RecordStatusEnum recordStatus)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => filtr.Status.Equals((int)recordStatus)
                                    && (string.IsNullOrEmpty(name) || filtr.Name.Contains(name))),
                            orderBy: item => item.OrderBy(y => y.ProfessionId)));
            return query.AsEnumerable().Take(100);
        }
    }
}
