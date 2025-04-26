using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using ProductApi.Core.Entities;

namespace ProductApi.Infra.Data.Mappings
{
    internal class InsuranceBranchMapping : IEntityTypeConfiguration<InsuranceBranch>
    {

        public void Configure(EntityTypeBuilder<InsuranceBranch> builder)
        {
            builder
           .HasKey(x => x.InsuranceBranchId);

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