using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class PersonType : IIdentityEntity
    {
        public int PersonTypeId { get; set; }
        public required string Name { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
    }
}
