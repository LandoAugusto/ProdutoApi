namespace ProductApi.Core.Models
{
    public class InspectionRuleCoverageModel
    {
        public int InspectionRuleCoverageId { get; set; }
        public int InspectionReasonId { get; set; }       
        public decimal ValueMin { get; set; }
        public decimal ValueMax { get; set; }
    }
}
