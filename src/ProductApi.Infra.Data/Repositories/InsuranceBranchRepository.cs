using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;

namespace ProductApi.Infra.Data.Repositories
{
    internal class InsuranceBranchRepository(ProductDbContext context) : DomainRepository<InsuranceBranch>(context), IInsuranceBranchRepository
    {
        public async Task<IEnumerable<InsuranceBranch>?> ListAsync(int? brachId, RecordStatusEnum recordStatus)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => (brachId == null || filtr.BranchId.Equals(brachId))
                            && filtr.Status.Equals((int)recordStatus)),
                            orderBy: item => item.OrderBy(y => y.InsuranceBranchId)));

            return query.AsEnumerable();
        }
    }
}
