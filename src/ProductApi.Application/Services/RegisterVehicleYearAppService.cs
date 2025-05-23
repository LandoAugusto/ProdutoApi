using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Extensions;
using ProductApi.Core.Models;
using ProductApi.Infra.Data.Interfaces;

namespace ProductApi.Application.Services
{
    internal class RegisterVehicleYearAppService(IMapper mapper, IRegisterVehicleYearRepository repository)
        : IRegisterVehicleYearAppService
    {
        private readonly IMapper _mapper = mapper;
        private readonly IRegisterVehicleYearRepository _repository = repository;

        public async Task<IEnumerable<RegisterVehicleYearModel>?> GetAllAsync(RecordStatusEnum recordStatus)
        {
            var entity = await _repository.GetAllAsync(recordStatus);
            if (!entity.IsAny<RegisterVehicleYear>()) return null;

            return _mapper.Map<IEnumerable<RegisterVehicleYearModel>>(entity);
        }
    }
}
