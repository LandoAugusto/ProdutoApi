using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Extensions;
using ProductApi.Core.Models;
using ProductApi.Infra.Data.Interfaces;

namespace ProductApi.Application.Services
{
    internal class ProductVersionConstructionTypeAppService(IMapper mapper,IProductVersionConstructionTypeRepository productVersionConstructionTypeRepository)
        : IProductVersionConstructionTypeAppService
    {
        private readonly IMapper _mapper = mapper;
        private readonly IProductVersionConstructionTypeRepository _productVersionConstructionTypeRepository = productVersionConstructionTypeRepository;    
        public async Task<IEnumerable<ConstructionTypeModel>?> GetAsync(int productVersionId, RecordStatusEnum recordStatus)
        {
            var entidade = await _productVersionConstructionTypeRepository.GetAsync(productVersionId, recordStatus);
            if (!entidade.IsAny<ProductVersionConstructionType>()) return null;

            return [.. entidade.ToList().Select(item =>
            {
                return _mapper.Map<ConstructionTypeModel>(item.ConstructionType);
            })];
        }
    }
}
