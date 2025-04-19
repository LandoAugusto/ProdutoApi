using Product.Core.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Product.Infra.Data.Mappings
{
    public class ProductVersionClauseMapping : IEntityTypeConfiguration<ProductVersionClause>
    {
        public void Configure(EntityTypeBuilder<ProductVersionClause> builder)
        {
            builder
              .HasKey(x => x.ProductVersionClauseId);

            builder
            .Property(x => x.ProductVersionId);

            builder
            .Property(x => x.ClauseId);

            builder
            .Property(x => x.ClauseTextId);

            builder
            .Property(x => x.IsRequired);

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

