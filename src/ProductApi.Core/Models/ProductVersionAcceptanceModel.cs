﻿namespace ProductApi.Core.Models
{
    public class ProductVersionAcceptanceModel
    {
        public int ProductVersionId { get; set; }       
        public decimal CommissionDefaultValue { get; set; }
        public decimal CommissionMinValue { get; set; }
        public decimal CommissionMaxValue { get; set; }
        public decimal PremiumMinValue { get; set; }
        public decimal PremiumMaxValue { get; set; }
        public decimal InsuredAmountValueMin { get; set; }
        public decimal InsuredAmountValueMax { get; set; }
        public int RetroactiveEffectiveDateStartDays { get; set; }
        public int LaterEffectiveDateStartDays { get; set; }
        public int GrievanceType { get; set; }
        public decimal PercentIofValue { get; set; }        
        public decimal GrievanceDefaultValue { get; set; }
        public decimal GrievanceMinValue { get; set; }
        public decimal GrievanceMaxValue { get; set; }
        public decimal DiscountDefaultValue { get; set; }
        public decimal DiscountMinValue { get; set; }
        public decimal DiscountMaxValue { get; set; }
        public bool RequiresRecalculationIfExpired { get; set; }
    }
}
