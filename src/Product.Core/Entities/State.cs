using Product.Core.Entities.Interfaces;

namespace Product.Core.Entities
{
    public class State : IIdentityEntity
    {
        public int StateId { get; set; }
        public int CountryId { get; set; }
        public string Initials { get; set; }
        public string? ExternalCode { get; set; }
        public string Name { get; set; }
        public string? Abbreviation { get; set; }
        public int? Status { get; set; }
        public int UserId { get; set; }
        public DateTime DateUtc { get; set; }
    }
}
