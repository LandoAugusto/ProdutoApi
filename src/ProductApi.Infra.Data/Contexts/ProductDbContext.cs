using Microsoft.EntityFrameworkCore;
using ProductApi.Core.Entities;

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
    
    }
}