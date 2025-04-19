using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;

namespace ProductApi.Infra.Data.Repositories
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
