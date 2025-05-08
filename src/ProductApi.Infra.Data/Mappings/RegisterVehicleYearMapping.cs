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
    internal class RegisterVehicleYearMapping : IEntityTypeConfiguration<Core.Entities.RegisterVehicleYear>
    {
        public void Configure(EntityTypeBuilder<RegisterVehicleYear> builder)
        {
            builder.HasKey(x => x.RegisterVehicleYearId);

            builder
                .Property(e => e.VehicleYear);
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
