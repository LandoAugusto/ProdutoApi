using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class FlexRateBorrower : IIdentityEntity
    {
        public int FlexRateBorrowerId { get; set; }
        public int FlexRateId { get; set; }
        public int BorrowerId { get; set; }
        public int Status { get; set; }
        public int UserId { get; set; }
        public DateTime DateUtc { get; set; }
        public virtual FlexRate FlexRate { get; set; } = null!;

    }
}

