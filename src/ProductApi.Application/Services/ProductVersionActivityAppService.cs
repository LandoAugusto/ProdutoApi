using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Enumerators;
using ProductApi.Core.Extensions;
using ProductApi.Core.Models;
using ProductApi.Infra.Data.Interfaces;

namespace ProductApi.Application.Services
{
    internal class ProductVersionActivityAppService(IMapper mapper, IProductVersionActivityRepository productVersionActivityrepository) : IProductVersionActivityAppService
    {
        private readonly IMapper _mapper = mapper;
        private readonly IProductVersionActivityRepository _productVersionActivityrepository = productVersionActivityrepository;

        public async Task<ActivityModel?> GetAsync(int productVersionId, int profileId, int activityId, RecordStatusEnum recordStatus)
        {
            var entidade = await _productVersionActivityrepository.GetAsync(productVersionId, profileId, activityId, recordStatus);
            if (entidade == null) return null;

            return _mapper.Map<ActivityModel>(entidade.Activity);
        }
        public async Task<IEnumerable<ActivityModel>?> ListAsync(int productVersionId, int profileId, string? name , RecordStatusEnum recordStatus)
        {
            var entidade = await _productVersionActivityrepository.ListAsync(productVersionId, profileId, name ,recordStatus);
            if (!entidade.IsAny<ProductVersionActivity>()) return null;

            return [.. entidade.ToList().Select(item =>
            {
                return _mapper.Map<ActivityModel>(item.Activity);
            })];
        }
    }
}
