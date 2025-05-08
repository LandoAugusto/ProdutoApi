using ProductApi.Core.Entities;
using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class ProductVersionTermType : IIdentityEntity
    {
        public int ProductVersionTermTypeId { get; set; }
        public int TermTypeId { get; set; }
        public int  ProductVersionId { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }

        public virtual TermType TermType { get; set; } = null!;
        public virtual ProductVersion ProductVersion { get; set; } = null!;

    }
}
