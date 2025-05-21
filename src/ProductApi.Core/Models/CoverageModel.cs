namespace ProductApi.Core.Models
{
    public class CoverageModel
    {
        public int CoverageId {  get; set; }
        public string Name { get; set; } = string.Empty;
        public string? Description { get; set; } = string.Empty;
        public string ExternalCode { get; set; } = string.Empty;
    }
}
