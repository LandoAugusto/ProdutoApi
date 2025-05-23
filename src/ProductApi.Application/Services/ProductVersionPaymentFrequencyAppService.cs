﻿using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Extensions;
using ProductApi.Core.Models;
using ProductApi.Infra.Data.Interfaces;

namespace ProductApi.Application.Services
{
    internal class ProductVersionPaymentFrequencyAppService(IMapper mapper, IProductVersionPaymentFrequencyRepository _productVersionPaymentFrequencyRepository) : IProductVersionPaymentFrequencyAppService
    {
        private readonly IMapper _mapper = mapper;
        private readonly IProductVersionPaymentFrequencyRepository _productVersionPaymentFrequencyRepository = _productVersionPaymentFrequencyRepository;

        public async Task<IEnumerable<PaymentFrequencyModel>> ListAsync(int productVersionId, RecordStatusEnum recordStatus)
        {
            var entidade = await _productVersionPaymentFrequencyRepository.ListAsync(productVersionId, recordStatus);
            if (!entidade.IsAny<ProductVersionPaymentFrequency>()) return null;

            return [.. entidade.ToList().Select(item =>
            {
                return _mapper.Map<PaymentFrequencyModel>(item?.PaymentFrequency);
            })];
        }
    }
}
