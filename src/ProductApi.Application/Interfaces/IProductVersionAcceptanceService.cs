using AutoMapper;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Models;

namespace ProductApi.Application.Interfaces
{
    public interface IProductVersionAcceptanceService
    {
        Task<ProductVersionAcceptanceModel?> GetAsync(int productId, int coverageId, int profileId, RecordStatusEnum recordStatus);
    }
}
