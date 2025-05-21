namespace ProductApi.Core.Models
{
    public class ProductVersionLawsuitTypeModel
    {
        public int ProductVersionLawsuitTypeId { get; set; }
        public int ProductVersionId { get; set; }
        public int LawsuitTypeId { get; set; }
        public virtual ProductVersionModel ProductVersion { get; set; } = null!;
        public LawsuitTypeModel LawsuitType { get; set; } = null!;  
    }
}
