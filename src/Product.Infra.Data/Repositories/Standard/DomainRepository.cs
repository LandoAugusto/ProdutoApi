using Microsoft.EntityFrameworkCore;
using Product.Core.Entities.Interfaces;
using Product.Infra.Data.Repositories.Standard.Interfaces;

namespace Product.Infra.Data.Repositories.Standard
{
    public class DomainRepository<TEntity> : RepositoryAsync<TEntity>,
                                            IDomainRepository<TEntity> where TEntity : class, IIdentityEntity
    {
        protected DomainRepository(DbContext dbContext) : base(dbContext)
        {

        }
    }
}
