using ProductApi.Core.Entities;
using  ProductApi.Core.Entities.Enumerators;
using  ProductApi.Infra.Data.Contexts;
using  ProductApi.Infra.Data.Interfaces;
using  ProductApi.Infra.Data.Repositories.Standard;

namespace  ProductApi.Infra.Data.Repositories
{
    internal class RegisterVehicleVersionRepository(ProductDbContext context) : DomainRepository<Core.Entities.RegisterVehicleVersion>(context), IRegisterVehicleVersionRepository
    {
        public async Task<IEnumerable<RegisterVehicleVersion>?> GetSearchVersionAsync(int vehicleModelId, string? name, RecordStatusEnum recordStatus)
        {
            var query =
                   await Task.FromResult(
                       GenerateQuery(
                           filter: (filtr => filtr.RegisterVehicleModelId == vehicleModelId
                           && (name == null || filtr.Name.Contains(name))
                           && filtr.Status.Equals((int)recordStatus)),
                           orderBy: item => item.OrderBy(y => y.RegisterVehicleModelId)));

            return query.AsEnumerable();
        }
    }
}
