using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class AddressType : IIdentityEntity
    {
        public int AddressTypeId { get; set; }
        public string Name { get; set; }
        public string? LegacyCode { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
    }
}
