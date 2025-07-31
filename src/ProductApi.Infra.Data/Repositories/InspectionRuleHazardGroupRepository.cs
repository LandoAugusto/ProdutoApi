using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;

namespace ProductApi.Infra.Data.Repositories
{
    internal class InspectionRuleHazardGroupRepository(ProductDbContext context) : DomainRepository<InspectionRuleHazardGroup>(context),
        IInspectionRuleHazardGroupRepository

    {
        public async Task<InspectionRuleHazardGroup?> ListAsync(int productVersionId, int contractTypeId, int hazardGroupId, RecordStatusEnum recordStatus)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => filtr.Status.Equals((int)recordStatus)
                            && filtr.ProductVersionId.Equals(productVersionId)
                            && filtr.ContractTypeId.Equals(contractTypeId)
                            && filtr.HazardGroupId.Equals(hazardGroupId)),
                            orderBy: item => item.OrderBy(y => y.InspectionReasonId)));

            return query.FirstOrDefault();
        }
    }
}
