
using  ProductApi.Core.Entities.Enumerators;
using  ProductApi.Infra.Data.Contexts;
using  ProductApi.Infra.Data.Interfaces;
using  ProductApi.Infra.Data.Repositories.Standard;

namespace  ProductApi.Infra.Data.Repositories
{
    internal class RegisterVehicleYearRepository(ProductDbContext context) : DomainRepository<Core.Entities.RegisterVehicleYear>(context), IRegisterVehicleYearRepository
    {
        public async Task<IEnumerable<Core.Entities.RegisterVehicleYear>?> GetAllAsync(RecordStatusEnum recordStatus)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => filtr.Status.Equals((int)recordStatus)),
                            orderBy: item => item.OrderBy(y => y.RegisterVehicleYearId)));

            return query.AsEnumerable();
        }
    }
}
