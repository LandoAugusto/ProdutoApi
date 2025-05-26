using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;

namespace ProductApi.Application.Interfaces
{
    public interface IProductVersionContractTypeAppService
    {
        Task<IEnumerable<ContractTypeModel>?> GetAsync(int productVersionId, RecordStatusEnum recordStatus);
    }
}
