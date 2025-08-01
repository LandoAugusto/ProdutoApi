﻿using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Core.Extensions;
using ProductApi.Core.Models;


namespace ProductApi.Application.Services
{
    internal class ProductVersionTermTypeAppService(IMapper mapper, IProductVersionTermTypeRepository productVersionTermTypeRepository)
        : IProductVersionTermTypeAppService
    {
        private readonly IMapper _mapper = mapper;
        private readonly IProductVersionTermTypeRepository _productVersionTermTypeRepository = productVersionTermTypeRepository;

        public async Task<IEnumerable<TermTypeModel>?> ListAsync(int productVersionId, RecordStatusEnum recordStatus)
        {
            var entity = await _productVersionTermTypeRepository.ListAsync(productVersionId, recordStatus);
            if (!entity.IsAny<ProductVersionTermType>()) return null;

            return [.. entity.ToList().Select(item =>
            {
                return _mapper.Map<TermTypeModel>(item.TermType);
            })];
        }
    }
}
