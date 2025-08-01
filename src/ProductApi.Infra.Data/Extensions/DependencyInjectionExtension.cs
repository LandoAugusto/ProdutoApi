﻿using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using ProductApi.Infra.Data.Contexts;
using ProductApi.Infra.Data.Interfaces;
using ProductApi.Infra.Data.Repositories;

namespace ProductApi.Infra.Data.Extensions
{
    public static class DependencyInjectionExtension
    {
        public static void AddInfraData(this IServiceCollection services, IConfiguration configuration) =>
        services
        .AddDbContext<ProductDbContext>(
            options =>
                options.UseSqlServer(configuration.GetConnectionString("DefaultConnection")), ServiceLifetime.Scoped
        )
        .AddRepositories();

        private static IServiceCollection AddRepositories(this IServiceCollection services)
        {
            services.AddScoped<IBranchRepository, BranchRepository>();
            services.AddScoped<IBranchTypeRepository, BranchTypeRepository>();
            services.AddScoped<IInsuranceBranchRepository, InsuranceBranchRepository>();
            services.AddScoped<IProductRepository, ProductRepository>();
            services.AddScoped<ICoverageRepository, CoverageRepository>();
            services.AddScoped<IRecordStatusRepository, RecordStatusRepository>();
            services.AddScoped<IStateRepository, StateRepository>();
            services.AddScoped<IDocumentTypeRepository, DocumentTypeRepository>();
            services.AddScoped<IInsuredTypeRepository, InsuredTypeRepository>();
            services.AddScoped<IAddressTypeRepository, AddressTypeRepository>();
            services.AddScoped<IProductVersionRepository, ProductVersionRepository>();
            services.AddScoped<IProductVersionAcceptanceRepository, ProductVersionAcceptanceRepository>();
            services.AddScoped<IProductVersionInsuredObjectRepository, ProductVersionInsuredObjectRepository>();
            services.AddScoped<IProductVersionClauseRepository, ProductVersionClauseRepository>();
            services.AddScoped<IProductVersionLawsuitTypeRepository, ProductVersionLawsuitTypeRepository>();
            services.AddScoped<IProductVersionTermTypeRepository, ProductVersionTermTypeRepository>();
            services.AddScoped<IProductVersionPaymentMethodRepository, ProductVersionPaymentMethodRepository>();
            services.AddScoped<IProductVersionPaymentInstallmentRepository, ProductVersionPaymentInstallmentRepository>();
            services.AddScoped<IProductVersionPaymentFrequencyRepository, ProductVersionPaymentFrequencyRepository>();
            services.AddScoped<IProductVersionCoverageRepository, ProductVersionCoverageRepository>();
            services.AddScoped<IProductVersionContractTypeRepository, ProductVersionContractTypeRepository>();
            services.AddScoped<IProductVersionCalculationTypeRepository, ProductVersionCalculationTypeRepository>();
            services.AddScoped<IProductVersionCalculationTypeAcceptanceRepository, ProductVersionCalculationTypeAcceptanceRepository>();
            services.AddScoped<IProductVersionConstructionTypeRepository, ProductVersionConstructionTypeRepository>();
            services.AddScoped<IProductVersionActivityRepository, ProductVersionActivityRepository>();
            services.AddScoped<IProductVersionPlanActivityRepository, ProductVersionPlanActivityRepository>();
            services.AddScoped<IProductVersionPlanCoverageRepository, ProductVersionPlanCoverageRepository>();
            services.AddScoped<IProductVersionCoverageActivityLimitRepository, ProductVersionCoverageActivityLimitRepository>();
            services.AddScoped<IProductVersionLocalizationRepository, ProductVersionLocalizationRepository>();
            services.AddScoped<IProductVersionPlanAssistanceRepository, ProductVersionPlanAssistanceRepository>();
            services.AddScoped<IProductVersionCoverageFranchiseRepository, ProductVersionCoverageFranchiseRepository>();
            services.AddScoped<IProtectiveDevicesRepository, ProtectiveDevicesRepository>();
            services.AddScoped<ITermTypeRepository, TermTypeRepository>();
            services.AddScoped<IProductComponentRepository, ProductComponentRepository>();
            services.AddScoped<ICivilCourtRepository, CivilCourtRepository>();
            services.AddScoped<ILaborCourtRepository, LaborCourtRepository>();
            services.AddScoped<ILegalRecourseTypeRepository, LegalRecourseTypeRepository>();
            services.AddScoped<ILegalRecourseTypeParameterRepository, LegalRecourseTypeParameterRepository>();
            services.AddScoped<IInsuranceTypeRepository, InsuranceTypeRepository>();
            services.AddScoped<IRegisterVehicleBrandRepository, RegisterVehicleBrandRepository>();
            services.AddScoped<IRegisterVehicleModelRepository, RegisterVehicleModelRepository>();            
            services.AddScoped<IRegisterVehicleVersionRepository, RegisterVehicleVersionRepository>();
            services.AddScoped<IRegisterVehicleYearRepository, RegisterVehicleYearRepository>();
            services.AddScoped<IInsurerRepository, InsurerRepository>();
            services.AddScoped<IClaimsExperienceBonusRepository, ClaimsExperienceBonusRepository>();
            services.AddScoped<IPropertyStructureRepository, PropertyStructureRepository>();
            services.AddScoped<IBuildingsContentsRepository, BuildingsContentsRepository>();
            services.AddScoped<IProductVersionConstructionUseStructureRepository, ProductVersionConstructionUseStructureRepository>();
            services.AddScoped<IProductVersionConstructionUseStructureRepository, ProductVersionConstructionUseStructureRepository>();
            services.AddScoped<IProductVersionConstructionUseTypeRepository, ProductVersionConstructionUseTypeRepository>();
            services.AddScoped<IPersonTypeRepository, PersonTypeRepository>();
            services.AddScoped<IQuotationStatusRepository, QuotationStatusRepository>();
            services.AddScoped<IProductVersionQuestionnaireRepository, ProductVersionQuestionnaireRepository>();
            services.AddScoped<IQuestionResponseRepository, QuestionResponseRepository>();
            services.AddScoped<IProductVersionPlanUsePropertyRepository, ProductVersionPlanUsePropertyRepository>();
            services.AddScoped<IProductVersionPlanUsePropertyRepository, ProductVersionPlanUsePropertyRepository>();
            services.AddScoped<IProductVersionPlanUsePropertyRepository, ProductVersionPlanUsePropertyRepository>();
            services.AddScoped<IProfessionRepository, ProfessionRepository>();
            services.AddScoped<IGenderRepository, GenderRepository>();
            services.AddScoped<IInspectionReasonRepository, InspectionReasonRepository>();
            services.AddScoped<IInspectionRuleCoverageRepository, InspectionRuleCoverageRepository>();

            return services;
        }
    }
}
