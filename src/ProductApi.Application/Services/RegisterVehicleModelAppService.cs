using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Extensions;
using ProductApi.Core.Models;
using ProductApi.Infra.Data.Interfaces;

namespace ProductApi.Application.Services
{
    internal class RegisterVehicleModelAppService(IMapper mapper, IRegisterVehicleModelRepository repository)
        : IRegisterVehicleModelAppService
    {
        private readonly IMapper _mapper = mapper;
        private readonly IRegisterVehicleModelRepository _repository = repository;

        public async Task<IEnumerable<RegisterVehicleModelModel>?> GetSearchModelAsync(int vehicleBranchId, string? name, RecordStatusEnum recordStatus)
        {
            var entity = await _repository.GetSearchModelAsync(vehicleBranchId, name, recordStatus);
            if (!entity.IsAny<RegisterVehicleModel>()) return null;

            return _mapper.Map<IEnumerable<RegisterVehicleModelModel>?>(entity);
        }
    }
}
