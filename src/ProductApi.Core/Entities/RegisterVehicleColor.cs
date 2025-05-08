using  ProductApi.Core.Entities.Interfaces;

namespace  ProductApi.Core.Entities
{
    public class RegisterVehicleColor : IIdentityEntity
    {
        public int RegisterVehicleColorId { get; set; }
        public string Name { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
        public int Status { get; set; }

    }
}
