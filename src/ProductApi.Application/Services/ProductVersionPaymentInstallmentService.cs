using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities;
using ProductApi.Core.Extensions;
using ProductApi.Core.Models.Product;
using ProductApi.Infra.Data.Interfaces;

namespace ProductApi.Application.Services
{
    internal class ProductVersionPaymentInstallmentService(IMapper mapper, IProductVersionPaymentInstallmentRepository productVersionPaymentInstallmentRepository) : IProductVersionPaymentInstallmentService
    {
        private readonly IMapper _mapper = mapper;
        private readonly IProductVersionPaymentInstallmentRepository _productVersionPaymentInstallmentRepository = productVersionPaymentInstallmentRepository;

        public async Task<IEnumerable<PaymentInstallmentModel?>> ListAsync(int productVersionPaymentMethodId)
        {
            var entidade = await _productVersionPaymentInstallmentRepository.ListAsync(productVersionPaymentMethodId);

            if (!entidade.IsAny<ProductVersionPaymentInstallment>()) return null;

            return [.. entidade.ToList().Select(item =>
            {
                return _mapper.Map<PaymentInstallmentModel>(item?.PaymentInstallment);
            })];
        }
    }
}
