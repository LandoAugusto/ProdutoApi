namespace ProductApi.Core.Models
{
    public class ProtectiveDevicesModel
    {
        public int ProtectiveDevicesId { get; set; }
        public int ProtectiveDevicesTypeId { get; set; }
        public required string Name { get; set; }
    }
}
