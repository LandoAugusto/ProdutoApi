using Product.Core.Entities;
using Product.Core.Entities.Enumerators;
using Product.Infra.Data.Contexts;
using Product.Infra.Data.Interfaces;
using Product.Infra.Data.Repositories.Standard;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;

namespace Product.Infra.Data.Repositories
{
    internal class ProductVersionLawsuitTypeRepository(ProductDbContext context) : DomainRepository<ProductVersionLawsuitType>(context), IProductVersionLawsuitTypeRepository
    {

        public async Task<IEnumerable<ProductVersionLawsuitType>?> ListAsync(int productVersionId, RecordStatusEnum recordStatus)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => filtr.ProductVersionId.Equals(productVersionId) && filtr.Status.Equals((int)recordStatus)),
                            includeProperties: source =>
                                    source
                                    .Include(item => item.ProductVersion)
                                    .Include(item => item.LawsuitType),
                            orderBy: item => item.OrderBy(y => y.ProductVersionLawsuitTypeId)));

            return query.AsEnumerable();
        }
    }
}
