using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class FlexRateBroker : IIdentityEntity
    {
        public int FlexRateBrokerId { get; set; }
        public int FlexRateId { get; set; }
        public int BrokerId { get; set; }
        public int Status { get; set; }
        public int UserId { get; set; }
        public DateTime DateUtc { get; set; }       
        public virtual FlexRate FlexRate { get; set; } = null!;

    }
}
