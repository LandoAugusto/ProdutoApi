using Product.Core.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Product.Infra.Data.Mappings
{
    public class LegalRecourseTypeMapping : IEntityTypeConfiguration<LegalRecourseType>
    {
        public void Configure(EntityTypeBuilder<LegalRecourseType> builder)
        {
            builder
              .HasKey(x => x.LegalRecourseTypeId);

            builder.Property(e => e.Name)
              .HasMaxLength(100)
              .IsUnicode(false);

            builder.Property(e => e.Name)
              .HasMaxLength(255)
              .IsUnicode(false);

            builder
            .Property(x => x.Status);

            builder
            .Property(x => x.UserId);

            builder
            .Property(x => x.DateUtc);
        }
    }
}
