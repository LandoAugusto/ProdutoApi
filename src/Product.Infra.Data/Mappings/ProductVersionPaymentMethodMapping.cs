using Product.Core.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Product.Infra.Data.Mappings
{
    public class ProductVersionPaymentMethodMapping : IEntityTypeConfiguration<ProductVersionPaymentMethod>
    {
        public void Configure(EntityTypeBuilder<ProductVersionPaymentMethod> builder)
        {
            builder
              .HasKey(x => x.ProductVersionPaymentMethodId);   

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
