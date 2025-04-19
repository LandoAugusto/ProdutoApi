using Product.Core.Entities;
using Product.Infra.Data.Repositories.Standard.Interfaces;

namespace Product.Infra.Data.Interfaces
{
    public interface IProductVersionPaymentInstallmentRepository : IDomainRepository<ProductVersionPaymentInstallment>
    {
        Task<IEnumerable<ProductVersionPaymentInstallment>?> ListAsync(int productVersionPaymentMethodId);
    }
}
