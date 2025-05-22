using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models.Product;
using ProductApi.Infra.Data.Interfaces;

namespace ProductApi.Application.Services
{
    internal class ProductVersionInsuredObjectAppService(IMapper mapper, IProductVersionInsuredObjectRepository productVersionInsuredObjectRepository) : IProductVersionInsuredObjectAppService
    {
        private readonly IMapper _mapper = mapper;
        private readonly IProductVersionInsuredObjectRepository _productVersionInsuredObjectRepository = productVersionInsuredObjectRepository;

        public async Task<InsuredObjectModel?> GetAsync(int productVersionCoverageId, RecordStatusEnum recordStatus)
        {
            var entidade = await _productVersionInsuredObjectRepository.GetAsync(productVersionCoverageId, recordStatus);
            if (entidade == null) return null;

            return _mapper.Map<InsuredObjectModel>(entidade.InsuredObject);
        }
    }
}
