using Microsoft.EntityFrameworkCore;
using ProductApi.Core.Entities;
using ProductApi.Core.Models;

namespace ProductApi.Infra.Data.Contexts
{
    internal class ProductDbContext(DbContextOptions<ProductDbContext> options) : DbContext(options)
    {
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
        }

        public virtual DbSet<Branch> Branch { get; set; }
        public virtual DbSet<InsuranceBranch> InsuranceBranch { get; set; }
        public virtual DbSet<BranchType> BranchType { get; set; }
        public virtual DbSet<Profile> Profile { get; set; }
        public virtual DbSet<Core.Entities.Product> Product { get; set; }
        public virtual DbSet<ProductVersion> ProductVersion { get; set; }
        public virtual DbSet<ProductVersionAcceptance> ProductVersionAcceptance { get; set; }
        public virtual DbSet<ProductVersionInsuredObject> ProductVersionInsuredObject { get; set; }
        public virtual DbSet<ProductVersionClause> ProductVersionClause { get; set; }
        public virtual DbSet<ProductVersionTermType> ProductVersionTermType { get; set; }
        public virtual DbSet<ProductVersionLawsuitType> ProductVersionLawsuitType { get; set; }
        public virtual DbSet<ProductVersionPaymentMethod> ProductVersionPaymentMethod { get; set; }
        public virtual DbSet<ProductVersionPaymentInstallment> ProductVersionPaymentInstallment { get; set; }
        public virtual DbSet<ProductVersionPaymentFrequency> ProductVersionPaymentFrequency { get; set; }
        public virtual DbSet<ProductVersionCoverage> ProductVersionCoverage { get; set; }
        public virtual DbSet<ProductVersionContractType> ProductVersionContractType { get; set; }
        public virtual DbSet<ProductVersionCalculationTypeAcceptance> ProductVersionCalculationTypeAcceptance { get; set; }
        public virtual DbSet<PaymentFrequency> PaymentFrequency { get; set; }
        public virtual DbSet<PaymentInstallment> PaymentInstallment { get; set; }
        public virtual DbSet<PaymentMethod> PaymentMethod { get; set; }
        public virtual DbSet<LawsuitType> LawsuitType { get; set; }
        public virtual DbSet<InsuredObject> InsuredObject { get; set; }
        public virtual DbSet<InsuredObjectBlock> InsuredObjectBlock { get; set; }
        public virtual DbSet<Coverage> Coverage { get; set; }
        public virtual DbSet<TermType> TermType { get; set; }
        public virtual DbSet<LegalRecourseType> LegalRecourseType { get; set; }
        public virtual DbSet<LegalRecourseTypeParameter> LegalRecourseTypeParameter { get; set; }
        public virtual DbSet<ClauseText> ClauseText { get; set; }
        public virtual DbSet<AddressType> AddressType { get; set; }
        public virtual DbSet<DocumentType> DocumentType { get; set; }
        public virtual DbSet<InsuredType> InsuredType { get; set; }
        public virtual DbSet<RecordStatus> RecordStatus { get; set; }
        public virtual DbSet<RegisterVehicleAccessory> RegisterVehicleAccessory { get; set; }
        public virtual DbSet<RegisterVehicleBodyWorkType> RegisterVehicleBodyWorkType { get; set; }
        public virtual DbSet<RegisterVehicleBrand> RegisterVehicleBrand { get; set; }
        public virtual DbSet<RegisterVehicleColor> RegisterVehicleColor { get; set; }
        public virtual DbSet<RegisterVehicleDoor> RegisterVehicleDoor { get; set; }
        public virtual DbSet<RegisterVehicleFuelType> RegisterVehicleFuelType { get; set; }
        public virtual DbSet<RegisterVehicleModel> RegisterVehicleModel { get; set; }
        public virtual DbSet<RegisterVehiclePassengerCapacity> RegisterVehiclePassengerCapacity { get; set; }
        public virtual DbSet<RegisterVehicleType> RegisterVehicleType { get; set; }
        public virtual DbSet<RegisterVehicleUse> RegisterVehicleUse { get; set; }
        public virtual DbSet<RegisterVehicleVersion> RegisterVehicleVersion { get; set; }
        public virtual DbSet<RegisterVehicleYear> RegisterVehicleYear { get; set; }
        public virtual DbSet<ProductComponent> ProductComponent { get; set; }
        public virtual DbSet<ProductComponentScreen> ProductComponentScreen { get; set; }
        public virtual DbSet<Core.Entities.Component> Component { get; set; }
        public virtual DbSet<State> State { get; set; }
        public virtual DbSet<CivilCourt> CivilCourt { get; set; }
        public virtual DbSet<LaborCourt> LaborCourt { get; set; }
        public virtual DbSet<ContractType> ContractType { get; set; }
        public virtual DbSet<InsuranceType> InsuranceType { get; set; }
        public virtual DbSet<Insurer> Insurer { get; set; }
        public virtual DbSet<ClaimsExperienceBonus> ClaimsExperienceBonus { get; set; }
        public virtual DbSet<PropertyStructure> PropertyStructure { get; set; }
        public virtual DbSet<BuildingsContents> BuildingsContents { get; set; }
        public virtual DbSet<ConstructionTypeUseTypeStructure> ConstructionTypeUseTypeStructure { get; set; }
        public virtual DbSet<ConstructionTypeUseType> ConstructionTypeUseType { get; set; }
        public virtual DbSet<ProductVersionActivity> ProductVersionActivity { get; set; }
        public virtual DbSet<Activity> Activity { get; set; }
        public virtual DbSet<HazardGroup> HazardGroup { get; set; }
        public virtual DbSet<RiskType> RiskType { get; set; }
        public virtual DbSet<PersonType> PersonType { get; set; }
        public virtual DbSet<QuotationStatus> QuotationStatus { get; set; }
        public virtual DbSet<ProductVersionPlan> ProductVersionPlan { get; set; }
        public virtual DbSet<ProductVersionPlanAssistance> ProductVersionPlanAssistance { get; set; }
        public virtual DbSet<Assistance> Assistance { get; set; }
        public virtual DbSet<Plan> Plan { get; set; }
        public virtual DbSet<ProductVersionPlanActivity> ProductVersionPlanActivity { get; set; }
        public virtual DbSet<ProductVersionCoverageActivityLimit> ProductVersionCoverageActivityLimit { get; set; }
        public virtual DbSet<ProductVersionPlanCoverage> ProductVersionPlanCoverage { get; set; }
        public virtual DbSet<ProtectiveDevicesType> ProtectiveDevicesType { get; set; }
        public virtual DbSet<ProtectiveDevices> ProtectiveDevices { get; set; }
        public virtual DbSet<ProductVersionLocalization> ProductVersionLocalization { get; set; }
        public virtual DbSet<Localization> Localization { get; set; }
        public virtual DbSet<FranchiseType> FranchiseType { get; set; }
        public virtual DbSet<Franchise> Franchise { get; set; }
        public virtual DbSet<ComponentType> ComponentType { get; set; }
        public virtual DbSet<Question> Question { get; set; }
        public virtual DbSet<Response> Response { get; set; }
        public virtual DbSet<QuestionResponse> QuestionResponse { get; set; }
        public virtual DbSet<ProductVersionQuestionnaire> ProductVersionQuestionnaire { get; set; }

    }
}