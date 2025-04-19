using Product.Core.Entities;
using Product.Infra.Data.Contexts;
using Product.Infra.Data.Interfaces;
using Product.Infra.Data.Repositories.Standard;

namespace Product.Infra.Data.Repositories
{
    internal class RecordStatusRepository(ProductDbContext context) : DomainRepository<RecordStatus>(context),  IRecordStatusRepository
    {
    }
}
