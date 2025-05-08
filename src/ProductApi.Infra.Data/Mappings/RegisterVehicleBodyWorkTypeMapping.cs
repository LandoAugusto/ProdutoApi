using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using  ProductApi.Core.Entities;

namespace  ProductApi.Infra.Data.Mappings
{
    internal class RegisterVehicleBodyWorkTypeMapping : IEntityTypeConfiguration<Core.Entities.RegisterVehicleBodyWorkType>
    {
        public void Configure(EntityTypeBuilder<RegisterVehicleBodyWorkType> builder)
        {
            builder.HasKey(x => x.RegisterVehicleBodyWorkTypeId);

            builder.Property(e => e.Name)
                .HasMaxLength(100)
                .IsUnicode(false);
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
