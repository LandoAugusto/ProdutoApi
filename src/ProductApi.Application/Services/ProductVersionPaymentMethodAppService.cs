using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Extensions;
using ProductApi.Core.Models;
using ProductApi.Infra.Data.Interfaces;

namespace ProductApi.Application.Services
{
    internal class ProductVersionPaymentMethodAppService(IMapper mapper, IProductVersionPaymentMethodRepository productVersionPaymentMethodRepository) : IProductVersionPaymentMethodAppService
    {
        private readonly IMapper _mapper = mapper;
        private readonly IProductVersionPaymentMethodRepository _productVersionPaymentMethodRepository = productVersionPaymentMethodRepository;

        public async Task<IEnumerable<PaymentMethodModel>> ListAsync(int productVersionId, RecordStatusEnum recordStatus)
        {
            var entidade = await _productVersionPaymentMethodRepository.ListAsync(productVersionId, recordStatus);
            if (!entidade.IsAny<ProductVersionPaymentMethod>()) return null;

            return [.. entidade.ToList().Select(item =>
            {
                return _mapper.Map<PaymentMethodModel>(item?.PaymentMethod);
            })];
        }
    }
}
