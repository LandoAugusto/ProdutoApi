using AutoMapper;
using ProductApi.Application.Interfaces;
using ProductApi.Core.Models;
using ProductApi.Infra.Data.Interfaces;

namespace ProductApi.Application.Services
{
    internal class ProductComponentScreenAppService(IMapper mapper, IProductComponentRepository configurationComponentProductRepository)  : IProductComponentScreenAppService
    {
        private readonly IMapper _mapper = mapper;
        private readonly IProductComponentRepository _configurationComponentProductRepository = configurationComponentProductRepository;

        public async Task<ProductComponentScreenModel?> GetAsync(int code)
        {
            var entidade = await _configurationComponentProductRepository.GetAsync(code);
            if (entidade == null) return null;
            var response = new ProductComponentScreenModel()
            {
                Product = _mapper.Map<ProductComponentModel>(entidade)
            };

            foreach (var item in entidade.ProductComponentScreen.OrderBy(item => item.Order))
            {
                var configurationComponentModel = _mapper.Map<ComponentModel>(item.Component);
                configurationComponentModel.Order = item.Order;
                response.Component.Add(configurationComponentModel);
            }

            return response;
        }
    }
}
