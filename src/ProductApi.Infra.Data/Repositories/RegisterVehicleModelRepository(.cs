using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;

namespace ProductApi.Infra.Data.Repositories
{
    internal class RegisterVehicleModelRepository(ProductDbContext context) : DomainRepository<RegisterVehicleModel>(context), IRegisterVehicleModelRepository
    {  

        public async Task<IEnumerable<RegisterVehicleModel>?> GetSearchModelAsync(int vehicleBranchId, string? name, RecordStatusEnum recordStatus)
        {
            var query =
                   await Task.FromResult(
                       GenerateQuery(
                           filter: (filtr => filtr.RegisterVehicleBranid == vehicleBranchId
                           &&( name == null || filtr.Name.Contains(name))
                           && filtr.Status.Equals((int)recordStatus)),
                           orderBy: item => item.OrderBy(y => y.RegisterVehicleModelId)));

            return query.AsEnumerable();
        }
    }
}
