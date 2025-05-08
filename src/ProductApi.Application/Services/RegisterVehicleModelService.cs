using AutoMapper;
using Product.Application.Interfaces;
using  ProductApi.Core.Entities.Enumerators;
using  ProductApi.Core.Models;
using  ProductApi.Infra.Data.Interfaces;

namespace Product.Application.Services
{
    internal class RegisterVehicleModelService(IMapper mapper, IRegisterVehicleModelRepository repository)
        : IRegisterVehicleModelService
    {
        private readonly IMapper _mapper = mapper;
        private readonly IRegisterVehicleModelRepository _repository = repository;

        public async Task<IEnumerable<RegisterVehicleModelModel>?> GetAllAsync(RecordStatusEnum recordStatus)
        {
            var entity = await _repository.GetAllAsync(recordStatus);
            if (entity == null) return null;

            return _mapper.Map<IEnumerable<RegisterVehicleModelModel>>(entity);
        }
    }
}
