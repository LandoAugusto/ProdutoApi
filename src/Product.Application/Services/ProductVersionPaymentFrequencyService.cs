using AutoMapper;
using Product.Application.Interfaces;
using Product.Core.Entities;
using Product.Core.Entities.Enumerators;
using Product.Core.Extensions;
using Product.Core.Models;
using Product.Infra.Data.Interfaces;

namespace Product.Application.Services
{
    internal class ProductVersionPaymentFrequencyService(IMapper mapper, IProductVersionPaymentFrequencyRepository _productVersionPaymentFrequencyRepository) : IProductVersionPaymentFrequencyService
    {
        private readonly IMapper _mapper = mapper;   
        private readonly IProductVersionPaymentFrequencyRepository _productVersionPaymentFrequencyRepository = _productVersionPaymentFrequencyRepository;


        public async Task<ProductVersionPaymentFrequencyModel> ListAsync(int productVersionId, RecordStatusEnum recordStatus)
        {
            var entidade = await _productVersionPaymentFrequencyRepository.ListAsync(productVersionId, recordStatus);
            if (!entidade.IsAny<ProductVersionPaymentFrequency>()) return null;

            var response = new ProductVersionPaymentFrequencyModel()
            {
                ProductVersionId = productVersionId,
            };

            foreach (var item in entidade)
                response.PaymentFrequency.Add(_mapper.Map<PaymentFrequencyModel>(item.PaymentFrequency));

            return response;
        }
    }
}
