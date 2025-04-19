using AutoMapper;
using Product.Application.Interfaces;
using Product.Core.Entities.Enumerators;
using Product.Core.Entities;
using Product.Core.Models;
using Product.Infra.Data.Interfaces;
using Product.Core.Extensions;

namespace Product.Application.Services
{
    internal class ProductVersionLawsuitTypeService(IMapper mapper, IProductVersionLawsuitTypeRepository productVersionLawsuitTypeRepository) : IProductVersionLawsuitTypeService
    {
        private readonly IMapper _mapper = mapper;
        private readonly IProductVersionLawsuitTypeRepository _productVersionLawsuitTypeRepository = productVersionLawsuitTypeRepository;

        public async Task<IEnumerable<ProductVersionLawsuitTypeModel>?> ListAsync(int productVersionId, RecordStatusEnum recordStatus)
        {
            var entidade = await _productVersionLawsuitTypeRepository.ListAsync(productVersionId, recordStatus);
            if (!entidade.IsAny<ProductVersionLawsuitType>()) return null;

            return _mapper.Map<IEnumerable<ProductVersionLawsuitTypeModel>>(entidade);
        }
    }
}
