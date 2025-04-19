using Microsoft.Extensions.DependencyInjection;
using Product.Application.Interfaces;
using Product.Application.Services;

namespace Product.Application.Extensions
{
    public static class DependencyInjectionExtension
    {
        public static void AddAppServices(this IServiceCollection services)
        {
            services.AddScoped<IProductService, ProductService>();            
            services.AddScoped<IProductService, ProductService>();            
            services.AddScoped<IProductVersionAcceptanceService, ProductVersionAcceptanceService>();
            services.AddScoped<IProductVersionInsuredObjectService, ProductVersionInsuredObjectService>();
            services.AddScoped<IProductVersionClauseService, ProductVersionClauseService>();
            services.AddScoped<IProductVersionTermTypeService, ProductVersionTermTypeService>();
            services.AddScoped<IProductVersionLawsuitTypeService, ProductVersionLawsuitTypeService>();
            services.AddScoped<IProductVersionPaymentMethodService, ProductVersionPaymentMethodService>();
            services.AddScoped<IProductVersionPaymentInstallmentService, ProductVersionPaymentInstallmentService>();
            services.AddScoped<IProductVersionPaymentFrequencyService, ProductVersionPaymentFrequencyService>();            
        }
    }
}
