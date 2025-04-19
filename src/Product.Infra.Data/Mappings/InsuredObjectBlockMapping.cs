using Product.Core.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Product.Infra.Data.Mappings
{
    internal class InsuredObjectBlockMapping : IEntityTypeConfiguration<InsuredObjectBlock>
    {
        public void Configure(EntityTypeBuilder<InsuredObjectBlock> builder)
        {
            builder
           .HasKey(x => x.InsuredObjectBlockId);

            builder
           .Property(x => x.InsuredObjectId);

            builder
           .Property(x => x.PrintMode);

            builder
           .Property(x => x.Contents);

            builder
           .Property(x => x.StartInNewLine);

            builder
           .Property(x => x.PrintOrder);

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