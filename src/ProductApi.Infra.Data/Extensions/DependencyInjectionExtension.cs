using Microsoft.EntityFrameworkCore;
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
            services.AddScoped<ITermTypeRepository, TermTypeRepository>();
            services.AddScoped<IProductComponentRepository, ProductComponentRepository>();
            services.AddScoped<IFlexRateRepository, FlexRateRepository>();
            services.AddScoped<IFlexRateBrokerRepository, FlexRateBrokerRepository>();
            services.AddScoped<IFlexRateBorrowerRepository, FlexRateBorrowerRepository>();
            services.AddScoped<ICivilCourtRepository, CivilCourtRepository>();
            services.AddScoped<ILaborCourtRepository, LaborCourtRepository>();
            return services;
        }
    }
}
