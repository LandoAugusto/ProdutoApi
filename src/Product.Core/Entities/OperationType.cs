using Product.Core.Entities.Interfaces;

namespace Product.Core.Entities
{
    public class OperationType : IIdentityEntity
    {
        public int OperationTypeId { get; set; }
        public string Name { get; set; }
        public int Code { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
        public virtual ICollection<FlexRate> FlexRate { get; set; } = new HashSet<FlexRate>();
    }
}
