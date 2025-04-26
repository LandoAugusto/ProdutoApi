using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Model;

namespace ProductApi.Application.Interfaces
{
    public interface ICommonAppService
    {
        Task<IEnumerable<StateModel>?> GetStateAsync(RecordStatusEnum recordStatusEnum);
        Task<IEnumerable<AddressTypeModel>?> GetAddressTypeAsync(RecordStatusEnum recordStatusEnum);
        Task<IEnumerable<DocumentTypeModel>?> GetDocumentypeAsync(RecordStatusEnum recordStatusEnum);
        Task<IEnumerable<InsuredTypeModel>?> GetInsuredTypeAsync(RecordStatusEnum recordStatusEnum);
    }
}
