using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Extensions;
using ProductApi.Core.Models;
using ProductApi.Infra.Data.Interfaces;

namespace ProductApi.Application.Services
{
    internal class CivilCourtAppService(IMapper mapper, ICivilCourtRepository civilCourtRepository) : ICivilCourtAppService
    {
        private readonly IMapper _mapper = mapper;
        private readonly ICivilCourtRepository _civilCourtRepository = civilCourtRepository;

        public async Task<IEnumerable<CivilCourtModel>?> GetAllAsync(RecordStatusEnum recordStatus)
        {
            var entidade = await _civilCourtRepository.GetAllAsync(recordStatus);
            if (!entidade.IsAny<CivilCourt>()) return null;

            return _mapper.Map<IEnumerable<CivilCourtModel>>(entidade);
        }
        public async Task<IEnumerable<CivilCourtModel?>> ListAsync(CivilCourtFilterModel filter)
        {
            var recordStatus = (filter.StatusId == null || filter.StatusId == 2) ? RecordStatusEnum.Active : RecordStatusEnum.Inativo;

            var entidade = await _civilCourtRepository.ListAsync(filter.Name, filter.LaborCourtId, filter.StateId, recordStatus);
            if (!entidade.IsAny<CivilCourt>()) return null;

            return _mapper.Map<IEnumerable<CivilCourtModel>>(entidade);
        }
    }
}
