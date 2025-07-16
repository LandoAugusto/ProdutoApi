using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface IQuestionResponseRepository : IDomainRepository<QuestionResponse>
    {
        Task<IEnumerable<QuestionResponse>?> GetAsync(int questionId, RecordStatusEnum recordStatus);
    }
}
