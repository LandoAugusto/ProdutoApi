using  ProductApi.Core.Entities.Enumerators;
using  ProductApi.Core.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Product.Application.Interfaces
{
    public interface IRegisterVehicleYearService
    {
        Task<IEnumerable<RegisterVehicleYearModel>?> GetAllAsync(RecordStatusEnum recordStatus);
    }
}
