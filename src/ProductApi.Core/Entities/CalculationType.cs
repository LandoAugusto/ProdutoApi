using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class CalculationType : IIdentityEntity
    {
        public int CalculationTypeId { get; set; }
        public required string Name { get; set; }
        public int Status { get; set; }
        public int? InclusionUserId { get; set; }
        public DateTime? InclusionDate { get; set; }
        public virtual ICollection<ProductVersionCalculationType> ProductVersionCalculationType { get; set; } = new HashSet<ProductVersionCalculationType>();
    }
}
