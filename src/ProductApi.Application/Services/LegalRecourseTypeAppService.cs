using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Extensions;
using ProductApi.Core.Models;
using ProductApi.Infra.Data.Interfaces;

namespace ProductApi.Application.Services
{
    internal class LegalRecourseTypeAppService(IMapper mapper, ILegalRecourseTypeRepository legalRecourseTypeRepository, ILegalRecourseTypeParameterRepository legalRecourseTypeParameterRepository) : ILegalRecourseTypeAppService
    {
        private readonly IMapper _mapper = mapper;
        private readonly ILegalRecourseTypeRepository _legalRecourseTypeRepository = legalRecourseTypeRepository;
        private readonly ILegalRecourseTypeParameterRepository _legalRecourseTypeParameterRepository = legalRecourseTypeParameterRepository;

        public async Task<IEnumerable<LegalRecourseTypeModel>?> GetAllAsync(RecordStatusEnum recordStatus)
        {
            var entidade = await _legalRecourseTypeRepository.GetAllAsync(recordStatus);
            if (!entidade.IsAny<LegalRecourseType>()) return null;

            var response = _mapper.Map<IEnumerable<LegalRecourseTypeModel>>(entidade);
            foreach (var item in response)
            {
                var parameter = await _legalRecourseTypeParameterRepository.GetByLegalRecourseTypeIdAsync(item.LegalRecourseTypeId);
                if (parameter != null)
                {
                    item.ApeelDepositAmount = parameter.ApeelDepositAmount;
                }
            }

            return response;
        }
    }
}

