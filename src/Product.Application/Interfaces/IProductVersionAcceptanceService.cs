using AutoMapper;
using Product.Core.Entities.Enumerators;
using Product.Core.Models;

namespace Product.Application.Interfaces
{
    public interface IProductVersionAcceptanceService
    {
        Task<ProductVersionAcceptanceModel?> GetAsync(int productId, int coverageId, int profileId, RecordStatusEnum recordStatus);
    }
}
