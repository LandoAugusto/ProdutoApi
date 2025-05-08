using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class ProductVersionClause : IIdentityEntity
    {
        public int ProductVersionClauseId { get; set; }
        public int ProductVersionCoverageId { get; set; }
        public int ClauseId { get; set; }
        public int ClauseTextId { get; set; }
        public decimal? InsuredAmountValueMin { get; set; }
        public decimal? InsuredAmountValueMax { get; set; }
        public bool IsRequired { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
        public ProductVersion ProductVersion { get; set; } = null!;
        public Clause Clause { get; set; } = null!;
        public ClauseText ClauseText { get; set; } = null!;
    }
}
