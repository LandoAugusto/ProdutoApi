using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class InsuranceType : IIdentityEntity
    {
        public int InsuranceTypeId { get; set; }
        public required string Name { get; set; }
    }
}
