using Product.Core.Entities.Interfaces;

namespace Product.Core.Entities
{
    public class InsuredObjectBlock : IIdentityEntity
    {
        public int InsuredObjectBlockId { get; set; }
        public int InsuredObjectId { get; set; }
        public int PrintMode { get; set; }
        public string Contents { get; set; }
        public bool StartInNewLine { get; set; }
        public int PrintOrder { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
        public virtual InsuredObject InsuredObject { get; set; } = null!;
    }
}
