using  ProductApi.Core.Entities.Enumerators;
using  ProductApi.Infra.Data.Contexts;
using  ProductApi.Infra.Data.Interfaces;
using  ProductApi.Infra.Data.Repositories.Standard;

namespace  ProductApi.Infra.Data.Repositories
{
    internal class RegisterVehiclePassengerCapacityRepository( ProductDbContext context ): DomainRepository<Core.Entities.RegisterVehiclePassengerCapacity>(context), IRegisterVehiclePassengerCapacityRepository
    {
        public async Task<IEnumerable<Core.Entities.RegisterVehiclePassengerCapacity>?> GetAllAsync(RecordStatusEnum recordStatus)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => filtr.Status.Equals((int)recordStatus)),
                            orderBy: item => item.OrderBy(y => y.RegisterVehiclePassengerCapacityId)));

            return query.AsEnumerable();
        }
    }
}
