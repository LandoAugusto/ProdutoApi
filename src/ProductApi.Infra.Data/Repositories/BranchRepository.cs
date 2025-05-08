using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;

namespace ProductApi.Infra.Data.Repositories
{
    internal class BranchRepository(ProductDbContext context) : DomainRepository<Branch>(context), IBranchRepository
    {
        public async Task<IEnumerable<Branch>?> ListAsync(int? brachTypeId, RecordStatusEnum recordStatus)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => (brachTypeId == null || filtr.BranchTypeId.Equals(brachTypeId))
                            && filtr.Status.Equals((int)recordStatus)),
                            orderBy: item => item.OrderBy(y => y.BranchTypeId)));

            return query.AsEnumerable();
        }
    }
}
