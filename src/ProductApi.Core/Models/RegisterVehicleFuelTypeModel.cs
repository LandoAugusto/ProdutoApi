namespace  ProductApi.Core.Models;
public class RegisterVehicleFuelTypeModel
{
    public int RegisterVehicleFuelTypeId { get; set; }
    public required string Name { get; set; }
    public int Status { get; set; }
    public int InclusionUserId { get; set; }
    public DateTime InclusionDate { get; set; }
    public int? LastChangeUserId { get; set; }
    public DateTime? LastChangeDate { get; set; }
}