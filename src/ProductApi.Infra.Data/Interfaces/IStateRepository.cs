﻿using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Infra.Data.Repositories.Standard.Interfaces;

namespace ProductApi.Infra.Data.Interfaces
{
    public interface IStateRepository :IDomainRepository<State>
    {
        Task<IEnumerable<State>?> ListAsync( RecordStatusEnum recordStatus, string? stateId = null);
    }
}
