using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using ProductApi.Core.Entities;

namespace ProductApi.Infra.Data.Mappings
{
    internal class InsuredTypeMapping : IEntityTypeConfiguration<InsuredType>
    {

        public void Configure(EntityTypeBuilder<InsuredType> builder)
        {
            builder
           .HasKey(x => x.InsuredTypeId);

            builder.Property(e => e.Name)
              .HasMaxLength(100)
              .IsUnicode(false);

            builder
             .Property(x => x.LegacyCode);

            builder
             .Property(x => x.Status);

            builder
              .Property(x => x.InclusionUserId);

            builder
            .Property(x => x.InclusionDate);

            builder
            .Property(x => x.LastChangeUserId);

            builder
            .Property(x => x.LastChangeDate);

        }
    }
}
