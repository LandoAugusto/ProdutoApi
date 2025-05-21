using ProductApi.Core.Entities.Enumerators;

namespace ProductApi.Core.Models.Product
{
    public class ClauseModel
    {
        public int? ClauseId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public ClauseTypeEnum? ClauseType { get; set; }
    }
}
