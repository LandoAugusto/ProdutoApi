using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Extensions;
using ProductApi.Core.Models;
using ProductApi.Infra.Data.Interfaces;

namespace ProductApi.Application.Services
{
    internal class LaborCourtAppService(IMapper mapper, ILaborCourtRepository laborCourtRepository) : ILaborCourtAppService
    {
        private readonly IMapper _mapper = mapper;
        private readonly ILaborCourtRepository _laborCourtRepository = laborCourtRepository;

        public async Task<IEnumerable<LaborCourtModel>?> GetAllAsync(RecordStatusEnum recordStatus)
        {
            var entidade = await _laborCourtRepository.GetAllAsync(recordStatus);
            if (!entidade.IsAny<LaborCourt>()) return null;

            return _mapper.Map<IEnumerable<LaborCourtModel>>(entidade);
        }

        public async Task<IEnumerable<LaborCourtModel?>> ListAsync(LaborCourtFilterModel filter)
        {
            var recordStatus = (filter.StatusId == null || filter.StatusId == 2) ? RecordStatusEnum.Active : RecordStatusEnum.Inativo;

            var entidade = await _laborCourtRepository.ListAsync(filter.Name, filter.StateId, recordStatus);
            if (!entidade.IsAny<LaborCourt>()) return null;

            return _mapper.Map<IEnumerable<LaborCourtModel>>(entidade);
        }
    }
}
