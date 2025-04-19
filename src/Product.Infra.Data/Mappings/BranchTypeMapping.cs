using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Product.Core.Entities;

namespace Product.Infra.Data.Mappings
{
    public class BranchTypeMapping : IEntityTypeConfiguration<BranchType>
    {

        public void Configure(EntityTypeBuilder<BranchType> builder)
        {
            builder
           .HasKey(x => x.BranchTypeId);

            builder.Property(e => e.Name)
              .HasMaxLength(100)
              .IsUnicode(false);

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
