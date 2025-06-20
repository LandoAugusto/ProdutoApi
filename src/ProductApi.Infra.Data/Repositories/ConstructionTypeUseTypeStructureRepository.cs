﻿using Microsoft.EntityFrameworkCore;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories.Standard;

namespace ProductApi.Infra.Data.Repositories
{
    internal class ConstructionTypeUseTypeStructureRepository(ProductDbContext context) : DomainRepository<ConstructionTypeUseTypeStructure>(context),
        IConstructionTypeUseTypeStructureRepository
    {
        public async Task<IEnumerable<ConstructionTypeUseTypeStructure>?> GetAsync(int constructionTypeId, int useTypeId, int profileId, RecordStatusEnum recordStatus)
        {
            var query =
                    await Task.FromResult(
                        GenerateQuery(
                            filter: (filtr => filtr.ConstructionTypeUseType.ConstructionTypeId.Equals(constructionTypeId)
                            && filtr.ConstructionTypeUseType.ProfileId.Equals(profileId)
                            && filtr.ConstructionTypeUseType.UseTypeId.Equals(useTypeId)
                            && filtr.Status.Equals((int)recordStatus)),
                            includeProperties: source =>
                                    source
                                    .Include(item => item.PropertyStructure),
                            orderBy: item => item.OrderBy(y => y.ConstructionTypeUseTypeId)));

            return query.AsEnumerable();
        }
    }
}
