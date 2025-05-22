using ProductApi.Core.Entities;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface ILegalRecourseTypeParameterRepository : IDomainRepository<LegalRecourseTypeParameter>
    {
        Task<LegalRecourseTypeParameter?> GetByLegalRecourseTypeIdAsync(int legalRecourseTypeId);
    }
}
