using Microsoft.EntityFrameworkCore;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;

namespace ProductApi.Infra.Data.Repositories
{
    internal class ProductVersionActivityRepository(ProductDbContext context): DomainRepository<ProductVersionActivity>(context)
        , IProductVersionActivityRepository

    {
        public async Task<ProductVersionActivity?> GetAsync(int productVersionId, int profileId,int  activityId, RecordStatusEnum recordStatus)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => filtr.ProductVersionId.Equals(productVersionId)
                            && filtr.ProfileId.Equals(profileId)
                            && filtr.ActivityId.Equals(activityId)
                            && filtr.Status.Equals((int)recordStatus)),
                            includeProperties: source =>
                                    source
                                    .Include(item => item.Activity)
                                    .Include(item => item.RiskType),
                                    
                            orderBy: item => item.OrderBy(y => y.ProductVersionActivityId)));

            return query.FirstOrDefault();
        }

        public async Task<IEnumerable<ProductVersionActivity>?> ListAsync(int productVersionId, int profileId, string? name ,RecordStatusEnum recordStatus)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => filtr.ProductVersionId.Equals(productVersionId) 
                            && filtr.ProfileId.Equals(profileId)
                             && (string.IsNullOrEmpty(name) || filtr.Activity.Name.Contains(name))
                            && filtr.Status.Equals((int)recordStatus)),
                            includeProperties: source =>
                                    source
                                    .Include(item => item.Activity),
                            orderBy: item => item.OrderBy(y => y.ProductVersionActivityId)));

            return query.AsEnumerable();
        }
    }
}
