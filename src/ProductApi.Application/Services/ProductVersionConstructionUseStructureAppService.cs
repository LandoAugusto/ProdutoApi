using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Extensions;
using ProductApi.Core.Models;
using ProductApi.Infra.Data.Interfaces;

namespace ProductApi.Application.Services
{
    internal class ProductVersionConstructionUseStructureAppService(IMapper mapper, IProductVersionConstructionUseStructureRepository productVersionConstructionUseStructureRepository)
        : IProductVersionConstructionUseStructureAppService
    {
        private readonly IMapper _mapper = mapper;        
        private readonly IProductVersionConstructionUseStructureRepository _productVersionConstructionUseStructureRepository = productVersionConstructionUseStructureRepository;

        public async Task<IEnumerable<PropertyStructureModel>?> GetAsync(int productVersionId, int constructionTypeId, int useTypeId, int profileId, RecordStatusEnum recordStatus)
        {
            var entity = await _productVersionConstructionUseStructureRepository.GetAsync(productVersionId, constructionTypeId, useTypeId, profileId, recordStatus);
            if (!entity.IsAny<ProductVersionConstructionUseStructure>()) return null;

            return [.. entity.ToList().Select(item =>
            {
                return _mapper.Map<PropertyStructureModel>(item.PropertyStructure);
            })];
        }
    }
}
