using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Extensions;
using ProductApi.Core.Models;
using ProductApi.Infra.Data.Interfaces;

namespace ProductApi.Application.Services
{
    internal class RegisterVehicleVersionAppService(IMapper mapper, IRegisterVehicleVersionRepository repository)
        : IRegisterVehicleVersionAppService
    {
        private readonly IMapper _mapper = mapper;
        private readonly IRegisterVehicleVersionRepository _repository = repository;

        public async Task<IEnumerable<RegisterVehicleVersionModel>?> GetVehicleVersionAsync(int vehicleModelId, string? name, RecordStatusEnum recordStatus)
        {
            var entity = await _repository.GetSearchVersionAsync(vehicleModelId, name, recordStatus);
            if (!entity.IsAny<RegisterVehicleVersion>()) return null;

            return _mapper.Map<IEnumerable<RegisterVehicleVersionModel>>(entity);
        }
    }
}
