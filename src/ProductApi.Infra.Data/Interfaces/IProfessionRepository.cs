using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public  interface IProfessionRepository : IDomainRepository<Profession>    
    {
        Task<IEnumerable<Profession>?> ListAsync(string? name, RecordStatusEnum recordStatus);
    }
}
