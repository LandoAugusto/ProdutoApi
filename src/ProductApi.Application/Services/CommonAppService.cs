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
       ITermTypeRepository termTypeRepository) : ICommonAppService
    {

        private readonly IMapper _mapper = mapper;
        private readonly IStateRepository _stateRepository = stateRepository;
        private readonly IAddressTypeRepository _addressTypeRepository = addressTypeRepository;
        private readonly IDocumentTypeRepository _documentTypeRepository = documentTypeRepository;
        private readonly IInsuredTypeRepository _insuredTypeRepository = insuredTypeRepository;
        private readonly IRecordStatusRepository _recordStatusRepository = recordStatusRepository;
        private readonly ITermTypeRepository _termTypeRepository = termTypeRepository;

        public async Task<IEnumerable<AddressTypeModel>?> GetAddressTypeAsync(RecordStatusEnum recordStatusEnum)
        {
            var response = await _addressTypeRepository.ListAsync(recordStatusEnum);
            if (response == null) return null;

            return _mapper.Map<IEnumerable<AddressTypeModel>>(response);
        }

        public async Task<IEnumerable<DocumentTypeModel>?> GetDocumentypeAsync(RecordStatusEnum recordStatusEnum)
        {
            var response = await _documentTypeRepository.ListAsync(recordStatusEnum);
            if (response == null) return null;

            return _mapper.Map<IEnumerable<DocumentTypeModel>>(response);
        }

        public async Task<IEnumerable<InsuredTypeModel>?> GetInsuredTypeAsync(RecordStatusEnum recordStatusEnum)
        {
            var response = await _insuredTypeRepository.ListAsync(recordStatusEnum);
            if (response == null) return null;

            return _mapper.Map<IEnumerable<InsuredTypeModel>>(response);
        }

        public async Task<IEnumerable<StateModel>?> GetStateAsync(RecordStatusEnum recordStatusEnum)
        {
            var response = await _stateRepository.ListAsync(recordStatusEnum);
            if (response == null) return null;

            return _mapper.Map<IEnumerable<StateModel>>(response);
        }

        public async Task<IEnumerable<RecordStatusModel>?> GetRecordStatusAsync()
        {
            var entidade = await _recordStatusRepository.GetAllAsync();
            if (!entidade.IsAny<RecordStatus>()) return null;

            return _mapper.Map<IEnumerable<RecordStatusModel>>(entidade);
        }

       

        public async Task<IEnumerable<TermTypeModel>?> GetTermTypeAsync(RecordStatusEnum recordStatus)
        {
            var entidade = await _termTypeRepository.GetAllAsync(recordStatus);
            if (!entidade.IsAny<TermType>()) return null;

            return _mapper.Map<IEnumerable<TermTypeModel>>(entidade);
        }
    }
}
