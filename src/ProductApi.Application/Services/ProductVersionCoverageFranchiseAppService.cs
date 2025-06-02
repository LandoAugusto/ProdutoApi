using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;
using ProductApi.Infra.Data.Interfaces;

namespace ProductApi.Application.Services
{
    internal class ProductVersionCoverageFranchiseAppService(IMapper mapper, IProductVersionCoverageFranchiseRepository productVersionCoverageFranchiseRepository) :
        IProductVersionCoverageFranchiseAppService
    {
        private readonly IMapper _mapper = mapper;
        private readonly IProductVersionCoverageFranchiseRepository _productVersionCoverageFranchiseRepository = productVersionCoverageFranchiseRepository;
        public async Task<IEnumerable<FranchiseModel>?> GetAsync(int productVersionId, int coverageId, RecordStatusEnum recordStatus)
        {
            var entity = await _productVersionCoverageFranchiseRepository.GetAsync(productVersionId, coverageId, recordStatus);
            return [.. entity.ToList().Select(item =>
            {
                return _mapper.Map<FranchiseModel>(item.Franchise);
            })];

        }
    }
}
