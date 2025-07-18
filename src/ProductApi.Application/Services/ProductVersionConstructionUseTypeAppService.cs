using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Extensions;
using ProductApi.Core.Models;
using ProductApi.Infra.Data.Interfaces;

namespace ProductApi.Application.Services
{
    internal class ProductVersionConstructionUseTypeAppService(IMapper mapper, IProductVersionConstructionUseTypeRepository productVersionConstructionUseTypeRepository) :
        IProductVersionConstructionUseTypeAppService
    {
        private readonly IMapper _mapper = mapper;
        private readonly IProductVersionConstructionUseTypeRepository _productVersionConstructionUseTypeRepository = productVersionConstructionUseTypeRepository;
        public async Task<IEnumerable<UseTypeModel>?> GetAsync(int productVersionId, int constructionTypeId, int profileId, RecordStatusEnum recordStatus)
        {
            var entidade = await _productVersionConstructionUseTypeRepository.GetAsync(productVersionId, constructionTypeId, profileId, recordStatus);
            if (!entidade.IsAny<ProductVersionConstructionUseType>()) return null;

            return [.. entidade.ToList().Select(item =>
            {
                return _mapper.Map<UseTypeModel>(item.UseType);
            })];
        }
    }
}
