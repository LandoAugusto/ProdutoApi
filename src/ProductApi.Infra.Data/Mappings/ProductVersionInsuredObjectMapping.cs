using ProductApi.Core.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace ProductApi.Infra.Data.Mappings
{
    internal class ProductVersionInsuredObjectMapping : IEntityTypeConfiguration<ProductVersionInsuredObject>
    {
        public void Configure(EntityTypeBuilder<ProductVersionInsuredObject> builder)
        {
            builder
           .HasKey(x => x.ProductVersionInsuredObjectId);

            builder
           .Property(x => x.InsuredObjectId);

            builder
           .Property(x => x.ProductVersionCoverageId);           

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
