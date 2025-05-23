using ProductApi.Core.Entities;
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
            CreateMap<CalculationTypeAcceptanceModel, ProductVersionCalculationTypeAcceptance>().ReverseMap();
        }
    }
}
