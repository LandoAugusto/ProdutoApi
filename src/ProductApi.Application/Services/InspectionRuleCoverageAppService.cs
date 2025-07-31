using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;
using ProductApi.Infra.Data.Interfaces;

namespace ProductApi.Application.Services
{
    internal class InspectionRuleCoverageAppService(IMapper mapper, IInspectionRuleCoverageRepository inspectionRuleCoverageRepository)
        : IInspectionRuleCoverageAppService
    {
        private readonly IMapper _mapper = mapper;
        private readonly IInspectionRuleCoverageRepository _inspectionRuleCoverageRepository = inspectionRuleCoverageRepository;

        public async Task<InspectionRuleCoverageModel?> ListAsync(int productVersionId, int contractTypeId, int profileId, int activityId,
            int coverageId, RecordStatusEnum recordStatus)
        {
            var entity = await _inspectionRuleCoverageRepository.ListAsync(productVersionId, contractTypeId,
                profileId, activityId, coverageId, recordStatus);
            if (entity == null) return null;

            return _mapper.Map<InspectionRuleCoverageModel>(entity);
        }
    }
}
