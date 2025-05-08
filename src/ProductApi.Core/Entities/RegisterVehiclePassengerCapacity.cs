using  ProductApi.Core.Entities.Interfaces;

namespace  ProductApi.Core.Entities
{
    public class RegisterVehiclePassengerCapacity : IIdentityEntity
    {
        public int RegisterVehiclePassengerCapacityId { get; set; }
        public int Quantity { get; set; }
        public required string Description { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
    }

}
