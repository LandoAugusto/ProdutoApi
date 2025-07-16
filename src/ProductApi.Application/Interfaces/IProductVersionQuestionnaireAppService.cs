using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;

namespace ProductApi.Application.Interfaces
{
    public interface IProductVersionQuestionnaireAppService
    {
        Task<IEnumerable<QuestionnaireModel>?> GetAsync(int productVersionId, RecordStatusEnum recordStatus);
    }
}
