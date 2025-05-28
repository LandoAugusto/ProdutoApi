using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface IQuotationStatusRepository : IDomainRepository<QuotationStatus>
    {
        Task<IEnumerable<QuotationStatus>?> GetAllAsync(RecordStatusEnum recordStatus);
    }
}
