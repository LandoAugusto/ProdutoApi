using AutoMapper;
using Product.Application.Interfaces;
using Product.Core.Entities.Enumerators;
using Product.Core.Extensions;
using Product.Core.Model;
using Product.Infra.Data.Interfaces;

namespace Product.Application.Services
{
    internal class ProductService(IMapper mapper, IProductRepository productRepository) : IProductService
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

