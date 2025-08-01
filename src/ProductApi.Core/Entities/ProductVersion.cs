﻿using ProductApi.Core.Entities.Interfaces;

namespace ProductApi.Core.Entities
{
    public class ProductVersion : IIdentityEntity
    {
        public int ProductVersionId { get; set; }
        public int ProductId { get; set; }
        public int Status { get; set; }
        public int InclusionUserId { get; set; }
        public DateTime InclusionDate { get; set; }
        public int? LastChangeUserId { get; set; }
        public DateTime? LastChangeDate { get; set; }
        public virtual Product Product { get; set; } = null!;                
        public virtual ICollection<ProductVersionPaymentFrequency> ProductVersionPaymentFrequency { get; set; } = new HashSet<ProductVersionPaymentFrequency>();
        public virtual ICollection<ProductVersionLawsuitType> ProductVersionLawsuitType { get; set; } = new HashSet<ProductVersionLawsuitType>();
        public virtual ICollection<ProductVersionTermType> ProductVersionTermType { get; set; } = new HashSet<ProductVersionTermType>();
        public virtual ICollection<ProductVersionAcceptance> ProductVersionAcceptance { get; set; } = new HashSet<ProductVersionAcceptance>();
        public virtual ICollection<ProductVersionClause> ProductVersionClause { get; set; } = new HashSet<ProductVersionClause>();
        public virtual ICollection<ProductVersionPaymentMethod> ProductVersionPaymentMethod { get; set; } = new HashSet<ProductVersionPaymentMethod>();
        public virtual ICollection<ProductVersionCoverage> ProductVersionCoverage { get; set; } = new HashSet<ProductVersionCoverage>();
        public virtual ICollection<ProductVersionCalculationType> ProductVersionCalculationType { get; set; } = new HashSet<ProductVersionCalculationType>();
        public virtual ICollection<ProductVersionConstructionType> ProductVersionConstructionType { get; set; } = new HashSet<ProductVersionConstructionType>();
        public virtual ICollection<ProductVersionActivity> ProductVersionActivity { get; set; } = new HashSet<ProductVersionActivity>();
        public virtual ICollection<ProductVersionPlan> ProductVersionPlan { get; set; } = new HashSet<ProductVersionPlan>();
        public virtual ICollection<ProductVersionLocalization> ProductVersionLocalization { get; set; } = new HashSet<ProductVersionLocalization>();
        public virtual ICollection<ProductVersionQuestionnaire> ProductVersionQuestion { get; set; } = new HashSet<ProductVersionQuestionnaire>();
        public virtual ICollection<InspectionRuleActivity> InspectionRuleActivity { get; set; } = new HashSet<InspectionRuleActivity>();
        public virtual ICollection<InspectionRuleHazardGroup> InspectionRuleHazardGroup { get; set; } = new HashSet<InspectionRuleHazardGroup>();
        public virtual ICollection<InspectionRuleCoverage> InspectionRuleCoverage { get; set; } = new HashSet<InspectionRuleCoverage>();

    }
}