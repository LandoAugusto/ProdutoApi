using AutoMapper;
using Product.Application.Interfaces;
using Product.Core.Entities;
using Product.Core.Entities.Enumerators;
using Product.Core.Extensions;
using Product.Core.Models;
using Product.Infra.Data.Interfaces;

namespace Product.Application.Services
{
    internal class ProductVersionPaymentMethodService(IMapper mapper, IProductVersionPaymentMethodRepository productVersionPaymentMethodRepository) : IProductVersionPaymentMethodService
    {
        private readonly IMapper _mapper = mapper;
        private readonly IProductVersionPaymentMethodRepository _productVersionPaymentMethodRepository = productVersionPaymentMethodRepository;

        public async Task<ProductVersionPaymentMethodModel?> ListAsync(int productVersionId, RecordStatusEnum recordStatus)
        {
            var entidade = await _productVersionPaymentMethodRepository.ListAsync(productVersionId, recordStatus);
            if (!entidade.IsAny<ProductVersionPaymentMethod>()) return null;

            var response = new ProductVersionPaymentMethodModel()
            {
                ProductVersionId = productVersionId,
            };

            foreach (var item in entidade)
                response.PaymentMethodModel.Add(_mapper.Map<PaymentMethodModel>(item.PaymentMethod));

            return response;
        }
    }
}
