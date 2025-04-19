using ProductApi.Core.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace ProductApi.Infra.Data.Mappings
{
    public class ProductVersionLawsuitTypeMapping : IEntityTypeConfiguration<ProductVersionLawsuitType>
    {
        public void Configure(EntityTypeBuilder<ProductVersionLawsuitType> builder)
        {
            builder
           .HasKey(x => x.ProductVersionLawsuitTypeId);

            builder
            .Property(x => x.ProductVersionId);

            builder
           .Property(x => x.LawsuitTypeId);

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