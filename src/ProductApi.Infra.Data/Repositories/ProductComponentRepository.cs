using Microsoft.EntityFrameworkCore;
using ProductApi.Core.Entities;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;

namespace ProductApi.Infra.Data.Repositories
{
    internal class ProductComponentRepository(ProductDbContext context) : DomainRepository<ProductComponent>(context), IProductComponentRepository
    {
        public async Task<ProductComponent?> GetAsync(int code)
    {
        var query =
                await Task.FromResult(
                    GenerateQuery(
                        filter: (filtr => filtr.Code.Equals(code)),
                         includeProperties: source =>
                                source
                                .Include(item => item.ProductComponentScreen)
                                .ThenInclude(item => item.Component),
                        orderBy: item => item.OrderBy(y => y.Id)));

        return query.FirstOrDefault();
    }
}
}

