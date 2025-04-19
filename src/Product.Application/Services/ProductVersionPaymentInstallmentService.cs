using AutoMapper;
using Product.Application.Interfaces;
using Product.Core.Entities;
using Product.Core.Extensions;
using Product.Core.Models.Product;
using Product.Infra.Data.Interfaces;

namespace Product.Application.Services
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
