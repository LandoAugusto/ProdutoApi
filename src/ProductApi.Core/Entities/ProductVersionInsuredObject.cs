﻿using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class ProductVersionInsuredObject : IIdentityEntity
    {
        public int ProductVersionInsuredObjectId { get; set; }
        public int InsuredObjectId { get; set; }
        public int ProductVersionCoverageId { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
        public virtual ProductVersionCoverage ProductVersionCoverage { get; set; } = null!;
        public virtual InsuredObject InsuredObject { get; set; } = null!;
        
    }
}
