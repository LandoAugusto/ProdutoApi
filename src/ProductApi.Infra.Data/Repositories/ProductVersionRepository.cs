﻿using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;

namespace ProductApi.Infra.Data.Repositories
{
    internal class ProductVersionRepository(ProductDbContext context) : DomainRepository<ProductVersion>(context), IProductVersionRepository
    {
        public async Task<ProductVersion?> GetAsync(int productId,RecordStatusEnum recordStatus)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => filtr.ProductId.Equals(productId)  && filtr.Status.Equals((int)recordStatus)),                           
                            orderBy: item => item.OrderBy(y => y.ProductVersionId)));

            return query.FirstOrDefault();
        }
    }
}
