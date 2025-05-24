using Microsoft.EntityFrameworkCore;
using ProductApi.Core.Entities.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Repositories.Standard
{
    public abstract class DomainRepository<TEntity> : RepositoryAsync<TEntity>,
                                            IDomainRepository<TEntity> where TEntity : class, IIdentityEntity
    {
        protected DomainRepository(DbContext dbContext) : base(dbContext)
        {

        }
    }
}
