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
            services.AddScoped<IProductVersionAppService, ProductVersionAppService>();
            services.AddScoped<IProductVersionAcceptanceAppService, ProductVersionAcceptanceAppService>();
            services.AddScoped<IProductVersionInsuredObjectAppService, ProductVersionInsuredObjectAppService>();
            services.AddScoped<IProductVersionClauseAppService, ProductVersionClauseAppService>();
            services.AddScoped<IProductVersionTermTypeAppService, ProductVersionTermTypeAppService>();
            services.AddScoped<IProductVersionLawsuitTypeAppService, ProductVersionLawsuitTypeAppService>();
            services.AddScoped<IProductVersionPaymentMethodAppService, ProductVersionPaymentMethodAppService>();
            services.AddScoped<IProductVersionPaymentInstallmentAppService, ProductVersionPaymentInstallmentAppService>();
            services.AddScoped<IProductVersionPaymentFrequencyAppService, ProductVersionPaymentFrequencyAppService>();
            services.AddScoped<IProductVersionCoverageAppService, ProductVersionCoverageAppService>();
            services.AddScoped<IProductVersionContractTypeAppService, ProductVersionContractTypeAppService>();
            services.AddScoped<IProductVersionContractTypeAppService, ProductVersionContractTypeAppService>();
            services.AddScoped<IProductVersionCalculationTypeAppService, ProductVersionCalculationTypeAppService>();
            services.AddScoped<IProductVersionConstructionTypeAppService, ProductVersionConstructionTypeAppService>();
            services.AddScoped<IProductVersionCalculationTypeAcceptanceAppService, ProductVersionCalculationTypeAcceptanceAppService>();
            services.AddScoped<IProductVersionActivityAppService, ProductVersionActivityAppService>();
            services.AddScoped<IProductVersionPlanActivityAppService, ProductVersionPlanActivityAppService>();
            services.AddScoped<IProductVersionPlanCoverageAppService, ProductVersionPlanCoverageAppService>();
            services.AddScoped<IProductVersionCoverageActivityLimitAppService, ProductVersionCoverageActivityLimitAppService>();
            services.AddScoped<IProductVersionLocalizationAppService, ProductVersionLocalizationAppService>();
            services.AddScoped<ICommonAppService, CommonAppService>();
            services.AddScoped<IBranchAppService, BranchAppService>();
            services.AddScoped<IProductComponentScreenAppService, ProductComponentScreenAppService>();
            services.AddScoped<ILaborCourtAppService, LaborCourtAppService>();
            services.AddScoped<ICivilCourtAppService, CivilCourtAppService>();
            services.AddScoped<ILegalRecourseTypeAppService, LegalRecourseTypeAppService>();
            services.AddScoped<IRegisterVehicleBrandAppService, RegisterVehicleBrandAppService>();
            services.AddScoped<IRegisterVehicleModelAppService, RegisterVehicleModelAppService>();
            services.AddScoped<IRegisterVehicleVersionAppService, RegisterVehicleVersionAppService>();
            services.AddScoped<IRegisterVehicleYearAppService, RegisterVehicleYearAppService>();
            services.AddScoped<IProductVersionCoverageFranchiseAppService, ProductVersionCoverageFranchiseAppService>();
            services.AddScoped<IProductVersionPlanAssistanceAppService, ProductVersionPlanAssistanceAppService>();
            services.AddScoped<IProductVersionQuestionnaireAppService, ProductVersionQuestionnaireAppService>();
            
        }
    }
}
