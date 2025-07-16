using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;
using ProductApi.Infra.Data.Interfaces;

namespace ProductApi.Application.Services
{
    internal class ProductVersionQuestionnaireAppService(IMapper mapper, IQuestionResponseRepository questionResponseRepository,
        IProductVersionQuestionnaireRepository productVersionQuestionnaireRepository)
        : IProductVersionQuestionnaireAppService
    {
        private readonly IMapper _mapper = mapper;
        private readonly IQuestionResponseRepository _questionResponseRepository = questionResponseRepository;
        private readonly IProductVersionQuestionnaireRepository _productVersionQuestionnaireRepository = productVersionQuestionnaireRepository;

        public async Task<IEnumerable<QuestionnaireModel>?> GetAsync(int productVersionId, RecordStatusEnum recordStatus)
        {
            var entity = await _productVersionQuestionnaireRepository.GetAsync(productVersionId, recordStatus);
            if (entity is null) return null;

            var questionnaire = entity.ToList().Select(item =>
            {
                return _mapper.Map<QuestionnaireModel>(item?.Question);
            }).ToList();

            foreach (var item in questionnaire)
            {
                if (item is null) continue;
                var questionResponse = await _questionResponseRepository.GetAsync(item.QuestionId, recordStatus);
                if (questionResponse is not null)
                {
                    var response = questionResponse.ToList().Select(item =>
                    {
                        return _mapper.Map<ResponseModel>(item?.Response);
                    }).ToList();

                    item?.Response?.AddRange(response);
                }
            }

            return questionnaire;
        }
    }
}
