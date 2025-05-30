using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Extensions;
using ProductApi.Core.Models;
using ProductApi.Infra.Data.Interfaces;

namespace ProductApi.Application.Services
{
    internal class ProductVersionPlanCoverageAppService(IMapper mapper, IProductVersionPlanCoverageRepository productVersionPlanCoverageRepository)
        : IProductVersionPlanCoverageAppService
    {
        private readonly IMapper _mapper = mapper;
        private readonly IProductVersionPlanCoverageRepository _productVersionPlanCoverageRepository = productVersionPlanCoverageRepository;

        public async Task<IEnumerable<CoverageModel>?> ListAsync(int productVersionId, int planId,  RecordStatusEnum recordStatus)
        {
            var entity  = await _productVersionPlanCoverageRepository.ListAsync(productVersionId, planId, recordStatus);
            if (!entity.IsAny<ProductVersionPlanCoverage>()) return null;

            return [.. entity.ToList().Select(item =>
            {
                return _mapper.Map<CoverageModel>(item.ProductVersionCoverage.Coverage);
            })];
        }
    }
}
