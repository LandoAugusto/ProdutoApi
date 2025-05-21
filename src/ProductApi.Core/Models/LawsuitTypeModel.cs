namespace ProductApi.Core.Models
{
    public class LawsuitTypeModel
    {
        public int LawsuitTypeId { get; set; }
        public string Name { get; set; }
        public string ExternalCode { get; set; }
        public bool IsComplementRequired { get; set; }
    }
}
