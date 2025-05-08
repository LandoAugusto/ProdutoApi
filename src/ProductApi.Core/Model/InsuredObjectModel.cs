﻿namespace ProductApi.Core.Models.Product
{
    public class InsuredObjectModel
    {
        public int InsuredObjectId { get; set; }
        public string Name { get; set; }
        public string? Description { get; set; }
        public required List<InsuredObjectBlockModel> InsuredObjectBlock { get; set; }
    }
}
