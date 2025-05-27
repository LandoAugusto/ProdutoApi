using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class ProductVersionActivity : IIdentityEntity
    {
        public int ProductVersionActivityId { get; set; }
        public int ProductVersionId { get; set; }
        public int ActivityId { get; set; }
        public int HazardGroupId { get; set; }
        public int RiskTypeId { get; set; }        
        public int ProfileId { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
        public virtual ProductVersion ProductVersion { get; set; } = null!;
        public virtual Activity Activity { get; set; } = null!;
        public virtual HazardGroup HazardGroup { get; set; } = null!;
        public virtual RiskType RiskType { get; set; } = null!;      
        public virtual Profile Profile { get; set; } = null!;

    }
}
