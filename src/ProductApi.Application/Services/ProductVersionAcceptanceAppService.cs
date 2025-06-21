using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;
using ProductApi.Infra.Data.Interfaces;

namespace ProductApi.Application.Services
{
    internal class ProductVersionAcceptanceAppService(IMapper mapper, IProductVersionAcceptanceRepository productVersionAcceptanceRepository)
        : IProductVersionAcceptanceAppService
    {
        private readonly IMapper _mapper = mapper;
        private readonly IProductVersionAcceptanceRepository _productVersionAcceptanceRepository = productVersionAcceptanceRepository;

        public async Task<ProductVersionAcceptanceModel?> GetAsync(int productVersionId, int profileId, RecordStatusEnum recordStatus)
        {
            var productVersionAcceptance = await _productVersionAcceptanceRepository.GetAsync(productVersionId, profileId, recordStatus);
            if (productVersionAcceptance == null) return null;

            var response = _mapper.Map<ProductVersionAcceptanceModel>(productVersionAcceptance);

            response.Name = productVersionAcceptance.ProductVersion.Product?.Name ?? string.Empty;
             response.InsuranceBranch = productVersionAcceptance.ProductVersion.Product?.InsuranceBranch.Name ?? string.Empty;

            return response;
        }
    }
}
