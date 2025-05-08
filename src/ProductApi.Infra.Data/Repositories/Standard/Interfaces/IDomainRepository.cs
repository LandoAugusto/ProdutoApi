using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Infra.Data.Repositories.Standard.Interfaces
{
    public interface IDomainRepository<TEntity> : IRepositoryAsync<TEntity> where TEntity : class, IIdentityEntity
    {
    }
}
