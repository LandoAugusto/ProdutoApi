using Microsoft.Extensions.DependencyInjection;
using ProductApi.Application.Interfaces;
using ProductApi.Application.Services;

namespace ProductApi.Application.Extensions
{
    public static class DependencyInjectionExtension
    {
        public static void AddAppServices(this IServiceCollection services)
        {
            services.AddScoped<IProductService, ProductService>();                        
            services.AddScoped<IProductVersionAcceptanceService, ProductVersionAcceptanceService>();
            services.AddScoped<IProductVersionInsuredObjectService, ProductVersionInsuredObjectService>();
            services.AddScoped<IProductVersionClauseService, ProductVersionClauseService>();
            services.AddScoped<IProductVersionTermTypeService, ProductVersionTermTypeService>();
            services.AddScoped<IProductVersionLawsuitTypeService, ProductVersionLawsuitTypeService>();
            services.AddScoped<IProductVersionPaymentMethodService, ProductVersionPaymentMethodService>();
            services.AddScoped<IProductVersionPaymentInstallmentService, ProductVersionPaymentInstallmentService>();
            services.AddScoped<IProductVersionPaymentFrequencyService, ProductVersionPaymentFrequencyService>();
            services.AddScoped<IProductVersionCoverageAppService, ProductVersionCoverageAppService>();
        }
    }
}
