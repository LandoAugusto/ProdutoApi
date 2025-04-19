using Product.Core.Entities.Interfaces;

namespace Product.Infra.Data.Repositories.Standard.Interfaces
{
    public interface IDomainRepository<TEntity> : IRepositoryAsync<TEntity> where TEntity : class, IIdentityEntity
    {
    }
}
