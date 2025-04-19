using Product.Core.Models.Product;

namespace Product.Core.Models
{
    public class ProductVersionClauseModel
    {
        public int ProductVersionClauseId { get; set; }
        public int ProductVersionId { get; set; }
        public int ClauseId { get; set; }
        public int TextId { get; set; }
        public bool IsRequired { get; set; }
        public ClauseModel Clause { get; set; }
        public ClauseTextModel Text { get; set; }        
    }
}
