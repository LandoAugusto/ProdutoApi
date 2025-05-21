﻿using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class State : IIdentityEntity
    {
        public int StateId { get; set; }
        public int CountryId { get; set; }
        public string Initials { get; set; }
        public string? ExternalCode { get; set; }
        public string Name { get; set; }
        public string? Abbreviation { get; set; }
        public int? Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
    }
}
