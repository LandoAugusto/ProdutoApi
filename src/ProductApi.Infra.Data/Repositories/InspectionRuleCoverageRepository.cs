using Microsoft.EntityFrameworkCore;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;

namespace ProductApi.Infra.Data.Repositories
{
    internal class InspectionRuleCoverageRepository(ProductDbContext context) : DomainRepository<InspectionRuleCoverage>(context),
        IInspectionRuleCoverageRepository
    {
        public async Task<InspectionRuleCoverage?> ListAsync(int productVersionId, int contractTypeId, int profileId,
            int activityId, int coverageId, RecordStatusEnum recordStatus)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => filtr.Status.Equals((int)recordStatus)
                            && filtr.ProductVersionId.Equals(productVersionId)
                            && filtr.ContractTypeId.Equals(contractTypeId)
                            && filtr.ProfileId.Equals(profileId)
                            && filtr.ActivityId.Equals(activityId)
                            && filtr.CoverageId.Equals(coverageId)),
                            orderBy: item => item.OrderBy(y => y.InspectionReasonId)));

            return query.FirstOrDefault();
        }
    }
}
