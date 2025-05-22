using Microsoft.EntityFrameworkCore;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;

namespace ProductApi.Infra.Data.Repositories
{
    internal class ProductVersionContractTypeRepository(ProductDbContext context) : DomainRepository<ProductVersionContractType>(context), IProductVersionContractTypeRepository
    {
        public async Task<IEnumerable<ProductVersionContractType>?> GetProductVersionContractTypeAsync(int productVersionId, RecordStatusEnum recordStatus)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => filtr.ProductVersionId.Equals(productVersionId)
                            && filtr.Status.Equals((int)recordStatus)),
                            includeProperties: source =>
                                    source
                                    .Include(item => item.ContractType),
                            orderBy: item => item.OrderBy(y => y.ProductVersionContractTypeId)));

            return query.AsEnumerable();
        }
    }
}
