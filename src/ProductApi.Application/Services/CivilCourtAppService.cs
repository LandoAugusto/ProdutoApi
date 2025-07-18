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
            var entities = await _civilCourtRepository.GetAllAsync(recordStatus);
            if (!entities.IsAny<CivilCourt>()) return null;

            return _mapper.Map<IEnumerable<CivilCourtModel>>(entities);
        }
        public async Task<IEnumerable<CivilCourtModel?>> ListAsync(CivilCourtFilterModel filter)
        {
            var recordStatus = (filter.StatusId == null || filter.StatusId == 2) ? RecordStatusEnum.Active : RecordStatusEnum.Inativo;

            var entities = await _civilCourtRepository.ListAsync(filter.Name, filter.LaborCourtId, filter.StateId, recordStatus);
            if (!entities.IsAny<CivilCourt>()) return null;

            return _mapper.Map<IEnumerable<CivilCourtModel>>(entities);
        }
    }
}
