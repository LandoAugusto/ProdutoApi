using Product.Core.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Product.Infra.Data.Mappings
{
    public class ProductVersionTermTypeMapping : IEntityTypeConfiguration<ProductVersionTermType>
    {
        public void Configure(EntityTypeBuilder<ProductVersionTermType> builder)
        {
            builder
           .HasKey(x => x.ProductVersionTermTypeId);

            builder
            .Property(x => x.ProductVersionId);

            builder
           .Property(x => x.TermTypeId);

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