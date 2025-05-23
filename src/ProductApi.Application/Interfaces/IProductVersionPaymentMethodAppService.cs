﻿using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;

namespace ProductApi.Application.Interfaces
{
    public interface IProductVersionPaymentMethodAppService
    {
        Task<IEnumerable<PaymentMethodModel>> ListAsync(int productVersionId, RecordStatusEnum recordStatus);
    }
}
