using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Product.Infra.Data.Contexts;
using Product.Infra.Data.Interfaces;
using Product.Infra.Data.Repositories;

namespace Product.Infra.Data.Extensions
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
            services.AddScoped<IProductRepository, ProductRepository>();
            services.AddScoped<ICoverageRepository, CoverageRepository>();
            services.AddScoped<IRecordStatusRepository, RecordStatusRepository>();            
            services.AddScoped<IStateRepository, StateRepository>();
            services.AddScoped<IProductVersionRepository, ProductVersionRepository>();
            services.AddScoped<IProductVersionAcceptanceRepository, ProductVersionAcceptanceRepository>();
            services.AddScoped<IProductVersionInsuredObjectRepository, ProductVersionInsuredObjectRepository>();
            services.AddScoped<IProductVersionClauseRepository, ProductVersionClauseRepository>();
            services.AddScoped<IProductVersionLawsuitTypeRepository, ProductVersionLawsuitTypeRepository>();
            services.AddScoped<IProductVersionTermTypeRepository, ProductVersionTermTypeRepository>();
            services.AddScoped<IProductVersionPaymentMethodRepository, ProductVersionPaymentMethodRepository>();
            services.AddScoped<IProductVersionPaymentInstallmentRepository, ProductVersionPaymentInstallmentRepository>();
            services.AddScoped<IProductVersionPaymentFrequencyRepository, ProductVersionPaymentFrequencyRepository>();

            return services;
        }
    }
}
