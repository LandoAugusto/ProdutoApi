namespace ProductApi.Core.Models
{
    public class ProductVersionCoverageActivityLimitModel
    {
        public int ProductVersionCoverageActivityLimitId { get; set; }
        public int ProductVersionCoverageId { get; set; }
        public int ActivityId { get; set; }
        public int ProfileId { get; set; }
        public decimal InsuredAmountMin { get; set; }
        public decimal InsuredAmountMax { get; set; }
        public decimal PercenteSubLimitBasic { get; set; }
        public decimal PercenteSubLimit { get; set; }
        public decimal PercenteLimitMin { get; set; }
        public decimal PercenteLimitMax { get; set; }
        public decimal PercenteLimitUF { get; set; }
    }
}
