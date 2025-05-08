using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using  ProductApi.Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace  ProductApi.Infra.Data.Mappings
{
    internal class RegisterVehiclePassengerCapacityMapping : IEntityTypeConfiguration<Core.Entities.RegisterVehiclePassengerCapacity>
    {
        public void Configure(EntityTypeBuilder<RegisterVehiclePassengerCapacity> builder)
        {
            builder.HasKey(x => x.RegisterVehiclePassengerCapacityId);

            builder.Property(e => e.Description)
                .HasMaxLength(100)
                .IsUnicode(false);
            builder
                .Property(e => e.Status);
            builder
                .Property(e => e.InclusionUserId);
            builder
                .Property(e => e.InclusionDate);
            builder
                .Property(e => e.LastChangeUserId);
            builder
                .Property(e => e.LastChangeDate);
        }
    }
}
