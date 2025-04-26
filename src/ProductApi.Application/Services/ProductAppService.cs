using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Extensions;
using ProductApi.Core.Model;
using ProductApi.Infra.Data.Interfaces;

namespace ProductApi.Application.Services
{
    internal class ProductAppService(IMapper mapper, IProductRepository productRepository) : IProductAppService
    {
        private readonly IMapper _mapper = mapper;
        private readonly IProductRepository _productRepository = productRepository;

        public async Task<IEnumerable<ProductModel>?> GetAllAsync(RecordStatusEnum recordStatus)
        {
            var entidade = await _productRepository.GetAllAsync(recordStatus);
            if (!entidade.IsAny<Core.Entities.Product>()) return null;

            return _mapper.Map<IEnumerable<ProductModel>>(entidade);
        }
    }
}

