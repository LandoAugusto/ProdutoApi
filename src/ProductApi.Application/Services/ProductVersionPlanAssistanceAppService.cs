using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Extensions;
using ProductApi.Core.Models;
using ProductApi.Infra.Data.Interfaces;

namespace ProductApi.Application.Services
{
    internal class ProductVersionPlanAssistanceAppService(IMapper mapper, IProductVersionPlanAssistanceRepository productVersionPlanAssistanceRepository)
        : IProductVersionPlanAssistanceAppService
    {
        private readonly IMapper _mapper = mapper;
        private readonly IProductVersionPlanAssistanceRepository _productVersionPlanAssistanceRepository = productVersionPlanAssistanceRepository;

        public async Task<IEnumerable<AssistanceModel>?> GetAsync(int productVersionId, int planId, RecordStatusEnum recordStatus)
        {
            var entity = await _productVersionPlanAssistanceRepository.GetAsync(productVersionId, planId, recordStatus);
            if (!entity.IsAny<ProductVersionPlanAssistance>()) return null;

            return [.. entity.ToList().Select(item =>
            {
                return _mapper.Map<AssistanceModel>(item.Assistance);
            })];
        }
    }
}
