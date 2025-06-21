using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;
using ProductApi.Infra.Data.Interfaces;

namespace ProductApi.Application.Services
{
    internal class ProductVersionAppService(IMapper mapper, IProductVersionRepository productVersionRepository)
        : IProductVersionAppService
    {
        private readonly IMapper _mapper = mapper;
        private readonly IProductVersionRepository _productVersionRepository = productVersionRepository;

        public async Task<ProductVersionModel?> GetAsync(int productId, RecordStatusEnum recordStatus)
        {
            var entity = await _productVersionRepository.GetAsync(productId, recordStatus);
            if (entity == null) return null;

            return _mapper.Map<ProductVersionModel>(entity);
        }
    }
}
