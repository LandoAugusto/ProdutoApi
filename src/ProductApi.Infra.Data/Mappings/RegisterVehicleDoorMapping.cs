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
    internal class RegisterVehicleDoorMapping : IEntityTypeConfiguration<Core.Entities.RegisterVehicleDoor>
    {
        public void Configure(EntityTypeBuilder<RegisterVehicleDoor> builder)
        {
            builder.HasKey(x => x.RegisterVehicleDoorId);

            builder.Property(e => e.Description)
                .HasMaxLength(100)
                .IsUnicode(false);
            builder
                .Property(e => e.Quantity);
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
