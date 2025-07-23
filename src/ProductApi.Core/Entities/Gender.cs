using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class Gender : IIdentityEntity
    {
        public int GenderId { get; set; }
        public required string Name { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
    }
}
