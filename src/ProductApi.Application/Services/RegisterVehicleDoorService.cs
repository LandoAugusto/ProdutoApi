using AutoMapper;
using ProductApi.Application.Interfaces;
using  ProductApi.Core.Entities.Enumerators;
using  ProductApi.Core.Models;
using  ProductApi.Infra.Data.Interfaces;

namespace Product.Application.Services
{
    internal class RegisterVehicleDoorService(IMapper mapper, IRegisterVehicleDoorRepository repository)
        : IRegisterVehicleDoorService
    {
        private readonly IMapper _mapper = mapper;
        private readonly IRegisterVehicleDoorRepository _repository = repository;

        public async Task<IEnumerable<RegisterVehicleDoorModel>?> GetAllAsync(RecordStatusEnum recordStatus)
        {
            var entity = await _repository.GetAllAsync(recordStatus);
            if (entity == null) return null;

            return _mapper.Map<IEnumerable<RegisterVehicleDoorModel>>(entity);
        }
    }
}
