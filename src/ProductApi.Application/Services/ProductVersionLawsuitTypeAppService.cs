using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Entities;
using ProductApi.Core.Models;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Core.Extensions;

namespace ProductApi.Application.Services
{
    internal class ProductVersionLawsuitTypeAppService(IMapper mapper, IProductVersionLawsuitTypeRepository productVersionLawsuitTypeRepository) : IProductVersionLawsuitTypeAppService
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
