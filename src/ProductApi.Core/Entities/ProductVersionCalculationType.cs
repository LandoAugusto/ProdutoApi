using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class ProductVersionCalculationType : IIdentityEntity
    {
        public int ProductVersionCalculationTypeId { get; set; }        
        public int ProductVersionId { get; set; }
        public int ProfileId { get; set; }
        public int CalculationTypeId { get; set; }
        public int Status { get; set; }
        public int? InclusionUserId { get; set; }
        public DateTime? InclusionDate { get; set; }
        public int LastChangeUserId { get; set; }
        public DateTime LastChangeDate { get; set; }
        public virtual CalculationType CalculationType { get; set; } = null!;
        public virtual ProductVersion ProductVersion { get; set; } = null!;
        public virtual Profile Profile { get; set; } = null!;   
    }
}
