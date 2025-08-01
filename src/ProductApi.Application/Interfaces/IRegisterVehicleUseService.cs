﻿using  ProductApi.Core.Entities.Enumerators;
using  ProductApi.Core.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProductApi.Application.Interfaces
{
    public interface IRegisterVehicleUseService
    {
        Task<IEnumerable<RegisterVehicleUseModel>?> GetAllAsync(RecordStatusEnum recordStatus);
    }
}
