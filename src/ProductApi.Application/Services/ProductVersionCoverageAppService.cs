using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;
using ProductApi.Infra.Data.Interfaces;

namespace ProductApi.Application.Services
{
    internal class ProductVersionCoverageAppService(IMapper mapper, IProductVersionCoverageRepository productVersionCoverageRepository) : IProductVersionCoverageAppService
    {
        private readonly IMapper _mapper = mapper;
        private readonly IProductVersionCoverageRepository _productVersionCoverageRepository = productVersionCoverageRepository;

        public async Task<CoverageModel?> GetAsync(int productVersionId, int coverageId, RecordStatusEnum recordStatus)
        {
            var entidade = await _productVersionCoverageRepository.GetAsync(productVersionId, coverageId, recordStatus);
            if (entidade is null) return null;

            return _mapper.Map<CoverageModel>(entidade.Coverage);
        }
        public async Task<IEnumerable<CoverageModel>?> ListAsync(int productVersionId, RecordStatusEnum recordStatus)
        {
            var entidade = await _productVersionCoverageRepository.ListAsync(productVersionId, recordStatus);
            if (entidade is null) return null;

            return [.. entidade.ToList().Select(item =>
            {
                return _mapper.Map<CoverageModel>(item?.Coverage);
            })];
        }
    }
}
