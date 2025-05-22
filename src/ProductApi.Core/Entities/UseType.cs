using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class UseType : IIdentityEntity
    {
        public int UseTypeId { get; set; }
        public required string Name { get; set; }
    }
}
