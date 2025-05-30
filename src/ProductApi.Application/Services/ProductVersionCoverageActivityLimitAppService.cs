using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;
using ProductApi.Infra.Data.Interfaces;

namespace ProductApi.Application.Services
{
    internal class ProductVersionCoverageActivityLimitAppService(IMapper mapper, IProductVersionCoverageActivityLimitRepository productVersionCoverageActivityLimitRepository) : 
        IProductVersionCoverageActivityLimitAppService
    {
        private readonly IMapper _mapper = mapper;
        private readonly IProductVersionCoverageActivityLimitRepository _productVersionCoverageActivityLimitRepository = productVersionCoverageActivityLimitRepository;


        public async  Task<ProductVersionCoverageActivityLimitModel?> GetAsync(int productVersionId, int coverageId, int activityId, int profileId, RecordStatusEnum recordStatus)
        {
            var entity = await _productVersionCoverageActivityLimitRepository.GetAsync(productVersionId, coverageId, activityId, profileId, recordStatus);
            if (entity == null) return null;

            return _mapper.Map<ProductVersionCoverageActivityLimitModel>(entity);
        }
    }
}
