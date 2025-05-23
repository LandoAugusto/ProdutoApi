using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Extensions;
using ProductApi.Core.Models;
using ProductApi.Infra.Data.Interfaces;

namespace ProductApi.Application.Services
{
    internal class ProductVersionCalculationTypeAppService(IMapper mapper, IProductVersionCalculationTypeRepository productVersionCalculationTypeRepository) : IProductVersionCalculationTypeAppService
    {
        private readonly IMapper _mapper = mapper;
        private readonly IProductVersionCalculationTypeRepository _productVersionCalculationTypeRepository = productVersionCalculationTypeRepository;

        public async Task<IEnumerable<CalculationTypeModel>?> GetProductVersionCalculationTypeAsync(int productVersionId, int profileId, RecordStatusEnum recordStatus)
        {
            var entity = await _productVersionCalculationTypeRepository.ListAsync(productVersionId, profileId, recordStatus);
            if (!entity.IsAny<ProductVersionCalculationType>()) return null;

            return [.. entity.ToList().Select(item =>
            {
                return _mapper.Map<CalculationTypeModel>(item.CalculationType);
            })];
        }
    }
}
