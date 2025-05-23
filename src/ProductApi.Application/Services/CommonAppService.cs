﻿using AutoMapper;
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
       IClaimsExperienceBonusRepository claimsExperienceBonusRepository, IPropertyStructureRepository propertyStructureRepository,
       IBuildingsContentsRepository buildingsContentsRepository) 
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
        private readonly IPropertyStructureRepository _propertyStructureRepository = propertyStructureRepository;
        private readonly IBuildingsContentsRepository _buildingsContentsRepository = buildingsContentsRepository;
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

        public async Task<IEnumerable<StateModel>?> GetStateAsync(RecordStatusEnum recordStatusEnum)
        {
            var entity = await _stateRepository.ListAsync(recordStatusEnum);
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
            var entidade = await _insurerRepository.GetAllAsync(recordStatus);
            if (!entidade.IsAny<Insurer>()) return null;

            return _mapper.Map<IEnumerable<InsurerModel>>(entidade);
        }

        public async Task<IEnumerable<ClaimsExperienceBonusModel>?> GetClaimsExperienceBonusAsync(RecordStatusEnum recordStatus)
        {
            var entidade = await _claimsExperienceBonusRepository.GetAllAsync(recordStatus);
            if (!entidade.IsAny<ClaimsExperienceBonus>()) return null;

            return _mapper.Map<IEnumerable<ClaimsExperienceBonusModel>>(entidade);
        }

        public async Task<IEnumerable<PropertyStructureModel>?> GetPropertyStructureAsync(RecordStatusEnum recordStatus)
        {
            var entidade = await _propertyStructureRepository.GetAllAsync(recordStatus);
            if (!entidade.IsAny<PropertyStructure>()) return null;

            return _mapper.Map<IEnumerable<PropertyStructureModel>>(entidade);
        }
        public async Task<IEnumerable<BuildingsContentsModel>?> GetBuildingsContentsAsync(RecordStatusEnum recordStatus)
        {
            var entidade = await _buildingsContentsRepository.GetAllAsync(recordStatus);
            if (!entidade.IsAny<BuildingsContents>()) return null;

            return _mapper.Map<IEnumerable<BuildingsContentsModel>>(entidade);
        }

        
    }
}
