using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Extensions;
using ProductApi.Core.Models;
using ProductApi.Infra.Data.Interfaces;

namespace ProductApi.Application.Services
{
    internal class ProductVersionClauseService(IMapper mapper, IProductVersionClauseRepository productVersionClauseRepository) : IProductVersionClauseService
    {
        private readonly IMapper _mapper = mapper;        
        private readonly IProductVersionClauseRepository _productVersionClauseRepository = productVersionClauseRepository;

        public async Task<IEnumerable<ProductVersionClauseModel>?> ListAsync(int productVersionId, decimal insuredAmountValue, RecordStatusEnum recordStatus)
        {
            var entidade = await _productVersionClauseRepository.ListAsync(productVersionId, insuredAmountValue, recordStatus);
            if (!entidade.IsAny<ProductVersionClause>()) return null;

            return _mapper.Map<IEnumerable<ProductVersionClauseModel>>(entidade);
        }
    }
}
        