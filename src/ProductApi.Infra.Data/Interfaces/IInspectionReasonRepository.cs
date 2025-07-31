using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface IInspectionReasonRepository : IDomainRepository<InspectionReason>
    {
        Task<IEnumerable<InspectionReason>?> ListAsync(RecordStatusEnum recordStatus);
    }
}
