using Product.Core.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Product.Infra.Data.Mappings
{
    public class StateMapping : IEntityTypeConfiguration<State>
    {
        public void Configure(EntityTypeBuilder<State> builder)
        {
            builder
              .HasKey(x => x.StateId);

            builder.Property(e => e.Name)
           .HasMaxLength(100)
           .IsUnicode(false);

            builder
            .Property(x => x.CountryId);
            builder
            .Property(x => x.Initials);
            builder
            .Property(x => x.ExternalCode);
            builder
            .Property(x => x.Name);
            builder
            .Property(x => x.Abbreviation);
            builder
            .Property(x => x.Status);   
            builder
            .Property(x => x.UserId);
            builder
            .Property(x => x.DateUtc);
        }
    }
}