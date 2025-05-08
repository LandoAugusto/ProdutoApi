using  ProductApi.Infra.Data.Contexts;
using  ProductApi.Infra.Data.Repositories.Standard;
using  ProductApi.Infra.Data.Interfaces;
using  ProductApi.Core.Entities.Enumerators;

namespace  ProductApi.Infra.Data.Repositories
{
    internal class RegisterVehicleBodyWorkTypeRepository(ProductDbContext context ) : DomainRepository<Core.Entities.RegisterVehicleBodyWorkType>(context ), IRegisterVehicleBodyWorkTypeRepository
    {
        public async Task<IEnumerable<Core.Entities.RegisterVehicleBodyWorkType>?> GetAllAsync(RecordStatusEnum recordStatus)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => filtr.Status.Equals((int)recordStatus)),
                            orderBy: item => item.OrderBy(y => y.RegisterVehicleBodyWorkTypeId)));

            return query.AsEnumerable();
        }
    }
}
