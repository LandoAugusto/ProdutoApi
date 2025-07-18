using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Extensions;
using ProductApi.Core.Models;
using ProductApi.Infra.Data.Interfaces;

namespace ProductApi.Application.Services
{
    internal class ProductVersionPlanUsePropertyAppService(IMapper mapper, IProductVersionPlanUsePropertyRepository productVersionPlanUsePropertyRepository)
        : IProductVersionPlanUsePropertyAppService
    {
        private readonly IMapper _mapper = mapper;
        private readonly IProductVersionPlanUsePropertyRepository _productVersionPlanUsePropertyRepository = productVersionPlanUsePropertyRepository;

        public async Task<IEnumerable<PlanModel>> GetAsync(int productVersionId, int useTypeId, int propertyStructureId, RecordStatusEnum recordStatus)
        {
            var entity = await _productVersionPlanUsePropertyRepository.GetAsync(productVersionId, useTypeId, propertyStructureId, recordStatus);

            if (!entity.IsAny<ProductVersionPlanUseProperty>()) return null;

            return [.. entity.ToList().Select(item =>
            {
                return _mapper.Map<PlanModel>(item.ProductVersionPlan.Plan);
            })];
        }
    }
}
