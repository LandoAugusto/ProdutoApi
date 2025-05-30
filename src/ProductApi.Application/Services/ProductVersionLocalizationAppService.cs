using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Extensions;
using ProductApi.Core.Models;
using ProductApi.Infra.Data.Interfaces;

namespace ProductApi.Application.Services
{
    internal class ProductVersionLocalizationAppService(IMapper mapper, IProductVersionLocalizationRepository productVersionLocalizationRepository ) 
        : IProductVersionLocalizationAppService
    {
        private readonly IMapper _mapper = mapper;
        private readonly IProductVersionLocalizationRepository _productVersionLocalizationRepository = productVersionLocalizationRepository;
        public async Task<IEnumerable<LocalizationModel>?> ListAsync(int productVersionId, RecordStatusEnum recordStatus)
        {
            var entidade = await _productVersionLocalizationRepository.ListAsync(productVersionId, recordStatus);
            if (!entidade.IsAny<ProductVersionLocalization>()) return null;

            return [.. entidade.ToList().Select(item =>
            {
                return _mapper.Map<LocalizationModel>(item?.Localization);
            })];
        }
    }
}
