using  ProductApi.Core.Entities.Enumerators;
using  ProductApi.Infra.Data.Contexts;
using  ProductApi.Infra.Data.Interfaces;
using  ProductApi.Infra.Data.Repositories.Standard;

namespace  ProductApi.Infra.Data.Repositories
{
    internal class RegisterVehicleDoorRepository(ProductDbContext context) : DomainRepository<Core.Entities.RegisterVehicleDoor>(context), IRegisterVehicleDoorRepository 
    {
        public async Task<IEnumerable<Core.Entities.RegisterVehicleDoor>?> GetAllAsync(RecordStatusEnum recordStatus)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => filtr.Status.Equals((int)recordStatus)),
                            orderBy: item => item.OrderBy(y => y.RegisterVehicleDoorId)));

            return query.AsEnumerable();
        }
    }
}
