﻿using ProductApi.Core.Entities;
using ProductApi.Core.Models;
using ProductApi.Core.Models.Product;

namespace ProductApi.Core.Infrastructure.Mapper
{
    public class ConfigurarationMapping : AutoMapper.Profile
    {
        public ConfigurarationMapping()
        {
            CreateMap<BranchModel, Branch>().ReverseMap();
            CreateMap<BranchTypeModel, BranchType>().ReverseMap();
            CreateMap<InsuranceBranchModel, InsuranceBranch>().ReverseMap();
            CreateMap<ProductModel, Core.Entities.Product>().ReverseMap();
            CreateMap<CoverageModel, Coverage>().ReverseMap();
            CreateMap<TermTypeModel, TermType>().ReverseMap();
            CreateMap<ProductVersionModel, ProductVersion>().ReverseMap();
            CreateMap<ProductVersionAcceptanceModel, ProductVersionAcceptance>().ReverseMap();
            CreateMap<ProductVersionClauseModel, ProductVersionClause>().ReverseMap();
            CreateMap<ProductVersionLawsuitTypeModel, ProductVersionLawsuitType>().ReverseMap();
            CreateMap<CalculationTypeAcceptanceModel, ProductVersionCalculationTypeAcceptance>().ReverseMap();
            CreateMap<PaymentFrequencyModel, PaymentFrequency>().ReverseMap();
            CreateMap<PaymentInstallmentModel, PaymentInstallment>().ReverseMap();
            CreateMap<InsuredObjectModel, InsuredObject>().ReverseMap();
            CreateMap<InsuredObjectBlockModel, InsuredObjectBlock>().ReverseMap();
            CreateMap<PaymentMethodModel, PaymentMethod>().ReverseMap();
            CreateMap<ClauseModel, Clause>().ReverseMap();
            CreateMap<ClauseTextModel, ClauseText>().ReverseMap();
            CreateMap<TermTypeModel, TermType>().ReverseMap();
            CreateMap<LawsuitTypeModel, LawsuitType>().ReverseMap();
            CreateMap<DocumentTypeModel, DocumentType>().ReverseMap();
            CreateMap<AddressTypeModel, AddressType>().ReverseMap();
            CreateMap<InsuredTypeModel, InsuredType>().ReverseMap();
            CreateMap<RecordStatusModel, RecordStatus>().ReverseMap();
            CreateMap<ProductComponentModel, ProductComponent>().ReverseMap();
            CreateMap<ComponentModel, Core.Entities.Component>().ReverseMap();
            CreateMap<ProductComponentScreenModel, ProductComponentScreen>().ReverseMap();
            CreateMap<CivilCourtModel, CivilCourt>().ReverseMap();
            CreateMap<LaborCourtModel, LaborCourt>().ReverseMap();
            CreateMap<StateModel, State>().ReverseMap();
            CreateMap<LegalRecourseTypeModel, LegalRecourseType>().ReverseMap();
            CreateMap<RegisterVehicleBrandModel, RegisterVehicleBrand>().ReverseMap();
            CreateMap<RegisterVehicleModelModel, RegisterVehicleModel>().ReverseMap();
            CreateMap<RegisterVehicleVersionModel, RegisterVehicleVersion>().ReverseMap();
            CreateMap<RegisterVehicleYearModel, RegisterVehicleYear>().ReverseMap();
            CreateMap<ContractTypeModel, ContractType>().ReverseMap();
            CreateMap<InsuranceTypeModel, InsuranceType>().ReverseMap();
            CreateMap<ConstructionTypeModel, ConstructionType>().ReverseMap();
            CreateMap<CalculationTypeModel, CalculationType>().ReverseMap();
            CreateMap<InsurerModel, Insurer>().ReverseMap();
            CreateMap<ClaimsExperienceBonusModel, ClaimsExperienceBonus>().ReverseMap();
            CreateMap<PropertyStructureModel, PropertyStructure>().ReverseMap();
            CreateMap<BuildingsContentsModel, BuildingsContents>().ReverseMap();
            CreateMap<UseTypeModel, UseType>().ReverseMap();
            CreateMap<ActivityModel, Activity>().ReverseMap();
            CreateMap<PersonTypeModel, PersonType>().ReverseMap();
            CreateMap<QuotationStatusModel, QuotationStatus>().ReverseMap();
            CreateMap<PlanModel, Plan>()
                .ForPath(dest => dest.PlanType.Name, m => m.MapFrom(a => a.Name))
                .ReverseMap();
            CreateMap<CoverageActivityLimitModel, ProductVersionCoverageActivityLimit>().ReverseMap();
            CreateMap<LocalizationModel, Localization>().ReverseMap();
            CreateMap<ProtectiveDevicesModel, ProtectiveDevices>().ReverseMap();
            CreateMap<FranchiseModel, Franchise>().ReverseMap();
            CreateMap<AssistanceModel, Assistance>().ReverseMap();
            CreateMap<QuestionnaireModel, Question>().ReverseMap();
            CreateMap<ResponseModel, Response>().ReverseMap();
            CreateMap<GenderModel, Gender>().ReverseMap();
            CreateMap<ProfessionModel, Profession>().ReverseMap();
            CreateMap<InspectionReasonModel, InspectionReason>().ReverseMap();
            CreateMap<InspectionRuleCoverageModel, InspectionRuleCoverage>().ReverseMap();

        }
    }
}
