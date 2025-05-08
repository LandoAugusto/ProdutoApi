using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class LegalRecourseType : IIdentityEntity
    {
        public int LegalRecourseTypeId { get; set; }
        public string Name { get; set; }
        public int Status { get; set; }
        public string? ExternalCode { get; set; }
        public int UserId { get; set; }
        public DateTime DateUtc { get; set; }
        public virtual ICollection<LegalRecourseTypeParameter> LegalRecourseTypeParameter { get; set; } = new HashSet<LegalRecourseTypeParameter>();
    }
}
