namespace ProductApi.Core.Models
{
    public class ProductVersionTermTypeModel
    {
        public int ProductVersionTermTypeId { get; set; }        
        public int ProductVersionId { get; set; }        
        public TermTypeModel TermType { get; set; } = null!;
    }
}
