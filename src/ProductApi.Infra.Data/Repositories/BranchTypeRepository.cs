using ProductApi.Core.Entities;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;

namespace ProductApi.Infra.Data.Repositories
{
    internal class BranchTypeRepository(ProductDbContext context ) : DomainRepository<BranchType>(context), IBranchTypeRepository   
    {
    }
}
