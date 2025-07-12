using ProductApi.Core.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace ProductApi.Infra.Data.Mappings
{
    internal class ProductVersionAcceptanceMapping : IEntityTypeConfiguration<ProductVersionAcceptance>
    {
        public void Configure(EntityTypeBuilder<ProductVersionAcceptance> builder)
        {
            builder
              .HasKey(x => x.ProductVersionAcceptanceId);

            builder
            .Property(x => x.ProductVersionId);

            builder
            .Property(x => x.ProfileId);

            builder
            .Property(x => x.CommissionDefaultValue);

            builder
            .Property(x => x.CommissionMinValue);

            builder
            .Property(x => x.PremiumMinValue);

            builder
            .Property(x => x.PremiumMaxValue);

            builder
            .Property(x => x.InsuredAmountValueMin);

            builder
            .Property(x => x.InsuredAmountValueMax);

            builder
            .Property(x => x.RetroactiveEffectiveDateStartDays);

            builder
            .Property(x => x.LaterEffectiveDateStartDays);

            builder
            .Property(x => x.PercentIofValue);

            builder
            .Property(x => x.GrievanceType);

            builder
            .Property(x => x.GrievanceDefaultValue);

            builder
            .Property(x => x.GrievanceMinValue);

            builder
            .Property(x => x.GrievanceMaxValue);

            builder
            .Property(x => x.DiscountDefaultValue);

            builder
            .Property(x => x.DiscountMinValue);

            builder
            .Property(x => x.DiscountMaxValue);

            builder
           .Property(x => x.CalculationNumberDays);

            builder
            .Property(x => x.RequiresRecalculationIfExpired);

            builder
            .Property(x => x.Status);

            builder
            .Property(x => x.InclusionUserId);

            builder
            .Property(x => x.LastChangeDate);

            builder
            .Property(x => x.LastChangeUserId);

            builder
            .Property(x => x.LastChangeDate);
        }
    }
}
