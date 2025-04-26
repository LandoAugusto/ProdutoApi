using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Model;
using ProductApi.Infra.Data.Interfaces;

namespace ProductApi.Application.Services
{
    internal class CommonAppService(IMapper mapper, IInsuredTypeRepository insuredTypeRepository, IDocumentTypeRepository documentTypeRepository,
       IAddressTypeRepository addressTypeRepository, IStateRepository stateRepository) : ICommonAppService
    {

        private readonly IMapper _mapper = mapper;
        private readonly IStateRepository _stateRepository = stateRepository;
        private readonly IAddressTypeRepository _addressTypeRepository = addressTypeRepository;
        private readonly IDocumentTypeRepository _documentTypeRepository = documentTypeRepository;
        private readonly IInsuredTypeRepository _insuredTypeRepository = insuredTypeRepository;

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
    }
}
