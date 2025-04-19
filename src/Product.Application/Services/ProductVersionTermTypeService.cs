using AutoMapper;
using Product.Application.Interfaces;
using Product.Core.Entities;
using Product.Core.Entities.Enumerators;
using Product.Core.Models;
using Product.Infra.Data.Interfaces;
using Product.Core.Extensions;


namespace Product.Application.Services
{
    internal class ProductVersionTermTypeService(IMapper mapper, IProductVersionTermTypeRepository productVersionTermTypeRepository) : IProductVersionTermTypeService
    {
        private readonly IMapper _mapper = mapper;
        private readonly IProductVersionTermTypeRepository _productVersionTermTypeRepository = productVersionTermTypeRepository;

        public async Task<IEnumerable<ProductVersionTermTypeModel>?> ListAsync(int productVersionId, RecordStatusEnum recordStatus)
        {
            var entidade = await _productVersionTermTypeRepository.ListAsync(productVersionId, recordStatus);
            if (!entidade.IsAny<ProductVersionTermType>()) return null;

            return _mapper.Map<IEnumerable<ProductVersionTermTypeModel>>(entidade);
        }
    }
}
