﻿using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class InsuredType : IIdentityEntity
    {
        public int InsuredTypeId { get; set; }
        public string Name { get; set; }
        public string? LegacyCode { get; set; }        
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
    }
}
