using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using ProductApi.Core.Entities;

namespace ProductApi.Infra.Data.Mappings
{
    public class FlexRateBrokerMapping : IEntityTypeConfiguration<FlexRateBroker>
    {
        public void Configure(EntityTypeBuilder<FlexRateBroker> builder)
        {
            builder
              .HasKey(x => x.FlexRateBrokerId);

            builder
            .Property(x => x.FlexRateId);
            builder
            .Property(x => x.BrokerId);
            builder
            .Property(x => x.Status);

            builder
            .Property(x => x.UserId);

            builder
            .Property(x => x.DateUtc);
        }
    }
}
