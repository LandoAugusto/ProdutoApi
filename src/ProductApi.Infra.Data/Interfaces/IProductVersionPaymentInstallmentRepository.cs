using ProductApi.Core.Entities;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface IProductVersionPaymentInstallmentRepository : IDomainRepository<ProductVersionPaymentInstallment>
    {
        Task<IEnumerable<ProductVersionPaymentInstallment>?> ListAsync(int productVersionPaymentMethodId);
    }
}
