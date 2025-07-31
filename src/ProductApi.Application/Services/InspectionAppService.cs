using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Extensions;
using ProductApi.Core.Models;
using ProductApi.Infra.Data.Interfaces;

namespace ProductApi.Application.Services
{
    internal class InspectionAppService(IMapper mapper, IInspectionReasonRepository inspectionReasonRepository) :
        IInspectionAppService
    {
        private readonly IMapper _mapper = mapper;
        private readonly IInspectionReasonRepository _inspectionReasonRepository = inspectionReasonRepository;

        public async Task<IEnumerable<InspectionReasonModel>?> ListReasoAsync(RecordStatusEnum recordStatus)
        {
            var entity = await _inspectionReasonRepository.ListAsync(recordStatus);
            if (!entity.IsAny<InspectionReason>()) return null;

            return _mapper.Map<IEnumerable<InspectionReasonModel>>(entity);
        }
    }
}
