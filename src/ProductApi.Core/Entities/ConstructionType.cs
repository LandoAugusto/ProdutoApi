﻿using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class ConstructionType : IIdentityEntity
    {
        public int ConstructionTypeId { get; set; }
        public required string Name { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }        
        public virtual ICollection<ProductVersionConstructionType> ProductVersionConstructionType { get; set; } = new HashSet<ProductVersionConstructionType>();
    }
}
