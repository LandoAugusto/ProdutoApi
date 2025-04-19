using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Microsoft.EntityFrameworkCore;
using ProductApi.Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProductApi.Infra.Data.Mappings
{
    public class CoverageGroupMapping : IEntityTypeConfiguration<CoverageGroup>
    {

        public void Configure(EntityTypeBuilder<CoverageGroup> builder)
        {
            builder
           .HasKey(x => x.CoverageGroupId);

            builder.Property(e => e.Name)
              .HasMaxLength(100)
              .IsUnicode(false);

            builder
            .Property(x => x.Description);

            builder
         .Property(x => x.LastChangeDate);

            builder
            .Property(x => x.LastChangeUserId);

            builder
            .Property(x => x.LastChangeDate);

        }
    }
}
