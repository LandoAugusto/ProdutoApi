using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    internal class CalculationType : IIdentityEntity
    {
        public int InsuranceTypeId { get; set; }
        public required string Name { get; set; }
    }
}
