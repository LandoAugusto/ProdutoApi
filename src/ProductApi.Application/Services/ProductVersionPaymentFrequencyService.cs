using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Extensions;
using ProductApi.Core.Models;
using ProductApi.Infra.Data.Interfaces;

namespace ProductApi.Application.Services
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
