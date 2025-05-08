using ProductApi.Core.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace ProductApi.Infra.Data.Mappings
{
    public class TermTypeMapping : IEntityTypeConfiguration<TermType>
    {

        public void Configure(EntityTypeBuilder<TermType> builder)
        {
            builder
           .HasKey(x => x.TermTypeId);

            builder.Property(e => e.Name)
              .HasMaxLength(100)
              .IsUnicode(false);

            builder
            .Property(x => x.Status);

            builder
           .Property(x => x.ExternalCode);

            builder
            .Property(x => x.TermDays);

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
