using AutoMapper;
using Nest;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Extensions;
using ProductApi.Core.Models;
using ProductApi.Infra.Data.Interfaces;

namespace ProductApi.Application.Services
{
    internal class FlexRateAppService(IMapper mapper, IFlexRateRepository flexRateRepository, IFlexRateBrokerRepository flexRateBrokerRepository,
        IFlexRateBorrowerRepository flexRateBorrowerRepository) : IFlexRateAppService
    {
        private readonly IMapper _mapper = mapper;
        private readonly IFlexRateRepository _flexRateRepository = flexRateRepository;
        private readonly IFlexRateBrokerRepository _flexRateBrokerRepository = flexRateBrokerRepository;
        private readonly IFlexRateBorrowerRepository _flexRateBorrowerRepository = flexRateBorrowerRepository;

        public async Task<FlexRateModel?> GetAsync(int flexRateId)
        {
            var entidade = await _flexRateRepository.GetByIdAsync(flexRateId);

            if (entidade == null) return null;
            return _mapper.Map<FlexRateModel>(entidade);
        }

        public async Task<IEnumerable<FlexRateModel?>> ListAsync(int productVersionId, int? statusId)
        {
            var recordStatus = (statusId == null || statusId == 2) ? RecordStatusEnum.Active : RecordStatusEnum.Inativo;
            var flexRate = await _flexRateRepository.ListAsync(productVersionId, recordStatus);
            if (!flexRate.IsAny<FlexRate>()) return null;

            return _mapper.Map<IEnumerable<FlexRateModel>>(flexRate);
        }
    }
}
