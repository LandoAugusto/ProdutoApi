﻿using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Extensions;
using ProductApi.Core.Models;
using ProductApi.Infra.Data.Interfaces;

namespace ProductApi.Application.Services
{
    internal class ProductAppService(IMapper mapper, IProductRepository productRepository) : IProductAppService
    {
        private readonly IMapper _mapper = mapper;
        private readonly IProductRepository _productRepository = productRepository;

        public async Task<IEnumerable<ProductModel>?> ListAsync(RecordStatusEnum recordStatus)
        {
            var entity = await _productRepository.ListAsync(recordStatus);
            if (!entity.IsAny<Core.Entities.Product>()) return null;

            return _mapper.Map<IEnumerable<ProductModel>>(entity);
        }

        public async Task<IEnumerable<ProductModel>?> ListBranchAsync(int insurancebranchId, RecordStatusEnum recordStatus)
        {
            var entity = await _productRepository.ListBranchAsync(insurancebranchId, recordStatus);
            if (!entity.IsAny<Core.Entities.Product>()) return null;

            return _mapper.Map<IEnumerable<ProductModel>>(entity);
        }
    }
}

