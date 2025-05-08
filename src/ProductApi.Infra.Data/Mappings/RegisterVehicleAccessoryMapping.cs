using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using  ProductApi.Core.Entities;

namespace  ProductApi.Infra.Data.Mappings
{
    public class RegisterVehicleAccessoryMapping : IEntityTypeConfiguration<Core.Entities.RegisterVehicleAccessory>
    {
        public void Configure(EntityTypeBuilder<RegisterVehicleAccessory> builder)
        {
            builder.HasKey(x => x.RegisterVehicleAccessoryId);

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
