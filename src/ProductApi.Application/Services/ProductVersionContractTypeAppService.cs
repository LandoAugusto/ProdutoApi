using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Extensions;
using ProductApi.Core.Models;
using ProductApi.Infra.Data.Interfaces;

namespace ProductApi.Application.Services
{
    internal class ProductVersionContractTypeAppService(IMapper mapper, IProductVersionContractTypeRepository productVersionContractTypeRepository) 
        : IProductVersionContractTypeAppService
    {
        private readonly IMapper _mapper = mapper;
        private readonly IProductVersionContractTypeRepository _productVersionContractTypeRepository = productVersionContractTypeRepository;

        public async Task<IEnumerable<ContractTypeModel>?> GetAsync(int productVersionId, RecordStatusEnum recordStatus)
        {
            var entity = await _productVersionContractTypeRepository.GetProductVersionContractTypeAsync(productVersionId, recordStatus);
            if (!entity.IsAny<ProductVersionContractType>()) return null;

            return [.. entity.ToList().Select(item =>
            {
                return _mapper.Map<ContractTypeModel>(item.ContractType);
            })];            
        }
    }
}
