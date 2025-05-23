using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class ProductVersionCalculationTypeAcceptance : IIdentityEntity
    {
        public int ProductVersionCalculationTypeAcceptanceId { get; set; }
        public int ProductVersionCalculationTypeId { get; set; }     
        public bool IsCountDays { get;set;}
        public int CountDayMin { get; set; }
        public int CountDayMax { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }

    }
}
