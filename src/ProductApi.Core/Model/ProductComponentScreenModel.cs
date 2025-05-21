namespace ProductApi.Core.Model
{
    public class ProductComponentScreenModel
    {
        public ProductComponentModel Product { get; set; }
        public List<ComponentModel> Component { get; set; } = [];
    }
}
