using AutoMapper;
using Product.Application.Interfaces;
using  ProductApi.Core.Entities.Enumerators;
using  ProductApi.Core.Models;
using  ProductApi.Core.Extensions;
using  ProductApi.Infra.Data.Interfaces;
using  ProductApi.Core.Model;
using Nest;

namespace Product.Application.Services
{
    internal class RegisterVehicleAccessoryService(IMapper mapper, IRegisterVehicleAcessoryRepository repository)
        : IRegisterVehicleAccessoryService
    {
        private readonly IMapper _mapper = mapper;
        private readonly IRegisterVehicleAcessoryRepository _repository = repository;

        public async Task<IEnumerable<RegisterVehicleAccessoryModel>?> GetAllAsync(RecordStatusEnum recordStatus)
        {

            var entity = await _repository.GetAllAsync(recordStatus); ;
            if (entity == null) return null;

            return _mapper.Map<IEnumerable<RegisterVehicleAccessoryModel>>(entity);
        }

    }
}
