using Product.Core.Entities;
using Product.Core.Model;
using Product.Core.Models;
using Product.Core.Models.Product;

namespace Product.Core.Infrastructure.Mapper
{
    public class ConfigurarationMapping : AutoMapper.Profile
    {
        public ConfigurarationMapping()
        {


            CreateMap<ProductModel, Core.Entities.Product>().ReverseMap();
            CreateMap<CoverageModel, Coverage>().ReverseMap();
            CreateMap<TermTypeModel, TermType>().ReverseMap();
            CreateMap<ProductVersionModel, ProductVersion>().ReverseMap();
            CreateMap<ProductVersionAcceptanceModel, ProductVersionAcceptance>().ReverseMap();
            CreateMap<ProductVersionInsuredObjectModel, ProductVersionInsuredObject>().ReverseMap();
            CreateMap<ProductVersionClauseModel, ProductVersionClause>().ReverseMap();
            CreateMap<ProductVersionLawsuitTypeModel, ProductVersionLawsuitType>().ReverseMap();
            CreateMap<ProductVersionTermTypeModel, ProductVersionTermType>().ReverseMap();
            CreateMap<ProductVersionPaymentMethodModel, ProductVersionPaymentMethod>().ReverseMap();
            CreateMap<ProductVersionPaymentFrequencyModel, ProductVersionPaymentFrequency>().ReverseMap();
            CreateMap<PaymentFrequencyModel, PaymentFrequency>().ReverseMap();
            CreateMap<PaymentInstallmentModel, PaymentInstallment>().ReverseMap();
            CreateMap<InsuredObjectModel, InsuredObject>().ReverseMap();
            CreateMap<InsuredObjectBlockModel, InsuredObjectBlock>().ReverseMap();
            CreateMap<PaymentMethodModel, PaymentMethod>().ReverseMap();
            CreateMap<ClauseModel, Clause>().ReverseMap();
            CreateMap<ClauseTextModel, ClauseText>().ReverseMap();
            CreateMap<TermTypeModel, TermType>().ReverseMap();
            CreateMap<LawsuitTypeModel, LawsuitType>().ReverseMap();            
        }
    }
}
