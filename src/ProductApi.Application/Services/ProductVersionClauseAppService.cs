using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Extensions;
using ProductApi.Core.Models;
using ProductApi.Infra.Data.Interfaces;

namespace ProductApi.Application.Services
{
    internal class ProductVersionClauseAppService(IMapper mapper, IProductVersionClauseRepository productVersionClauseRepository) : IProductVersionClauseAppService
    {
        private readonly IMapper _mapper = mapper;        
        private readonly IProductVersionClauseRepository _productVersionClauseRepository = productVersionClauseRepository;

        public async Task<IEnumerable<ProductVersionClauseModel>?> ListAsync(int productVersionId, decimal insuredAmountValue, RecordStatusEnum recordStatus)
        {
            var entity = await _productVersionClauseRepository.ListAsync(productVersionId, insuredAmountValue, recordStatus);
            if (!entity.IsAny<ProductVersionClause>()) return null;

            return _mapper.Map<IEnumerable<ProductVersionClauseModel>>(entity);
        }
    }
}
        