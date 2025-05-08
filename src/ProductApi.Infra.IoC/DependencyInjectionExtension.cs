using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using ProductApi.Application.Extensions;
using ProductApi.Core.Infrastructure.Configuration;
using ProductApi.Infra.Data.Extensions;

namespace ProductApi.Infra.IoC
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
