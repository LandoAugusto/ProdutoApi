using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;

namespace ProductApi.Application.Interfaces
{
    public interface ICommonAppService
    {
        Task<IEnumerable<TermTypeModel>?> GetTermTypeAsync(RecordStatusEnum recordStatus);
        Task<IEnumerable<RecordStatusModel>?> GetRecordStatusAsync();
        Task<IEnumerable<StateModel>?> GetStateAsync(RecordStatusEnum recordStatusEnum);
        Task<IEnumerable<AddressTypeModel>?> GetAddressTypeAsync(RecordStatusEnum recordStatusEnum);
        Task<IEnumerable<DocumentTypeModel>?> GetDocumentypeAsync(RecordStatusEnum recordStatusEnum);
        Task<IEnumerable<InsuredTypeModel>?> GetInsuredTypeAsync(RecordStatusEnum recordStatusEnum);
        Task<IEnumerable<InsuranceTypeModel>?> GetInsuranceTypeAsync(RecordStatusEnum recordStatus);
        Task<IEnumerable<InsurerModel>?> GetInsurerAsync(RecordStatusEnum recordStatus);
        Task<IEnumerable<ClaimsExperienceBonusModel>?> GetClaimsExperienceBonusAsync(RecordStatusEnum recordStatus);        
        Task<IEnumerable<BuildingsContentsModel>?> GetBuildingsContentsAsync(RecordStatusEnum recordStatus);
        Task<IEnumerable<PropertyStructureModel>?> GetPropertyStructureAsync(int useTypeId, RecordStatusEnum recordStatus);
        Task<IEnumerable<UseTypeModel>?> GetUseTypeAsync(int constructionTypeId, int profileId, RecordStatusEnum recordStatus);
    }
}
