﻿using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class Component : IIdentityEntity
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
        public virtual ICollection<ProductComponentScreen> ConfigurationComponentScreen { get; set; } = new HashSet<ProductComponentScreen>();
    }
}
