using Microsoft.EntityFrameworkCore.Query;
using Product.Core.Entities.Interfaces;
using System.Linq.Expressions;

namespace Product.Infra.Data.Repositories.Standard
{
    public abstract class SpecificMethods<TEntity> where TEntity : class, IIdentityEntity
    {
        #region ProtectedMethods

        protected abstract IQueryable<TEntity> GenerateQuery(
                    Expression<Func<TEntity, bool>> filter = null,
                    Func<IQueryable<TEntity>, IOrderedQueryable<TEntity>> orderBy = null,
                    Func<IQueryable<TEntity>, IIncludableQueryable<TEntity, object>> includeProperties = null);


        protected abstract IEnumerable<TEntity> GetYieldManipulated(IEnumerable<TEntity> entities, Func<TEntity, TEntity> DoAction);
        #endregion ProtectedMethods
    }
}
