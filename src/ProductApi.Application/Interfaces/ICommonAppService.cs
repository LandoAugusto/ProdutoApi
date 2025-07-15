using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;

namespace ProductApi.Application.Interfaces
{
    public interface ICommonAppService
    {
        Task<IEnumerable<TermTypeModel>?> GetTermTypeAsync(RecordStatusEnum recordStatus);
        Task<IEnumerable<RecordStatusModel>?> GetRecordStatusAsync();
        Task<IEnumerable<StateModel>?> GetStateAsync(RecordStatusEnum recordStatusEnum, string? stateId = null);
        Task<IEnumerable<AddressTypeModel>?> GetAddressTypeAsync(RecordStatusEnum recordStatusEnum);
        Task<IEnumerable<DocumentTypeModel>?> GetDocumentypeAsync(RecordStatusEnum recordStatusEnum);
        Task<IEnumerable<InsuredTypeModel>?> GetInsuredTypeAsync(RecordStatusEnum recordStatusEnum);
        Task<IEnumerable<InsuranceTypeModel>?> GetInsuranceTypeAsync(RecordStatusEnum recordStatus);
        Task<IEnumerable<InsurerModel>?> GetInsurerAsync(RecordStatusEnum recordStatus);
        Task<IEnumerable<ClaimsExperienceBonusModel>?> GetClaimsExperienceBonusAsync(RecordStatusEnum recordStatus);        
        Task<IEnumerable<BuildingsContentsModel>?> GetBuildingsContentsAsync(RecordStatusEnum recordStatus);
        Task<IEnumerable<PropertyStructureModel>?> GetPropertyStructureAsync(int constructionTypeId, int useTypeId, int profileId, RecordStatusEnum recordStatus);
        Task<IEnumerable<UseTypeModel>?> GetUseTypeAsync(int constructionTypeId, int profileId, RecordStatusEnum recordStatus);
        Task<IEnumerable<PersonTypeModel>?> GetPersonTypeAsync(RecordStatusEnum recordStatus);
        Task<IEnumerable<QuotationStatusModel>?> GetQuotationStatusAsync(RecordStatusEnum recordStatus);
        Task<IEnumerable<ProtectiveDevicesModel>?> GetProtectiveDevicesAsync(int protectiveDevicesTypeId,RecordStatusEnum recordStatus);
    }
}
