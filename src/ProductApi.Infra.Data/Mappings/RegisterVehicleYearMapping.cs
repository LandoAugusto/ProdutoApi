using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using ProductApi.Core.Entities;

namespace  ProductApi.Infra.Data.Mappings
{
    internal class RegisterVehicleYearMapping : IEntityTypeConfiguration<RegisterVehicleYear>
    {
        public void Configure(EntityTypeBuilder<RegisterVehicleYear> builder)
        {
            builder.HasKey(x => x.RegisterVehicleYearId);

            builder
                .Property(e => e.Year);
            builder
                .Property(e => e.Status);
            builder
                .Property(e => e.InclusionUserId);
            builder
                .Property(e => e.InclusionDate);
            builder
                .Property(e => e.LastChangeUserId);
            builder
                .Property(e => e.LastChangeDate);
        }
    }
}
