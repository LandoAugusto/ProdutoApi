using Microsoft.EntityFrameworkCore.Metadata.Builders;
using  ProductApi.Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace  ProductApi.Infra.Data.Mappings
{
    internal class RegisterVehicleTypeMapping
    {
        public void Configure(EntityTypeBuilder<RegisterVehicleType> builder)
        {
            builder.HasKey(x => x.RegisterVehicleTypeId);

            builder.Property(e => e.Name)
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
