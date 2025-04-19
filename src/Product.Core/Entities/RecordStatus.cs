using Product.Core.Entities.Interfaces;

namespace Product.Core.Entities
{
    public class RecordStatus : IIdentityEntity
    {
        public int RecordStatusId { get; set; }
        public string Description { get; set; }
        public int StatusId { get; set; }
        public int UserId { get; set; }
        public DateTime DateUtc { get; set; }

    }
}
