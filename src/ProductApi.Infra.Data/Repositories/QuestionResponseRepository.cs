using Microsoft.EntityFrameworkCore;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;

namespace ProductApi.Infra.Data.Repositories
{
    internal class QuestionResponseRepository(ProductDbContext context) : DomainRepository<QuestionResponse>(context),
        IQuestionResponseRepository
    {
        public async Task<IEnumerable<QuestionResponse>?> GetAsync(int questionId, RecordStatusEnum recordStatus)
        {
            var query = await Task.FromResult(
                GenerateQuery(
                    filter: (filtr => filtr.QuestionId.Equals(questionId)                    
                    && filtr.Status.Equals((int)recordStatus)),
                     includeProperties: source =>
                                    source
                                    .Include(item => item.Response),
                    orderBy: item => item.OrderBy(y => y.Order)));

            return query.AsEnumerable();
        }
    }
}
