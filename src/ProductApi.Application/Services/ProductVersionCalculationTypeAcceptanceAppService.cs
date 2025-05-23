using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;
using ProductApi.Infra.Data.Interfaces;

namespace ProductApi.Application.Services
{
    internal class ProductVersionCalculationTypeAcceptanceAppService(IMapper mapper, IProductVersionCalculationTypeAcceptanceRepository productVersionCalculationTypeAcceptanceRepository,
        IProductVersionCalculationTypeRepository productVersionCalculationTypeRepository)
        : IProductVersionCalculationTypeAcceptanceAppService
    {
        private readonly IMapper _mapper = mapper;
        private readonly IProductVersionCalculationTypeRepository _productVersionCalculationTypeRepository = productVersionCalculationTypeRepository;
        private readonly IProductVersionCalculationTypeAcceptanceRepository _productVersionCalculationTypeAcceptanceRepository = productVersionCalculationTypeAcceptanceRepository;

        public async Task<CalculationTypeAcceptanceModel?> GetAsync(int productVersionId, int profileId, int calculationTypeId, RecordStatusEnum recordStatus)
        {
            var entiadd = await _productVersionCalculationTypeRepository.GetAsync(productVersionId, profileId, calculationTypeId, recordStatus);
            if (entiadd == null) return null;

            var item = await _productVersionCalculationTypeAcceptanceRepository.GetAsync(entiadd.ProductVersionCalculationTypeId, recordStatus);
            if (item == null) return null;

            return _mapper.Map<CalculationTypeAcceptanceModel>(item);
        }
    }
}
