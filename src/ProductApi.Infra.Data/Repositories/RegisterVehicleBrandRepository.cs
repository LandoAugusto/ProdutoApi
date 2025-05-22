using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;
namespace ProductApi.Infra.Data.Repositories
{
    internal class RegisterVehicleBrandRepository(ProductDbContext context) : DomainRepository<RegisterVehicleBrand>(context), IRegisterVehicleBrandRepository
    {
        public async Task<IEnumerable<RegisterVehicleBrand>?> GetSearchBrandAsync(string name, RecordStatusEnum recordStatus)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => filtr.Name.Contains(name) && filtr.Status.Equals((int)recordStatus)),
                            orderBy: item => item.OrderBy(y => y.RegisterVehicleBrandId)));

            return query.AsEnumerable();
        }
    }
}
