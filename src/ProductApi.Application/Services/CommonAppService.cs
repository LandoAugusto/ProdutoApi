using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Extensions;
using ProductApi.Core.Models;
using ProductApi.Infra.Data.Interfaces;

namespace ProductApi.Application.Services
{
    internal class CommonAppService(IMapper mapper, IInsuredTypeRepository insuredTypeRepository, IDocumentTypeRepository documentTypeRepository,
       IAddressTypeRepository addressTypeRepository, IStateRepository stateRepository, IRecordStatusRepository recordStatusRepository,
       ITermTypeRepository termTypeRepository, IInsuranceTypeRepository insuranceTypeRepository, IInsurerRepository insurerRepository,
       IClaimsExperienceBonusRepository claimsExperienceBonusRepository, IBuildingsContentsRepository buildingsContentsRepository,
       IProductVersionConstructionUseStructureRepository useTypePropertyStructureRepository, IProductVersionConstructionUseTypeRepository constructionTypeUseTypeRepository,
       IPersonTypeRepository personTypeRepository, IQuotationStatusRepository quotationStatusRepository, IProtectiveDevicesRepository protectiveDevicesRepository)
     : ICommonAppService
    {

        private readonly IMapper _mapper = mapper;
        private readonly IStateRepository _stateRepository = stateRepository;
        private readonly IAddressTypeRepository _addressTypeRepository = addressTypeRepository;
        private readonly IDocumentTypeRepository _documentTypeRepository = documentTypeRepository;
        private readonly IInsuredTypeRepository _insuredTypeRepository = insuredTypeRepository;
        private readonly IRecordStatusRepository _recordStatusRepository = recordStatusRepository;
        private readonly ITermTypeRepository _termTypeRepository = termTypeRepository;
        private readonly IInsuranceTypeRepository _insuranceTypeRepository = insuranceTypeRepository;
        private readonly IInsurerRepository _insurerRepository = insurerRepository;
        private readonly IClaimsExperienceBonusRepository _claimsExperienceBonusRepository = claimsExperienceBonusRepository;
        private readonly IBuildingsContentsRepository _buildingsContentsRepository = buildingsContentsRepository;
        private readonly IProductVersionConstructionUseStructureRepository _useTypePropertyStructureRepository = useTypePropertyStructureRepository;
        private readonly IPersonTypeRepository _personTypeRepository = personTypeRepository;
        private readonly IQuotationStatusRepository _quotationStatusRepository = quotationStatusRepository;
        private readonly IProtectiveDevicesRepository _protectiveDevicesRepository = protectiveDevicesRepository;

        public async Task<IEnumerable<AddressTypeModel>?> GetAddressTypeAsync(RecordStatusEnum recordStatusEnum)
        {
            var entity = await _addressTypeRepository.ListAsync(recordStatusEnum);
            if (entity == null) return null;

            return _mapper.Map<IEnumerable<AddressTypeModel>>(entity);
        }

        public async Task<IEnumerable<DocumentTypeModel>?> GetDocumentypeAsync(RecordStatusEnum recordStatusEnum)
        {
            var entity = await _documentTypeRepository.ListAsync(recordStatusEnum);
            if (entity == null) return null;

            return _mapper.Map<IEnumerable<DocumentTypeModel>>(entity);
        }

        public async Task<IEnumerable<InsuredTypeModel>?> GetInsuredTypeAsync(RecordStatusEnum recordStatusEnum)
        {
            var entity = await _insuredTypeRepository.ListAsync(recordStatusEnum);
            if (entity == null) return null;

            return _mapper.Map<IEnumerable<InsuredTypeModel>>(entity);
        }

        public async Task<IEnumerable<StateModel>?> GetStateAsync(RecordStatusEnum recordStatusEnum, string? stateId = null)
        {
            var entity = await _stateRepository.ListAsync(recordStatusEnum, stateId);
            if (entity == null) return null;

            return _mapper.Map<IEnumerable<StateModel>>(entity);
        }

        public async Task<IEnumerable<RecordStatusModel>?> GetRecordStatusAsync()
        {
            var entity = await _recordStatusRepository.GetAllAsync();
            if (!entity.IsAny<RecordStatus>()) return null;

            return _mapper.Map<IEnumerable<RecordStatusModel>>(entity);
        }

        public async Task<IEnumerable<TermTypeModel>?> GetTermTypeAsync(RecordStatusEnum recordStatus)
        {
            var entity = await _termTypeRepository.GetAllAsync(recordStatus);
            if (!entity.IsAny<TermType>()) return null;

            return _mapper.Map<IEnumerable<TermTypeModel>>(entity);
        }
        public async Task<IEnumerable<InsuranceTypeModel>?> GetInsuranceTypeAsync(RecordStatusEnum recordStatus)
        {
            var entity = await _insuranceTypeRepository.GetAllAsync(recordStatus);
            if (!entity.IsAny<InsuranceType>()) return null;

            return _mapper.Map<IEnumerable<InsuranceTypeModel>>(entity);
        }
        public async Task<IEnumerable<InsurerModel>?> GetInsurerAsync(RecordStatusEnum recordStatus)
        {
            var entity = await _insurerRepository.GetAllAsync(recordStatus);
            if (!entity.IsAny<Insurer>()) return null;

            return _mapper.Map<IEnumerable<InsurerModel>>(entity);
        }

        public async Task<IEnumerable<ClaimsExperienceBonusModel>?> GetClaimsExperienceBonusAsync(RecordStatusEnum recordStatus)
        {
            var entity = await _claimsExperienceBonusRepository.GetAllAsync(recordStatus);
            if (!entity.IsAny<ClaimsExperienceBonus>()) return null;

            return _mapper.Map<IEnumerable<ClaimsExperienceBonusModel>>(entity);
        }

        public async Task<IEnumerable<BuildingsContentsModel>?> GetBuildingsContentsAsync(RecordStatusEnum recordStatus)
        {
            var entity = await _buildingsContentsRepository.GetAllAsync(recordStatus);
            if (!entity.IsAny<BuildingsContents>()) return null;

            return _mapper.Map<IEnumerable<BuildingsContentsModel>>(entity);
        }    

        public async Task<IEnumerable<PersonTypeModel>?> GetPersonTypeAsync(RecordStatusEnum recordStatus)
        {
            var entity = await _personTypeRepository.GetAllAsync(recordStatus);
            if (!entity.IsAny<PersonType>()) return null;

            return _mapper.Map<IEnumerable<PersonTypeModel>>(entity);
        }
        public async Task<IEnumerable<QuotationStatusModel>?> GetQuotationStatusAsync(RecordStatusEnum recordStatus)
        {
            var entity = await _quotationStatusRepository.GetAllAsync(recordStatus);
            if (!entity.IsAny<QuotationStatus>()) return null;

            return _mapper.Map<IEnumerable<QuotationStatusModel>>(entity);
        }
        public async Task<IEnumerable<ProtectiveDevicesModel>?> GetProtectiveDevicesAsync(int protectiveDevicesTypeId, RecordStatusEnum recordStatus)
        {
            var entity = await _protectiveDevicesRepository.GetAllAsync(protectiveDevicesTypeId, recordStatus);
            if (!entity.IsAny<ProtectiveDevices>()) return null;

            return _mapper.Map<IEnumerable<ProtectiveDevicesModel>>(entity);
        }
    }
}
