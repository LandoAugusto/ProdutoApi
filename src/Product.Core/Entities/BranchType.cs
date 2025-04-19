﻿using Product.Core.Entities.Interfaces;

namespace Product.Core.Entities
{
    public class BranchType : IIdentityEntity
    {
        public int BranchTypeId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
        public virtual ICollection<Branch> Branch { get; set; } = new HashSet<Branch>();
    }
}
