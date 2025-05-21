namespace ProductApi.Core.Models
{
    public class ProductVersionModel
    {
        public int ProductVersionId { get; set; }
        public required ProductModel Product { get; set; }
        public required CoverageModel Coverage { get; set; }
    }
}
