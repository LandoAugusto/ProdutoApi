using AutoMapper;
using Product.Application.Interfaces;
using  ProductApi.Core.Entities.Enumerators;
using  ProductApi.Core.Models;
using  ProductApi.Infra.Data.Interfaces;

namespace Product.Application.Services
{
    internal class RegisterVehicleBrandService(IMapper mapper, IRegisterVehicleBrandRepository repository)
        : IRegisterVehicleBrandService
    {
        private readonly IMapper _mapper = mapper;
        private readonly IRegisterVehicleBrandRepository _repository = repository;

        public async Task<IEnumerable<RegisterVehicleBrandModel>?> GetAllAsync(RecordStatusEnum recordStatus)
        {
            var entity = await _repository.GetAllAsync(recordStatus);
            if (entity == null) return null;

            return _mapper.Map<IEnumerable<RegisterVehicleBrandModel>>(entity);
        }
    }
}
