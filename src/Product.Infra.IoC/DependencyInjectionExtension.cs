using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Product.Application.Extensions;
using Product.Core.Infrastructure.Configuration;
using Product.Infra.Data.Extensions;

namespace Product.Infra.IoC
{
    public static class DependencyInjectionExtension
    {
        public static void AddIoC(this IServiceCollection services, IConfiguration configuration)
        {   
            services.AddAppServices();
            services.AddInfraData(configuration);
        }
    }
}
