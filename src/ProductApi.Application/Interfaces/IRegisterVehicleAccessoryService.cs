﻿using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;

namespace ProductApi.Application.Interfaces
{
    public interface IRegisterVehicleAccessoryService
    {
        Task<IEnumerable<RegisterVehicleAccessoryModel>?> GetAllAsync(RecordStatusEnum recordStatus);
    }
}
