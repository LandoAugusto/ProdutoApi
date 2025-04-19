using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;
using ProductApi.Infra.Data.Interfaces;

namespace ProductApi.Application.Services
{
    internal class ProductVersionAcceptanceService(IMapper mapper, IProductVersionRepository productVersionRepository, IProductVersionAcceptanceRepository productVersionAcceptanceRepository)
        : IProductVersionAcceptanceService
    {
        private readonly IMapper _mapper = mapper;
        private readonly IProductVersionRepository _productVersionRepository = productVersionRepository;
        private readonly IProductVersionAcceptanceRepository _productVersionAcceptanceRepository = productVersionAcceptanceRepository;

        public async Task<ProductVersionAcceptanceModel?> GetAsync(int productId, int coverageId, int profileId, RecordStatusEnum recordStatus)
        {
            var entidade = await _productVersionRepository.GetAsync(productId, coverageId, recordStatus);
            if (entidade == null) return null;

            return _mapper.Map<ProductVersionAcceptanceModel>(await _productVersionAcceptanceRepository.GetAsync(entidade.ProductVersionId, profileId, recordStatus));
        }
    }
}
