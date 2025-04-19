using ProductApi.Core.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace ProductApi.Infra.Data.Mappings
{
    internal class InsuredObjectMapping : IEntityTypeConfiguration<InsuredObject>
    {
        public void Configure(EntityTypeBuilder<InsuredObject> builder)
        {
            builder
           .HasKey(x => x.InsuredObjectId);

            builder
           .Property(x => x.Name);

            builder
           .Property(x => x.Description);

            builder
           .Property(x => x.ExternalCode);

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