using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;
using ProductApi.Infra.Data.Interfaces;

namespace ProductApi.Application.Services
{
    internal class ProductVersionAcceptanceAppService(IMapper mapper, IProductVersionRepository productVersionRepository, IProductVersionAcceptanceRepository productVersionAcceptanceRepository)
        : IProductVersionAcceptanceAppService
    {
        private readonly IMapper _mapper = mapper;
        private readonly IProductVersionRepository _productVersionRepository = productVersionRepository;
        private readonly IProductVersionAcceptanceRepository _productVersionAcceptanceRepository = productVersionAcceptanceRepository;

        public async Task<ProductVersionAcceptanceModel?> GetAsync(int productId, int profileId, RecordStatusEnum recordStatus)
        {
            var entidade = await _productVersionRepository.GetAsync(productId, profileId, recordStatus);
            if (entidade == null) return null;

            return _mapper.Map<ProductVersionAcceptanceModel>(await _productVersionAcceptanceRepository.GetAsync(entidade.ProductVersionId, profileId, recordStatus));
        }
    }
}
