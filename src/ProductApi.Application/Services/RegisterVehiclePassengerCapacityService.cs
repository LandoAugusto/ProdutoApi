using AutoMapper;
using ProductApi.Application.Interfaces;
using  ProductApi.Core.Entities.Enumerators;
using  ProductApi.Core.Models;
using  ProductApi.Infra.Data.Interfaces;

namespace Product.Application.Services
{
    internal class RegisterVehiclePassengerCapacityService(IMapper mapper, IRegisterVehiclePassengerCapacityRepository repository)
        : IRegisterVehiclePassengerCapacityService
    {
        private readonly IMapper _mapper = mapper;
        private readonly IRegisterVehiclePassengerCapacityRepository _repository = repository;

        public async Task<IEnumerable<RegisterVehiclePassengerCapacityModel>?> GetAllAsync(RecordStatusEnum recordStatus)
        {
            var entity = await _repository.GetAllAsync(recordStatus);
            if (entity == null) return null;

            return _mapper.Map<IEnumerable<RegisterVehiclePassengerCapacityModel>>(entity);
        }
    }
}
