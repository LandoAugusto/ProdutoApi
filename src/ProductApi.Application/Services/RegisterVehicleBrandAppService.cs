using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Extensions;
using ProductApi.Core.Models;
using ProductApi.Infra.Data.Interfaces;

namespace ProductApi.Application.Services
{
    internal class RegisterVehicleBrandAppService(IMapper mapper, IRegisterVehicleBrandRepository repository)
        : IRegisterVehicleBrandAppService
    {
        private readonly IMapper _mapper = mapper;
        private readonly IRegisterVehicleBrandRepository _repository = repository;       

        public async Task<IEnumerable<RegisterVehicleBrandModel>?> GetVehicleBrandAsync(string name, RecordStatusEnum recordStatus)
        {
            var entity = await _repository.GetSearchBrandAsync(name, recordStatus);
            if (!entity.IsAny<RegisterVehicleBrand>()) return null;

            return _mapper.Map<IEnumerable<RegisterVehicleBrandModel>>(entity);
        }
    }
}
 