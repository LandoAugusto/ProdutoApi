using Microsoft.Extensions.DependencyInjection;
using ProductApi.Application.Interfaces;
using ProductApi.Application.Services;

namespace ProductApi.Application.Extensions
{
    public static class DependencyInjectionExtension
    {
        public static void AddAppServices(this IServiceCollection services)
        {
            services.AddScoped<IProductAppService, ProductAppService>();                        
            services.AddScoped<IProductVersionAcceptanceAppService, ProductVersionAcceptanceAppService>();
            services.AddScoped<IProductVersionInsuredObjectAppService, ProductVersionInsuredObjectAppService>();
            services.AddScoped<IProductVersionClauseAppService, ProductVersionClauseAppService>();
            services.AddScoped<IProductVersionTermTypeAppService, ProductVersionTermTypeAppService>();
            services.AddScoped<IProductVersionLawsuitTypeAppService, ProductVersionLawsuitTypeAppService>();
            services.AddScoped<IProductVersionPaymentMethodAppService, ProductVersionPaymentMethodAppService>();
            services.AddScoped<IProductVersionPaymentInstallmentAppService, ProductVersionPaymentInstallmentAppService>();
            services.AddScoped<IProductVersionPaymentFrequencyAppService, ProductVersionPaymentFrequencyAppService>();
            services.AddScoped<IProductVersionCoverageAppService, ProductVersionCoverageAppService>();
            services.AddScoped<ICommonAppService, CommonAppService>();
            services.AddScoped<IBranchAppService, BranchAppService>();
            services.AddScoped<IProductComponentScreenAppService, ProductComponentScreenAppService>();
            services.AddScoped<ILaborCourtAppService, LaborCourtAppService>();
            services.AddScoped<ICivilCourtAppService, CivilCourtAppService>();          

        }
    }
}
