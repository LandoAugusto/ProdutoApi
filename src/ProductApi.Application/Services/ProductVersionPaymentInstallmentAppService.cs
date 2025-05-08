using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Extensions;
using ProductApi.Core.Models.Product;
using ProductApi.Infra.Data.Interfaces;

namespace ProductApi.Application.Services
{
    internal class ProductVersionPaymentInstallmentAppService(IMapper mapper, IProductVersionPaymentInstallmentRepository productVersionPaymentInstallmentRepository,
        IProductVersionPaymentMethodRepository productVersionPaymentMethodRepository) : IProductVersionPaymentInstallmentAppService
    {
        private readonly IMapper _mapper = mapper;
        private readonly IProductVersionPaymentMethodRepository _productVersionPaymentMethodRepository = productVersionPaymentMethodRepository;
        private readonly IProductVersionPaymentInstallmentRepository _productVersionPaymentInstallmentRepository = productVersionPaymentInstallmentRepository;

        public async Task<IEnumerable<PaymentInstallmentModel?>> ListAsync(int productVersionId, int paymentMethodId)
        {
            var paymentMethod = await _productVersionPaymentMethodRepository.GetAsync(productVersionId, paymentMethodId, RecordStatusEnum.Active);
            var entidade = await _productVersionPaymentInstallmentRepository.ListAsync(paymentMethod.ProductVersionPaymentMethodId);
            if (!entidade.IsAny<ProductVersionPaymentInstallment>()) return null;

            return [.. entidade.ToList().Select(item =>
            {
                return _mapper.Map<PaymentInstallmentModel>(item?.PaymentInstallment);
            })];
        }
    }
}
