using Product.Core.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Product.Infra.Data.Mappings
{
    public class CoverageMapping : IEntityTypeConfiguration<Coverage>
    {
        public void Configure(EntityTypeBuilder<Coverage> builder)
        {
            builder
              .HasKey(x => x.CoverageId);

            builder.Property(e => e.Name)
              .HasMaxLength(100)
              .IsUnicode(false);

            builder.Property(e => e.Description)
              .HasMaxLength(255)
              .IsUnicode(false);


            builder
            .Property(x => x.BranchId);

            builder
            .Property(x => x.CoverageGroupId);

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


