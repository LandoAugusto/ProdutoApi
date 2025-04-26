using ProductApi.Core.Entities;
using ProductApi.Core.Model;
using ProductApi.Core.Models;
using ProductApi.Core.Models.Product;

namespace ProductApi.Core.Infrastructure.Mapper
{
    public class ConfigurarationMapping : AutoMapper.Profile
    {
        public ConfigurarationMapping()
        {
            CreateMap<BranchTypeModel, BranchType>().ReverseMap();
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
        }
    }
}
