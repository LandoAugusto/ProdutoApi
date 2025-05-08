using AutoMapper;
using Product.Application.Interfaces;
using  ProductApi.Core.Entities.Enumerators;
using  ProductApi.Core.Models;
using  ProductApi.Infra.Data.Interfaces;

namespace Product.Application.Services
{
    internal class RegisterVehicleTypeService(IMapper mapper, IRegisterVehicleTypeRepository repository)
        : IRegisterVehicleTypeService
    {
        private readonly IMapper _mapper = mapper;
        private readonly IRegisterVehicleTypeRepository _repository = repository;

        public async Task<IEnumerable<RegisterVehicleTypeModel>?> GetAllAsync(RecordStatusEnum recordStatus)
        {
            var entity = await _repository.GetAllAsync(recordStatus);
            if (entity == null) return null;

            return _mapper.Map<IEnumerable<RegisterVehicleTypeModel>>(entity);
        }
    }
}
