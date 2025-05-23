using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class ProductVersionCalculationTypeAcceptance : IIdentityEntity
    {
        public int ProductVersionCalculationTypeAcceptanceId { get; set; }
        public int ProductVersionCalculationTypeId { get; set; }
        public int Status { get; set; }
    }
}
