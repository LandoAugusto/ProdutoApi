using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities;
using ProductApi.Core.Extensions;
using ProductApi.Core.Models.Product;
using ProductApi.Infra.Data.Interfaces;

namespace ProductApi.Application.Services
{
    internal class ProductVersionPaymentInstallmentService(IMapper mapper, IProductVersionPaymentInstallmentRepository productVersionPaymentInstallmentRepository)  : IProductVersionPaymentInstallmentService
    {
        private readonly IMapper _mapper = mapper;
        private readonly IProductVersionPaymentInstallmentRepository _productVersionPaymentInstallmentRepository = productVersionPaymentInstallmentRepository;

        public async Task<ProductVersionPaymentInstallmentModel?> ListAsync(int productVersionPaymentMethodId)
        {
            var entidade = await _productVersionPaymentInstallmentRepository.ListAsync(productVersionPaymentMethodId);

            if (!entidade.IsAny<ProductVersionPaymentInstallment>()) return null;

            var response = new ProductVersionPaymentInstallmentModel()
            {
                ProductVersionPaymentMethodId = productVersionPaymentMethodId,
            };
            foreach (var item in entidade)
                response.PaymentInstallment.Add(_mapper.Map<PaymentInstallmentModel>(item.PaymentInstallment));

            return response;
        }
    }
}
