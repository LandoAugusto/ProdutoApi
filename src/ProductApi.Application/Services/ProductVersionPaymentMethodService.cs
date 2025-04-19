using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Extensions;
using ProductApi.Core.Models;
using ProductApi.Infra.Data.Interfaces;

namespace ProductApi.Application.Services
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
