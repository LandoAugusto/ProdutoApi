using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Extensions;
using ProductApi.Core.Models;
using ProductApi.Infra.Data.Interfaces;

namespace ProductApi.Application.Services
{
    internal class ProductVersionPlanActivityAppService(IMapper mapper, IProductVersionPlanActivityRepository productVersionPlanActivityRepository) :
        IProductVersionPlanActivityAppService
    {
        private readonly IMapper _mapper = mapper;
        private readonly IProductVersionPlanActivityRepository _productVersionPlanActivityRepository = productVersionPlanActivityRepository;

        public async Task<IEnumerable<PlanModel>?> ListAsync(int productVersionId, int activityId, RecordStatusEnum recordStatus)
        {
            var entity = await _productVersionPlanActivityRepository.ListAsync(productVersionId, activityId, recordStatus);
            if (!entity.IsAny<ProductVersionPlanActivity>()) return null;

            return [.. entity.ToList().Select(item =>
            {
                return _mapper.Map<PlanModel>(item.ProductVersionPlan.Plan);
            })];
          
        }
    }
}
