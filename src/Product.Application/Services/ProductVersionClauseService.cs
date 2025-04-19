using AutoMapper;
using Product.Application.Interfaces;
using Product.Core.Entities;
using Product.Core.Entities.Enumerators;
using Product.Core.Extensions;
using Product.Core.Models;
using Product.Infra.Data.Interfaces;

namespace Product.Application.Services
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
        