using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class Insurer : IIdentityEntity
    {
        public int InsurerId { get; set; }
        public required string Name { get; set; }
        public required string CodeNumber { get; set; }
        public int LegacyCode { get; set; }
        public bool IsLeader { get; set; }
        public bool IsCongenere { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
    }
}
