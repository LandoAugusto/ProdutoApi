using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public  class ClaimsExperienceBonus : IIdentityEntity
    {
        public int ClaimsExperienceBonusId { get; set; }
        public required string Name { get; set; }
        public required int BonusId { get; set; }  
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
    }
}
