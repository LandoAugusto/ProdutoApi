using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class ProductVersionLawsuitType : IIdentityEntity
    {
        public int ProductVersionLawsuitTypeId { get; set; }
        public int ProductVersionId { get; set; }
        public int LawsuitTypeId { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }

        public virtual ProductVersion ProductVersion { get; set; } = null!;
        public virtual LawsuitType LawsuitType { get; set; } = null!;
    }
}
