using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface IInsuranceBranchRepository :IDomainRepository<InsuranceBranch>
    {
        Task<IEnumerable<InsuranceBranch>?> ListAsync(int? brachId, RecordStatusEnum recordStatus);
    }
}
