using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProductApi.Infra.Data.Repositories
{
    internal class PropertyStructureRepository(ProductDbContext context) : DomainRepository<PropertyStructure>(context), IPropertyStructureRepository
    {
        public async Task<IEnumerable<PropertyStructure>?> GetAllAsync(RecordStatusEnum recordStatus)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => filtr.Status.Equals((int)recordStatus)),
                            orderBy: item => item.OrderBy(y => y.PropertyStructureId)));

            return query.AsEnumerable();
        }
    }
}
