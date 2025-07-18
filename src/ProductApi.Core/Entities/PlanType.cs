﻿namespace ProductApi.Core.Entities
{
    public  class PlanType
    {
        public int PlanTypeId { get; set; }
        public required string Name { get; set; }                
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }

        public virtual ICollection<Plan> Plan { get; set; } = new HashSet<Plan>();
    }
}
