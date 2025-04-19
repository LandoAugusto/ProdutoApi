using Product.Core.Models.Product;

namespace Product.Core.Models
{
    public class ProductVersionInsuredObjectModel
    {
        public int ProductVersionInsuredObjectId { get; set; }        
        public required ProductVersionModel ProductVersion { get; set; }
        public required InsuredObjectModel InsuredObject { get; set; }


    }
}
