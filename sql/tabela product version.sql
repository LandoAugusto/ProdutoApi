Use product
go


IF OBJECT_ID('dbo.ProductVersionLawsuitType', 'U') IS NOT NULL 
  DROP TABLE dbo.ProductVersionLawsuitType; 
GO
CREATE TABLE [dbo].[ProductVersionLawsuitType](
	[ProductVersionLawsuitTypeId] [int] IDENTITY(1,1) NOT NULL,
	[LawsuitTypeId] [int] NOT NULL,
	[ProductVersionId] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[InclusionUserId]		INT NOT NULL,
	[InclusionDate]			DATETIME NOT NULL,
	[LastChangeUserId]		INT NULL,
	[LastChangeDate]		DATETIME NULL
 CONSTRAINT [PK_ProductVersionLawsuitType_ProductVersionLawsuitTypeId] PRIMARY KEY CLUSTERED 
(
	[ProductVersionLawsuitTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

IF OBJECT_ID('dbo.ProductVersionTermType', 'U') IS NOT NULL 
  DROP TABLE dbo.ProductVersionTermType; 
GO
CREATE TABLE [dbo].[ProductVersionTermType](
	[ProductVersionTermTypeId] [int] IDENTITY(1,1) NOT NULL,
	[TermTypeId] [int] NOT NULL,
	[ProductVersionId] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[InclusionUserId]		INT NOT NULL,
	[InclusionDate]			DATETIME NOT NULL,
	[LastChangeUserId]		INT NULL,
	[LastChangeDate]		DATETIME NULL
 CONSTRAINT [PK_ProductVersionTermType_ProductVersionTermTypeId] PRIMARY KEY CLUSTERED 
(
	[ProductVersionTermTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


IF OBJECT_ID('dbo.ProductVersionClause', 'U') IS NOT NULL 
  DROP TABLE dbo.ProductVersionClause; 
GO
CREATE TABLE [dbo].[ProductVersionClause](
	[ProductVersionClauseId] [int] IDENTITY(1,1) NOT NULL,
	[ProductVersionId]		[int] NOT NULL,
	[ClauseId]				[int] NOT NULL,
	[ClauseTextId]				[int] NOT NULL,
	[InsuredAmountValueMin] [decimal](18, 6) NOT NULL,
	[InsuredAmountValueMax] [decimal](18, 6) NOT NULL,	
	[IsRequired]			[bit] NOT NULL,
	[Status]				[int] NOT NULL,
	[InclusionUserId]		INT NOT NULL,
	[InclusionDate]			DATETIME NOT NULL,
	[LastChangeUserId]		INT NULL,
	[LastChangeDate]		DATETIME NULL
 CONSTRAINT [PK_ProductVersionClause_ProductVersionClauseId] PRIMARY KEY CLUSTERED 
(
	[ProductVersionClauseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

IF OBJECT_ID('dbo.ClauseText', 'U') IS NOT NULL 
  DROP TABLE dbo.ClauseText; 
GO
CREATE TABLE [dbo].[ClauseText](
	[ClauseTextId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](100) NOT NULL,
	[Description] [varchar](max) NOT NULL,
	[TextType] [int] NOT NULL,
	[EffectiveDateStart] [datetime] NOT NULL,
	[EffectiveDateEnd] [datetime] NULL,
	[Status] [int] NOT NULL,
	[InclusionUserId]		INT NOT NULL,
	[InclusionDate]			DATETIME NOT NULL,
	[LastChangeUserId]		INT NULL,
	[LastChangeDate]		DATETIME NULL
 CONSTRAINT [PK_ClauseTextId] PRIMARY KEY CLUSTERED 
(
	[ClauseTextId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


IF OBJECT_ID('dbo.[InsuredObjectBlock]', 'U') IS NOT NULL 
  DROP TABLE dbo.InsuredObjectBlock; 
GO

CREATE TABLE [dbo].[InsuredObjectBlock](
	[InsuredObjectBlockId] [int] IDENTITY(1,1) NOT NULL,
	[InsuredObjectId] [int] NOT NULL,
	[PrintMode] [int] NOT NULL,
	[Contents] [varchar](max) NOT NULL,
	[StartInNewLine] [bit] NOT NULL,
	[PrintOrder] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[InclusionUserId] [int] NOT NULL,
	[InclusionDate] [datetime] NOT NULL,
	[LastChangeUserId] [int] NULL,
	[LastChangeDate] [datetime] NULL,
 CONSTRAINT [PK_InsuredObjectBlock] PRIMARY KEY CLUSTERED 
(
	[InsuredObjectBlockId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


IF OBJECT_ID('dbo.ProductVersionInsuredObject', 'U') IS NOT NULL 
  DROP TABLE dbo.ProductVersionInsuredObject; 
GO
CREATE TABLE [dbo].[ProductVersionInsuredObject](
	[ProductVersionInsuredObjectId] [int] IDENTITY(1,1) NOT NULL,
	[ProductVersionCoverageId]		[int] NOT NULL,
	[InsuredObjectId]		[int] NOT NULL,	
	[Status]				[int] NOT NULL,
	[InclusionUserId]		INT NOT NULL,
	[InclusionDate]			DATETIME NOT NULL,
	[LastChangeUserId]		INT NULL,
	[LastChangeDate]		DATETIME NULL
 CONSTRAINT [PK_ProductVersionInsuredObject] PRIMARY KEY CLUSTERED 
(
	[ProductVersionInsuredObjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


IF OBJECT_ID('dbo.[InsuredObject]', 'U') IS NOT NULL 
  DROP TABLE dbo.[InsuredObject]; 
GO
CREATE TABLE [dbo].[InsuredObject](
	[InsuredObjectId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Description] [varchar](255) NULL,
	[ExternalCode] [varchar](50) NULL,
	[Status] [int] NOT NULL,
	[InclusionUserId] [int] NOT NULL,
	[InclusionDate] [datetime] NOT NULL,
	[LastChangeUserId] [int] NULL,
	[LastChangeDate] [datetime] NULL,
 CONSTRAINT [PK_InsuredObject] PRIMARY KEY CLUSTERED 
(
	[InsuredObjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
IF OBJECT_ID('dbo.ProductVersionCoverage', 'U') IS NOT NULL 
  DROP TABLE dbo.ProductVersionCoverage; 
GO

CREATE TABLE [dbo].[ProductVersionCoverage](
	[ProductVersionCoverageId] [int] IDENTITY(1,1) NOT NULL,
	[ProductVersionId] [int] NOT NULL,
	[CoverageId] [int] NOT NULL,
	[CoverageBasic] [bit] NOT NULL,
	[LegacyCode] [varchar](10) NULL,
	[Status] [int] NOT NULL,
	[InclusionUserId] [int] NOT NULL,
	[InclusionDate] [datetime] NOT NULL,
	[LastChangeUserId] [int] NULL,
	[LastChangeDate] [datetime] NULL,
 CONSTRAINT [PK_ProductVersionCoverageId] PRIMARY KEY CLUSTERED 
(
	[ProductVersionCoverageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

IF OBJECT_ID('dbo.ProductVersionAcceptance', 'U') IS NOT NULL 
  DROP TABLE dbo.ProductVersionAcceptance; 
GO

CREATE TABLE [dbo].[ProductVersionAcceptance](
	[ProductVersionAcceptanceId] [int] IDENTITY(1,1) NOT NULL,
	[ProductVersionId] [int] NOT NULL, 	
	[ProfileId] [int] NOT NULL,
	[CommissionDefaultValue] [decimal](18, 6) NULL,
	[CommissionMinValue] [decimal](18, 6) NOT NULL,
	[CommissionMaxValue] [decimal](18, 6) NOT NULL,
	[PremiumMinValue] [decimal](18, 2) NULL,
	[PremiumMaxValue] [decimal](18, 2) NULL,
	[InsuredAmountValueMin] [decimal](18, 2) NOT NULL,
	[InsuredAmountValueMax] [decimal](18, 2) NOT NULL,
	[RetroactiveEffectiveDateStartDays] [int] NOT NULL,
	[LaterEffectiveDateStartDays] [int] NOT NULL,
	[PercentIofValue] [decimal](18, 2) NOT NULL,
	[GrievanceType] [int] NOT NULL,
	[GrievanceDefaultValue] [decimal](18, 6) NULL,
	[GrievanceMinValue] [decimal](18, 6) NOT NULL,
	[GrievanceMaxValue] [decimal](18, 6) NOT NULL,
	[DiscountDefaultValue] [decimal](18, 6) NULL,
	[DiscountMinValue] [decimal](18, 6) NULL,
	[DiscountMaxValue] [decimal](18, 6) NULL,
	[RequiresRecalculationIfExpired] [bit] NOT NULL,
	[Status] [int] NOT NULL,
	[InclusionUserId]		INT NOT NULL,
	[InclusionDate]			DATETIME NOT NULL,
	[LastChangeUserId]		INT NULL,
	[LastChangeDate]		DATETIME NULL
 CONSTRAINT [PK_ProductVersionAcceptance] PRIMARY KEY CLUSTERED 
(
	[ProductVersionAcceptanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


IF OBJECT_ID('dbo.ProductVersionPaymentInstallment', 'U') IS NOT NULL 
  DROP TABLE dbo.ProductVersionPaymentInstallment; 
GO
CREATE TABLE [dbo].[ProductVersionPaymentInstallment](
	[ProductVersionPaymentInstallmentId] [int] IDENTITY(1,1) NOT NULL,
	[ProductVersionPaymentMethodId] [int] NOT NULL,	
	[PaymentInstallmentId] [int] NOT NULL,	
	[Code] [int] NOT NULL,	
	[InclusionUserId]		INT NOT NULL,
	[InclusionDate]			DATETIME NOT NULL,
	[LastChangeUserId]		INT NULL,
	[LastChangeDate]		DATETIME NULL
 CONSTRAINT [PK_ProductVersionPaymentInstallment_ProductVersionPaymentInstallmentId] PRIMARY KEY CLUSTERED 
(
	[ProductVersionPaymentInstallmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

IF OBJECT_ID('dbo.ProductVersionPaymentMethod', 'U') IS NOT NULL 
  DROP TABLE dbo.ProductVersionPaymentMethod; 
GO
CREATE TABLE [dbo].[ProductVersionPaymentMethod](
	[ProductVersionPaymentMethodId] [int] IDENTITY(1,1) NOT NULL,
	[ProductVersionId] [int] NOT NULL,	
	[PaymentMethodId] [int] NOT NULL,	
	[Code] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[InclusionUserId]		INT NOT NULL,
	[InclusionDate]			DATETIME NOT NULL,
	[LastChangeUserId]		INT NULL,
	[LastChangeDate]		DATETIME NULL
 CONSTRAINT [PK_CProductVersionPaymentMethod_ProductVersionPaymentMethodId] PRIMARY KEY CLUSTERED 
(
	[ProductVersionPaymentMethodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

IF OBJECT_ID('dbo.ProductVersionPaymentFrequency', 'U') IS NOT NULL 
  DROP TABLE dbo.ProductVersionPaymentFrequency; 
GO

CREATE TABLE [dbo].[ProductVersionPaymentFrequency](
	[ProductVersionPaymentFrequencyId] [int] IDENTITY(1,1) NOT NULL,
	[ProductVersionId] [int] NOT NULL,
	[PaymentFrequencyId] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[InclusionUserId] [int] NOT NULL,
	[InclusionDate] [datetime] NOT NULL,
	[LastChangeUserId] [int] NULL,
	[LastChangeDate] [datetime] NULL,
 CONSTRAINT [PK_ProductVersionPaymentFrequency] PRIMARY KEY CLUSTERED 
(
	[ProductVersionPaymentFrequencyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

IF OBJECT_ID('dbo.PaymentMethod', 'U') IS NOT NULL 
  DROP TABLE dbo.PaymentMethod; 
GO
CREATE TABLE [dbo].[PaymentMethod](
	[PaymentMethodId] [int] IDENTITY(1,1) NOT NULL,
	[Name] VARCHAR(50) NOT NULL,
	[Code] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[InclusionUserId]		INT NOT NULL,
	[InclusionDate]			DATETIME NOT NULL,
	[LastChangeUserId]		INT NULL,
	[LastChangeDate]		DATETIME NULL
 CONSTRAINT [PK_PaymentMethod_PaymentMethodId] PRIMARY KEY CLUSTERED 
(
	[PaymentMethodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



IF OBJECT_ID('dbo.PaymentInstallment', 'U') IS NOT NULL 
  DROP TABLE dbo.PaymentInstallment; 
GO
CREATE TABLE [dbo].[PaymentInstallment](
	[PaymentInstallmentId]		[int] IDENTITY(1,1) NOT NULL,
	[Description]			VARCHAR(50) NOT NULL,
	[NumberOfInstallment]	[int] NOT NULL,	
	[IsInterest]			BiT NOT NULL,
	[RateInterest]			Decimal(10,9) NOT NULL,
	[Coefficient]			Decimal(10,9) NOT NULL,
	[Code]					[int] NOT NULL,
	[Status]				[int] NOT NULL,
	[InclusionUserId]		INT NOT NULL,
	[InclusionDate]			DATETIME NOT NULL,
	[LastChangeUserId]		INT NULL,
	[LastChangeDate]		DATETIME NULL
 CONSTRAINT [PK_PaymentInstallment_PaymentInstallmentId] PRIMARY KEY CLUSTERED 
(
	[PaymentInstallmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

IF OBJECT_ID('dbo.PaymentFrequency', 'U') IS NOT NULL 
  DROP TABLE dbo.PaymentFrequency; 
GO

CREATE TABLE [dbo].[PaymentFrequency](
	[PaymentFrequencyId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[Code] INT NULL,
	[Status] [int] NOT NULL,
	[InclusionUserId] [int] NOT NULL,
	[InclusionDate] [datetime] NOT NULL,
	[LastChangeUserId] [int] NULL,
	[LastChangeDate] [datetime] NULL,
 CONSTRAINT [PK_PaymentFrequency] PRIMARY KEY CLUSTERED 
(
	[PaymentFrequencyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


IF OBJECT_ID('dbo.FlexRateBroker', 'U') IS NOT NULL 
  DROP TABLE dbo.FlexRateBroker; 
GO
CREATE TABLE [dbo].[FlexRateBroker](
	[FlexRateBrokerId] [int] IDENTITY(1,1) NOT NULL,
	[FlexRateId] [int] NOT NULL,
	[BrokerId] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[InclusionUserId]		INT NOT NULL,
	[InclusionDate]			DATETIME NOT NULL,
	[LastChangeUserId]		INT NULL,
	[LastChangeDate]		DATETIME NULL
 CONSTRAINT [PK_FlexRateBroker] PRIMARY KEY CLUSTERED 
(
	[FlexRateBrokerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


IF OBJECT_ID('dbo.FlexRateProfile', 'U') IS NOT NULL 
  DROP TABLE dbo.FlexRateProfile; 
GO
CREATE TABLE [dbo].[FlexRateProfile](
	[FlexRateProfileId] [int] IDENTITY(1,1) NOT NULL,
	[FlexRateId] [int] NOT NULL,
	[ProfileId] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[InclusionUserId]		INT NOT NULL,
	[InclusionDate]			DATETIME NOT NULL,
	[LastChangeUserId]		INT NULL,
	[LastChangeDate]		DATETIME NULL
 CONSTRAINT [PK_FlexRateProfile] PRIMARY KEY CLUSTERED 
(
	[FlexRateProfileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

IF OBJECT_ID('dbo.FlexRateTaker', 'U') IS NOT NULL 
  DROP TABLE dbo.FlexRateTaker; 
GO
CREATE TABLE [dbo].[FlexRateTaker](
	[FlexRateTakerId]		[int] IDENTITY(1,1) NOT NULL,
	[FlexRateId]			[int] NOT NULL,
	[TakerId]				[int] NOT NULL,
	[Status]				[int] NOT NULL,
	[InclusionUserId]		INT NOT NULL,
	[InclusionDate]			DATETIME NOT NULL,
	[LastChangeUserId]		INT NULL,
	[LastChangeDate]		DATETIME NULL
 CONSTRAINT [PK_FlexRateTaker] PRIMARY KEY CLUSTERED 
(
	[FlexRateTakerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


IF OBJECT_ID('dbo.FlexRate', 'U') IS NOT NULL 
  DROP TABLE dbo.[FlexRate]; 
GO

CREATE TABLE [dbo].[FlexRate](
	[FlexRateId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Description] [varchar](255) NULL,	
	[ProductVersionId] [int] NOT NULL,	
	[ComissionMaxValue] [decimal](18, 6) NULL,
	[InsuredAmountValueMin] [decimal](18, 2) NOT NULL,
	[InsuredAmountValueMax] [decimal](18, 2) NOT NULL,
	[RateTypeId] [int] NOT NULL,
	[IsByValue] [bit] NOT NULL,
	[OperationTypeId] [int] NOT NULL,
	[OperationMinValue] [decimal](18, 6) NULL,
	[OperationMaxValue] [decimal](18, 6) NULL,
	[EffectiveDateStart] [datetime] NOT NULL,
	[EffectiveDateEnd] [datetime] NULL,
	[Status] [int] NOT NULL,
	[InclusionUserId]		INT NOT NULL,
	[InclusionDate]			DATETIME NOT NULL,
	[LastChangeUserId]		INT NULL,
	[LastChangeDate]		DATETIME NULL
 CONSTRAINT [PK_FlexRate] PRIMARY KEY CLUSTERED 
(
	[FlexRateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



IF OBJECT_ID('dbo.RateType', 'U') IS NOT NULL 
  DROP TABLE dbo.RateType; 
GO
CREATE TABLE [dbo].[RateType](
	[RateTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[Code] INT NULL,
	[Status] [int] NOT NULL,
	[InclusionUserId] [int] NOT NULL,
	[InclusionDate] [datetime] NOT NULL,
	[LastChangeUserId] [int] NULL,
	[LastChangeDate] [datetime] NULL,
 CONSTRAINT [PK_RateType] PRIMARY KEY CLUSTERED 
(
	[RateTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

IF OBJECT_ID('dbo.OperationType', 'U') IS NOT NULL 
  DROP TABLE dbo.OperationType; 
GO
CREATE TABLE [dbo].[OperationType](
	[OperationTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[Code] INT NULL,
	[Status] [int] NOT NULL,
	[InclusionUserId] [int] NOT NULL,
	[InclusionDate] [datetime] NOT NULL,
	[LastChangeUserId] [int] NULL,
	[LastChangeDate] [datetime] NULL,
 CONSTRAINT [PK_OperationTypeId] PRIMARY KEY CLUSTERED 
(
	[OperationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

IF OBJECT_ID('dbo.ProductVersion', 'U') IS NOT NULL 
  DROP TABLE dbo.ProductVersion; 
GO
CREATE TABLE [dbo].[ProductVersion](
	[ProductVersionId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL, 
	[Status] [int] NOT NULL,
	[InclusionUserId]		INT NOT NULL,
	[InclusionDate]			DATETIME NOT NULL,
	[LastChangeUserId]		INT NULL,
	[LastChangeDate]		DATETIME NULL
 CONSTRAINT [PK_ProductVersion] PRIMARY KEY CLUSTERED 
(
	[ProductVersionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
IF OBJECT_ID('dbo.Product', 'U') IS NOT NULL 
  DROP TABLE dbo.[Product]; 
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Description] [varchar](255) NOT NULL,
	[InsuranceBranchId] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[InclusionUserId] [int] NOT NULL,
	[InclusionDate] [datetime] NOT NULL,
	[LastChangeUserId] [int] NULL,
	[LastChangeDate] [datetime] NULL,
 CONSTRAINT [PK_ProductId] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

IF OBJECT_ID('dbo.[Coverage]', 'U') IS NOT NULL 
  DROP TABLE dbo.[Coverage]; 
GO
CREATE TABLE [dbo].[Coverage](
	[CoverageId] [int] IDENTITY(1,1) NOT NULL,	
	[Name] [varchar](100) NOT NULL,
	[Description] [varchar](255) NOT NULL,
	[BranchId] [int] NOT NULL,
	[CoverageGroupId] [int] NOT NULL,
	[ExternalCode] [varchar](50) NOT NULL,
	[Status] [int] NOT NULL,
	[InclusionUserId] [int] NOT NULL,
	[InclusionDate] [datetime] NOT NULL,
	[LastChangeUserId] [int] NULL,
	[LastChangeDate] [datetime] NULL,
 CONSTRAINT [PK_CoverageId] PRIMARY KEY CLUSTERED 
(
	[CoverageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


IF OBJECT_ID('dbo.[CoverageGroup]', 'U') IS NOT NULL 
  DROP TABLE dbo.[CoverageGroup]; 
GO
CREATE TABLE [dbo].[CoverageGroup](
	[CoverageGroupId] [int] IDENTITY(1,1) NOT NULL,	
	[Name] [varchar](100) NOT NULL,	
	[ExternalCode] [varchar](50) NOT NULL,
	[Status] [int] NOT NULL,
	[InclusionUserId] [int] NOT NULL,
	[InclusionDate] [datetime] NOT NULL,
	[LastChangeUserId] [int] NULL,
	[LastChangeDate] [datetime] NULL,
 CONSTRAINT [PK_CoverageGroupId] PRIMARY KEY CLUSTERED 
(
	[CoverageGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
IF OBJECT_ID('dbo.InsuranceBranch', 'U') IS NOT NULL 
  DROP TABLE dbo.InsuranceBranch; 
GO
CREATE TABLE [dbo].[InsuranceBranch](
	[InsuranceBranchId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[Description] [varchar](200) NOT NULL,
	[BranchId] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[InclusionUserId] [int] NOT NULL,
	[InclusionDate] [datetime] NOT NULL,
	[LastChangeUserId] [int] NULL,
	[LastChangeDate] [datetime] NULL,
 CONSTRAINT [PK_InsuranceBranchId] PRIMARY KEY CLUSTERED 
(
	[InsuranceBranchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


IF OBJECT_ID('dbo.Branch', 'U') IS NOT NULL 
  DROP TABLE dbo.Branch; 
GO
CREATE TABLE [dbo].[Branch](
	[BranchId] [int] IDENTITY(1,1) NOT NULL,
	[BranchTypeId] INT NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[Description] [varchar](200) NOT NULL,
	[ExternalCode] INT NULL,
	[Status] [int] NOT NULL,
	[InclusionUserId] [int] NOT NULL,
	[InclusionDate] [datetime] NOT NULL,
	[LastChangeUserId] [int] NULL,
	[LastChangeDate] [datetime] NULL,
 CONSTRAINT [PK_BranchId] PRIMARY KEY CLUSTERED 
(
	[BranchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
IF OBJECT_ID('dbo.BranchType', 'U') IS NOT NULL 
  DROP TABLE dbo.BranchType; 
GO
CREATE TABLE [dbo].[BranchType](
	[BranchTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NOT NULL,		
	[Status] [int] NOT NULL,
	[InclusionUserId] [int] NOT NULL,
	[InclusionDate] [datetime] NOT NULL,
	[LastChangeUserId] [int] NULL,
	[LastChangeDate] [datetime] NULL,
 CONSTRAINT [PK_BranchTypeId] PRIMARY KEY CLUSTERED 
(
	[BranchTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

IF OBJECT_ID('dbo.[Profile]', 'U') IS NOT NULL 
  DROP TABLE dbo.[Profile]; 
GO
CREATE TABLE [dbo].[Profile](
	[ProfileId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](100) NOT NULL,	
	[Status] [int] NOT NULL,
	[InclusionUserId] [int] NOT NULL,
	[InclusionDate] [datetime] NOT NULL,
	[LastChangeUserId] [int] NULL,
	[LastChangeDate] [datetime] NULL,
 CONSTRAINT [PK_Profile] PRIMARY KEY CLUSTERED 
(
	[ProfileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

--GO
--IF OBJECT_ID('dbo.User', 'U') IS NOT NULL 
--  DROP TABLE dbo.[User]; 
--GO
--CREATE TABLE [dbo].[User](

--	[Id] [int] IDENTITY(1,1) NOT NULL,
--	[UserId] [int] NOT NULL,	
--	[ProfileId] [int] NOT NULL,		
--	[DocumentTypeId] [int]  NULL,
--	[Document] VARCHAR(20) NULL,
--	[Name]  VARCHAR(100)  NOT NULL,
--	[Email]  VARCHAR(50)  NOT NULL,
--	[Code] [int]  NULL,
--	[Status] [int] NOT NULL,
--	[InclusionUserId]		INT NOT NULL,
--	[InclusionDate]			DATETIME NOT NULL,
--	[LastChangeUserId]		INT NULL,
--	[LastChangeDate]		DATETIME NULL
-- CONSTRAINT [PK_User_UserId] PRIMARY KEY CLUSTERED 
--(
--	[UserId] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
--) ON [PRIMARY]
--GO



--ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Profile_ProfileId] FOREIGN KEY(ProfileId)
--REFERENCES [dbo].[Profile] (ProfileId)
--GO

--ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_AspNetUsers_Id] FOREIGN KEY(UserId)
--REFERENCES [dbo].[AspNetUsers] (Id)
--GO

ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_InsuranceBranch_InsuranceBranchId] FOREIGN KEY([InsuranceBranchId])
REFERENCES [dbo].[InsuranceBranch] ([InsuranceBranchId])
GO

ALTER TABLE [dbo].[InsuranceBranch]  WITH CHECK ADD  CONSTRAINT [FK_InsuranceBranch_Branch_BranchId] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([BranchId])

ALTER TABLE [dbo].[Branch]  WITH CHECK ADD  CONSTRAINT [FK_Branch_BranchType_BranchTypeId] FOREIGN KEY(BranchTypeId)
REFERENCES [dbo].[BranchType] (BranchTypeId)
GO

ALTER TABLE [dbo].[Coverage]  WITH CHECK ADD  CONSTRAINT [FK_Coverage_CoverageGroup_CoverageGroupId] FOREIGN KEY(CoverageGroupId)
REFERENCES [dbo].[CoverageGroup] (CoverageGroupId)
GO

ALTER TABLE [dbo].[Coverage]  WITH CHECK ADD  CONSTRAINT [FK_Coverage_Branch_BranchId] FOREIGN KEY(BranchId)
REFERENCES [dbo].[Branch] (BranchId)
GO



ALTER TABLE [dbo].[ProductVersion]  WITH CHECK ADD  CONSTRAINT [FK_ProductVersion_Product_ProductId] FOREIGN KEY(ProductId)
REFERENCES [dbo].[Product] (ProductId)
GO


ALTER TABLE [dbo].[ProductVersionAcceptance]  WITH CHECK ADD  CONSTRAINT [FK_ProductVersionAcceptance_ProductVersion_ProductVersionId] FOREIGN KEY(ProductVersionId)
REFERENCES [dbo].[ProductVersion] (ProductVersionId)
GO


ALTER TABLE [dbo].[ProductVersionAcceptance]  WITH CHECK ADD  CONSTRAINT [FK_ProductVersionAcceptance_Profile_ProfileId] FOREIGN KEY(ProfileId)
REFERENCES [dbo].[Profile] (ProfileId)
GO

ALTER TABLE [dbo].[ProductVersionInsuredObject]  WITH CHECK ADD  CONSTRAINT [FK_ProductVersionInsuredObject_ProductVersionCoverage_ProductVersionCoverageId] FOREIGN KEY(ProductVersionCoverageId)
REFERENCES [dbo].[ProductVersionCoverage] ([ProductVersionCoverageId])

GO
ALTER TABLE [dbo].[ProductVersionInsuredObject]  WITH CHECK ADD  CONSTRAINT [FK_ProductVersionInsuredObject_InsuredObject_InsuredObjectId] FOREIGN KEY([InsuredObjectId])
REFERENCES [dbo].[InsuredObject] ([InsuredObjectId])
GO


ALTER TABLE [dbo].[ProductVersionClause]  WITH CHECK ADD  CONSTRAINT [FK_ProductVersionClause_Clause_ClauseId] FOREIGN KEY([ClauseId])
REFERENCES [dbo].[Clause] ([ClauseId])
GO

ALTER TABLE [dbo].[ProductVersionClause]  WITH CHECK ADD  CONSTRAINT [FK_ProductVersionClause_ClauseText_ClauseTextId] FOREIGN KEY([ClauseTextId])
REFERENCES [dbo].[ClauseText] ([ClauseTextId])
GO

ALTER TABLE [dbo].[ProductVersionClause]  WITH CHECK ADD  CONSTRAINT [FK_ProductVersionClause_ProductVersion_ProductVersionId] FOREIGN KEY([ProductVersionId])
REFERENCES [dbo].[ProductVersion] ([ProductVersionId])

GO
ALTER TABLE [dbo].[ProductVersionLawsuitType]  WITH CHECK ADD  CONSTRAINT [FK_ProductVersionLawsuitType_ProductVersion_ProductVersionId] FOREIGN KEY([ProductVersionId])
REFERENCES [dbo].[ProductVersion] ([ProductVersionId])
GO

ALTER TABLE [dbo].[ProductVersionLawsuitType]  WITH CHECK ADD  CONSTRAINT [FK_ProductVersionLawsuitType_LawsuitType_ProductVersionId] FOREIGN KEY([LawsuitTypeId])
REFERENCES [dbo].[LawsuitType] ([LawsuitTypeId])
GO

ALTER TABLE [dbo].[ProductVersionTermType]  WITH CHECK ADD  CONSTRAINT [FK_ProductVersionTermType_ProductVersion_ProductVersionId] FOREIGN KEY([ProductVersionId])
REFERENCES [dbo].[ProductVersion] ([ProductVersionId])
GO

ALTER TABLE [dbo].[ProductVersionTermType]  WITH CHECK ADD  CONSTRAINT [FK_ProductVersionTermType_TermType_ProductVersionId] FOREIGN KEY([TermTypeId])
REFERENCES [dbo].[TermType] ([TermTypeId])
GO

ALTER TABLE [dbo].[ProductVersionPaymentMethod]  WITH CHECK ADD  CONSTRAINT [FK_ProductVersionPaymentMethod_ProductVersion_ProductVersionId] FOREIGN KEY(ProductVersionId)
REFERENCES [dbo].[ProductVersion] (ProductVersionId)
GO

ALTER TABLE [dbo].[ProductVersionPaymentMethod]  WITH CHECK ADD  CONSTRAINT [FK_ProductVersionPaymentMethod_PaymentMethod_PaymentMethodId] FOREIGN KEY(PaymentMethodId)
REFERENCES [dbo].[PaymentMethod] (PaymentMethodId)
GO

ALTER TABLE [dbo].[ProductVersionPaymentInstallment]  WITH CHECK ADD  CONSTRAINT [FK_ProductVersionPaymentInstallment_PaymentInstallment_PaymentInstallmentId] FOREIGN KEY(PaymentInstallmentId)
REFERENCES [dbo].[PaymentInstallment] (PaymentInstallmentId)
GO


ALTER TABLE [dbo].[ProductVersionPaymentInstallment]  WITH CHECK ADD  CONSTRAINT [FK_ProductVersionPaymentInstallment_ProductVersionPaymentMethod_ProductVersionPaymentMethodId] FOREIGN KEY(ProductVersionPaymentMethodId)
REFERENCES [dbo].[ProductVersionPaymentMethod] (ProductVersionPaymentMethodId)
GO

ALTER TABLE [dbo].[ProductVersionPaymentFrequency]  WITH CHECK ADD  CONSTRAINT [FK_ProductVersionPaymentFrequency_PaymentFrequency_PaymentFrequencyId] FOREIGN KEY([PaymentFrequencyId])
REFERENCES [dbo].[PaymentFrequency] ([PaymentFrequencyId])
GO

ALTER TABLE [dbo].[ProductVersionPaymentFrequency]  WITH CHECK ADD  CONSTRAINT [FK_ProductVersionPaymentFrequency_ProductVersion_ProductVersionId] FOREIGN KEY(ProductVersionId)
REFERENCES [dbo].[ProductVersion] ([ProductVersionId])



ALTER TABLE [dbo].[FlexRate]  WITH CHECK ADD  CONSTRAINT [FK_FlexRate_ProductVersion_ProductVersionId] FOREIGN KEY([ProductVersionId])
REFERENCES [dbo].[ProductVersion] ([ProductVersionId])
GO
ALTER TABLE [dbo].[FlexRate]  WITH CHECK ADD  CONSTRAINT [FK_FlexRate_OperationType_OperationTypeId] FOREIGN KEY([OperationTypeId])
REFERENCES [dbo].[OperationType] ([OperationTypeId])
GO

ALTER TABLE [dbo].[FlexRate]  WITH CHECK ADD  CONSTRAINT [FK_FlexRate_RateType_RateTypeId] FOREIGN KEY(RateTypeId)
REFERENCES [dbo].[RateType] ([RateTypeid])
Go

ALTER TABLE [dbo].[FlexRateProfile]  WITH CHECK ADD  CONSTRAINT [FK_FlexRateProfile_Profile_ProfileId] FOREIGN KEY([ProfileId])
REFERENCES [dbo].[Profile] ([ProfileId])
GO

ALTER TABLE [dbo].[FlexRateProfile]  WITH CHECK ADD  CONSTRAINT [FK_FlexRateProfile_FlexRate_FlexRateId] FOREIGN KEY([FlexRateId])
REFERENCES [dbo].[FlexRate] ([FlexRateId])


ALTER TABLE [dbo].[ProductVersionCoverage]  WITH CHECK ADD  CONSTRAINT [FK_ProductVersionCoverage_Coverage_CoverageId] FOREIGN KEY([CoverageId])
REFERENCES [dbo].[Coverage] ([CoverageId])
GO
ALTER TABLE [dbo].[ProductVersionCoverage]  WITH CHECK ADD  CONSTRAINT [FK_ProductVersionCoverage_ProductVersion_ProductVersionId] FOREIGN KEY([ProductVersionId])
REFERENCES [dbo].[ProductVersion] ([ProductVersionId])
GO


INSERT INTO[dbo].[BranchType]  VALUES ( 'Risco Financeiros', 1,14, Getdate(),null,null)
INSERT INTO[dbo].[BranchType]  VALUES ( 'Patrrimonial', 1,14, Getdate(),null,null)
INSERT INTO[dbo].[BranchType]  VALUES ( 'Pessoas individual',1, 14, Getdate(),null,null)

INSERT INTO[dbo].[Branch]  VALUES ( 1,'GARANTIA SEGURADO - SETOR PRIVADO','GPRIVAD', 76,1, 14, Getdate(),null,null)
INSERT INTO[dbo].[Branch]  VALUES ( 1,'GARANTIA SEGURADO - SETOR PUBlICO','GPRIVAD', 75,1, 14, Getdate(),null,null)
INSERT INTO[dbo].[Branch]  VALUES ( 2,'EMPRESARIAL','COMPREENSIVO EMPRESARIAL', 18,1, 14, Getdate(),null,null)
INSERT INTO[dbo].[Branch]  VALUES ( 2,'RESIDENCIAL','COMPREENSIVO RESIDENCIAL', 14,1, 14, Getdate(),null,null)
INSERT INTO[dbo].[Branch]  VALUES ( 3,'VIDA','VIDA INDIVIDUAL', 91,1, 14, Getdate(),null,null)


SET IDENTITY_INSERT [dbo].[InsuranceBranch] ON 
GO
INSERT [dbo].[InsuranceBranch] ([InsuranceBranchId], [Name], [Description], [BranchId], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES (1, N'LICITA��O', N'Garantir proposta e assinatura', 1, 1, 14, CAST(N'2025-04-26T12:32:56.303' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[InsuranceBranch] ([InsuranceBranchId], [Name], [Description], [BranchId], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES (2, N'CONTRATO', N'Cumprimento de contratos', 1, 1, 14, CAST(N'2025-04-26T12:32:56.310' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[InsuranceBranch] ([InsuranceBranchId], [Name], [Description], [BranchId], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES (3, N'JUDICIAL', N'Substituir dep�sito judicial/penhora', 1, 1, 14, CAST(N'2025-04-26T12:32:56.310' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[InsuranceBranch] ([InsuranceBranchId], [Name], [Description], [BranchId], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES (4, N'ADMINISTRATIVA', N'Obriga��es com o poder p�blico', 1, 1, 14, CAST(N'2025-04-26T12:32:56.313' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[InsuranceBranch] ([InsuranceBranchId], [Name], [Description], [BranchId], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES (5, N'COMPREENSIVO EMPRESARIAL', N'', 2, 1, 14, CAST(N'2025-04-26T12:32:56.317' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[InsuranceBranch] ([InsuranceBranchId], [Name], [Description], [BranchId], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES (6, N'COMPREENSIVO RESIDENCIAL', N'', 3, 1, 14, CAST(N'2025-04-26T12:32:56.317' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[InsuranceBranch] ([InsuranceBranchId], [Name], [Description], [BranchId], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES (7, N'COMPREENSIVO VIDA INDIVIDUAL', N'', 4, 1, 14, CAST(N'2025-04-26T12:32:56.327' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[InsuranceBranch] OFF
GO

SET IDENTITY_INSERT [dbo].[Product] ON 
GO
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [InsuranceBranchId], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES (1, N'GARANTIA PRIVADAS LICITA��O', N'', 1, 1, 521, CAST(N'2025-04-19T02:39:39.190' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [InsuranceBranchId], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES (2, N'GARANTIA PRIVADAS CONTRATO', N'', 2, 1, 521, CAST(N'2025-04-19T02:39:39.190' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [InsuranceBranchId], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES (3, N'GARANTIA JUDICIAL', N'', 3, 1, 521, CAST(N'2025-04-19T02:39:39.190' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [InsuranceBranchId], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES (4, N'GARANTIA ADMINISTRATIVA', N'', 4, 1, 521, CAST(N'2025-04-19T02:39:39.190' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [InsuranceBranchId], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES (5, N'EMPRESA', N'', 5, 1, 521, CAST(N'2025-04-19T02:39:39.213' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [InsuranceBranchId], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES (6, N'RESIDENCIA', N'', 6, 1, 521, CAST(N'2025-04-19T02:39:39.213' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [InsuranceBranchId], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES (7, N'VIDA', N'', 7, 1, 521, CAST(N'2025-04-19T02:39:39.213' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO


INSERT INTO CoverageGroup VALUES ('B�sica', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('Coberturas Adicionais', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('Acidentes Pessoais Passageiros', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('Acidentes Pessoais de Tripulantes', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('Servi�os', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('Tradicionais', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('Judiciais', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('Deposito Recursal', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('Licitante', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('Adiantamento de Pagamento', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('Aduaneira', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('CONSTRU��O, FORNECIMENTO OU PRESTADOR ', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('EXECUTANTE CONSTRUTOR - T�RMINO DE OBRA', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('MANUTEN��O CORRETIVA ', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('RETEN��O DE PAGAMENTOS', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('ADMINISTRATIVO DE CR�DITOS TRIBUTARIOS', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('AG�NCIA NACIONAL DO PETR�LEO, G�S NATURAL E BIOCOM', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('AGENTE FINANCIADOR (COMPLETION)', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('FINANCEIRA ', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('IMOBILI�RIO', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('JUDICIAL PARA EXECU��O FISCAL ', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('PAGAMENTO', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('PARCELAMENTO ADMINISTRATIVO FISCAL', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('Licitante - Privado', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('Adiantamento de Pagamento - Privado', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('CONSTRU��O, FORNECIMENTO OU PRESTADOR  - Privado', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('MANUTEN��O CORRETIVA  - Privado', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('JUDICIAL � A��es Trabalhistas', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('Assist�ncia Vida Individual', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('ADUANEIRO', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('FIAN�A LOCAT�CIA', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('EMPRESARIAL', 76,1, 14, Getdate(),null,null)



INSERT INTO [dbo].[Coverage] VALUES ('EXECUTANTE CONSTRUTOR - T�RMINO DE OBRA - INFRAESTRUTURA', N'',1,1, N'10353', 1, 6,GETDATE(), NULL, NULL)

INSERT INTO [dbo].[Coverage] VALUES ( N'RETEN��O DE PAGAMENTO', N'',1,1, N'10353', 1, 6,GETDATE(), NULL, NULL)
GO
INSERT INTO [dbo].[Coverage]  VALUES ( N'ADIANTAMENTO DE PAGAMENTO', N'',1,1, N'10353', 1, 6,GETDATE(), NULL, NULL)
GO
INSERT INTO [dbo].[Coverage] VALUES ( N'MANUTEN��O CORRETIVA', N'',1,1, N'10353', 1, 6,GETDATE(), NULL, NULL)
GO
INSERT INTO [dbo].[Coverage]  VALUES ( N'ADUANEIRO', N'', 1,1, N'10353', 1, 6,GETDATE(), NULL, NULL)
GO
INSERT INTO [dbo].[Coverage]  VALUES (N'AG�NCIA NACIONAL DO PETR�LEO, G�S NATURAL E BIOCOMBUST�VEIS - ANP', N'', 1,1, N'10353', 1, 6,GETDATE(), NULL, NULL)
GO
INSERT INTO [dbo].[Coverage] VALUES ( N'T�RMINO DE OBRA - MANUTEN��O CORRETIVA', N'CORRETIVA', 1,1, N'10353', 1, 6,GETDATE(), NULL, NULL)
GO
INSERT INTO [dbo].[Coverage] VALUES ( N'PARCELAMENTO ADMINISTRATIVO FISCAL', N'',1,1, N'10353', 1, 6,GETDATE(), NULL, NULL)
GO
INSERT INTO [dbo].[Coverage] VALUES ( N'ADMINISTRATIVO DE CR�DITOS TRIBUT�RIOS', N'',1,1, N'10353', 1, 6,GETDATE(), NULL, NULL)
GO
INSERT INTO [dbo].[Coverage]  VALUES ( N'A��ES TRABALHISTAS E PREVIDENCI�RIAS', N'',1,1, N'10353', 1, 6,GETDATE(), NULL, NULL)
GO
INSERT INTO [dbo].[Coverage] VALUES ( N'JUDICIAL PARA EXECU��O FISCAL', N'', 1,1, N'10353', 1, 6,GETDATE(), NULL, NULL)
GO
INSERT INTO [dbo].[Coverage] VALUES ( N'JUDICIAL', N'', 1,1, N'10353', 1, 6,GETDATE(), NULL, NULL)
GO
INSERT INTO [dbo].[Coverage] VALUES ( N'EXECUTANTE CONSTRUTOR - T�RMINO DE OBRA - CEF', N'',1,1, N'10353', 1, 6,GETDATE(), NULL, NULL)
GO
INSERT INTO [dbo].[Coverage]  VALUES ( N'EXECUTANTE CONSTRUTOR - T�RMINO DE OBRA - BB', N'',1,1, N'10353', 1, 6,GETDATE(), NULL, NULL)
GO
INSERT INTO [dbo].[Coverage] VALUES ( N'AGENTE FINANCIADOR (COMPLETION)', N'',1,1, N'10353', 1, 6,GETDATE(), NULL, NULL)
GO
INSERT INTO [dbo].[Coverage]  VALUES ( N'LICITANTE', N'',1,1, N'10353', 1, 6,GETDATE(), NULL, NULL)
GO
INSERT INTO [dbo].[Coverage]  VALUES ( N'GARANTIA FINANCEIRA', N'', 1,1, N'10353', 1, 6,GETDATE(), NULL, NULL)
GO
INSERT INTO [dbo].[Coverage]VALUES ( N'GARANTIA DO LICITANTE ANEEL', N'',1,1, N'10353', 1, 6,GETDATE(), NULL, NULL)
GO
INSERT INTO [dbo].[Coverage]  VALUES ( N'PAGAMENTOS', N'',1,1, N'10353', 1, 6,GETDATE(), NULL, NULL)
GO
INSERT INTO [dbo].[Coverage] VALUES ( N'GARANTIA RECURSAL', N'',1,1, N'10353', 1, 6,GETDATE(), NULL, NULL)
GO
INSERT INTO [dbo].[Coverage]VALUES ( N'JUDICIAL PARA EXECU��O TRABALHISTA', N'', 1,1, N'10353', 1, 6,GETDATE(), NULL, NULL)
GO
INSERT INTO [dbo].[Coverage]  VALUES ( N'GARANTIA RECURSAL SME', N'',1,1, N'10353', 1, 6,GETDATE(), NULL, NULL)

INSERT INTO [dbo].[Profile]  VALUES ( N'Tomador', 1,  14, Getdate(),null,null)
GO
INSERT INTO [dbo].[Profile]  VALUES ( N'Corretor', 1,  14, Getdate(),null,null)
GO
INSERT INTO [dbo].[Profile]  VALUES ( N'Produtor', 1,  14, Getdate(),null,null)
GO
INSERT INTO [dbo].[Profile]  VALUES ( N'Administrador', 0,  6, Getdate(),null,null)
GO
INSERT INTO[dbo].[Profile]  VALUES ( N'�rea T�cnica', 0,  14, Getdate(),null,null)
GO



INSERT INTO [ProductVersion] VALUES(1,1,1,Getdate(),null,null)
INSERT INTO [ProductVersion] VALUES(2,1,1,Getdate(),null,null)
INSERT INTO [ProductVersion] VALUES(3,1,1,Getdate(),null,null)
INSERT INTO [ProductVersion] VALUES(4,1,1,Getdate(),null,null)

SET IDENTITY_INSERT [dbo].[ProductVersionCoverage] ON 
GO
INSERT [dbo].[ProductVersionCoverage] ([ProductVersionCoverageId], [ProductVersionId], [CoverageId], [CoverageBasic], [LegacyCode], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES (1, 1, 1, 1, NULL, 1, 99, CAST(N'2025-04-26T12:32:56.500' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVersionCoverage] ([ProductVersionCoverageId], [ProductVersionId], [CoverageId], [CoverageBasic], [LegacyCode], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES (2, 1, 2, 1, NULL, 1, 99, CAST(N'2025-04-26T12:32:56.503' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVersionCoverage] ([ProductVersionCoverageId], [ProductVersionId], [CoverageId], [CoverageBasic], [LegacyCode], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES (3, 2, 1, 1, NULL, 1, 99, CAST(N'2025-04-26T12:32:56.507' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVersionCoverage] ([ProductVersionCoverageId], [ProductVersionId], [CoverageId], [CoverageBasic], [LegacyCode], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES (4, 2, 2, 1, NULL, 1, 99, CAST(N'2025-04-26T12:32:56.510' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVersionCoverage] ([ProductVersionCoverageId], [ProductVersionId], [CoverageId], [CoverageBasic], [LegacyCode], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES (5, 2, 6, 1, NULL, 1, 99, CAST(N'2025-04-26T12:32:56.513' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVersionCoverage] ([ProductVersionCoverageId], [ProductVersionId], [CoverageId], [CoverageBasic], [LegacyCode], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES (6, 2, 7, 1, NULL, 1, 99, CAST(N'2025-04-26T12:32:56.517' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVersionCoverage] ([ProductVersionCoverageId], [ProductVersionId], [CoverageId], [CoverageBasic], [LegacyCode], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES (7, 2, 8, 1, NULL, 1, 99, CAST(N'2025-04-26T12:32:56.520' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVersionCoverage] ([ProductVersionCoverageId], [ProductVersionId], [CoverageId], [CoverageBasic], [LegacyCode], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES (8, 3, 9, 1, NULL, 1, 99, CAST(N'2025-04-26T12:32:56.523' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVersionCoverage] ([ProductVersionCoverageId], [ProductVersionId], [CoverageId], [CoverageBasic], [LegacyCode], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES (9, 3, 10, 1, NULL, 1, 99, CAST(N'2025-04-26T12:32:56.527' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVersionCoverage] ([ProductVersionCoverageId], [ProductVersionId], [CoverageId], [CoverageBasic], [LegacyCode], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES (10, 3, 11, 1, NULL, 1, 99, CAST(N'2025-04-26T12:32:56.527' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVersionCoverage] ([ProductVersionCoverageId], [ProductVersionId], [CoverageId], [CoverageBasic], [LegacyCode], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES (11, 3, 12, 1, NULL, 1, 99, CAST(N'2025-04-26T12:32:56.530' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVersionCoverage] ([ProductVersionCoverageId], [ProductVersionId], [CoverageId], [CoverageBasic], [LegacyCode], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES (12, 3, 13, 1, NULL, 1, 99, CAST(N'2025-04-26T12:32:56.533' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVersionCoverage] ([ProductVersionCoverageId], [ProductVersionId], [CoverageId], [CoverageBasic], [LegacyCode], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES (13, 4, 3, 1, NULL, 1, 99, CAST(N'2025-04-26T12:32:56.537' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVersionCoverage] ([ProductVersionCoverageId], [ProductVersionId], [CoverageId], [CoverageBasic], [LegacyCode], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES (14, 4, 4, 1, NULL, 1, 99, CAST(N'2025-04-26T12:32:56.540' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVersionCoverage] ([ProductVersionCoverageId], [ProductVersionId], [CoverageId], [CoverageBasic], [LegacyCode], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES (15, 4, 5, 1, NULL, 1, 99, CAST(N'2025-04-26T12:32:56.540' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[ProductVersionCoverage] OFF
GO


INSERT INTO [ProductVersionAcceptance] VALUES (1,1,20.00,0.01,	30.00,150.00,10000.00,1000.01,10000.00,10,10,7.38,2,30.000000,	30.000000,	100.000000,0,5.000000,15.000000,1,1,1,GETDATE(), nULL, NULL)
INSERT INTO [ProductVersionAcceptance] VALUES (2,1,20.00,0.01,	30.00,150.00,10000.00,1000.01,10000.00,10,10,7.38,2,30.000000,	30.000000,	100.000000,0,5.000000,15.000000,1,1,1,GETDATE(), nULL, NULL)
INSERT INTO [ProductVersionAcceptance] VALUES (3,1,20.00,0.01,	30.00,150.00,10000.00,1000.01,10000.00,10,10,7.38,2,30.000000,	30.000000,	100.000000,0,5.000000,15.000000,1,1,1,GETDATE(), nULL, NULL)
INSERT INTO [ProductVersionAcceptance] VALUES (4,1,20.00,0.01,	30.00,150.00,10000.00,1000.01,10000.00,10,10,7.38,2,30.000000,	30.000000,	100.000000,0,5.000000,15.000000,1,1,1,GETDATE(), nULL, NULL)


--INSERT INTO [dbo].[ProductVersionInsuredObject]  VALUES (2, 1, 1, 521, GETDATE(), null,null)
--GO
--INSERT INTO [dbo].[ProductVersionInsuredObject]  VALUES (2, 1, 1, 521, GETDATE(), null,null)
--GO
--INSERT INTO [dbo].[ProductVersionInsuredObject]  VALUES (3, 1, 1, 521, GETDATE(), null,null)
--GO
--INSERT INTO [dbo].[ProductVersionInsuredObject]  VALUES (3, 1, 1, 521, GETDATE(), null,null)
--GO
--INSERT INTO  [dbo].[ProductVersionInsuredObject]  VALUES (5, 1, 1, 6, GETDATE(), null,null)
--GO
--INSERT INTO [dbo].[ProductVersionInsuredObject]  VALUES (5, 1, 1, 6, GETDATE(), null,null)




INSERT INTO [dbo].[ClauseText] VALUES ( N'Teste 1', N'conte�do do texto do teste 1...', 0, CAST(N'2020-03-03T00:00:00.000' AS DateTime), NULL, 2, 14, GETDATE(), nULL, NULL)
GO
INSERT INTO [dbo].[ClauseText]  VALUES ( N'Teste de Texto para Cl�usula', N'Texto para Cl�usula, Texto para Cl�usula, Texto para Cl�usula, Texto para Cl�usula, Texto para Cl�usula, Texto para Cl�usula, Texto para Cl�usula, Texto para Cl�usula, Texto para Cl�usula, Texto para Cl�usula, Texto para Cl�usula, Texto para Cl�usula, Texto para Cl�usula, Texto para Cl�usula, Texto para Cl�usula, Texto para Cl�usula, Texto para Cl�usula, Texto para Cl�usula, Texto para Cl�usula, Texto para Cl�usula, Texto para Cl�usula, Texto para Cl�usula, Texto para Cl�usula, Texto para Cl�usula, Texto para Cl�usula, Texto para Cl�usula, Texto para Cl�usula, Texto para Cl�usula, Texto para Cl�usula, Texto para Cl�usula, Texto para Cl�usula, Texto para Cl�usula, Texto para Cl�usula, Texto para Cl�usula, Texto para Cl�usula, Texto para Cl�usula, Texto para Cl�usula, Texto para Cl�usula, Texto para Cl�usula, Texto para Cl�usula, ', 0, CAST(N'2020-03-03T00:00:00.000' AS DateTime), NULL, 1, 14, GETDATE(), nULL, NULL)
GO
INSERT INTO [dbo].[ClauseText]  VALUES ( N'Cobertura Trabalhista e Previdenciaria', N'CAP�TULO III 
COBERTURA ADICIONAL I: A��ES TRABALHISTAS E PREVIDENCI�RIAS:

Objeto: 

1.1. Esta cobertura adicional tem por objeto garantir exclusivamente ao segurado, at� o limite m�ximo de indeniza��o, o reembolso dos preju�zos comprovadamente sofridos em rela��o �s obriga��es de natureza trabalhista e previdenci�ria de responsabilidade do tomador oriundas do contrato principal, nas quais haja condena��o judicial do tomador ao pagamento e o segurado seja condenado subsidiariamente e que os valores tenham sido pagos por este, em decorr�ncia de senten�a condenat�ria transitada em julgado, bem como do tr�nsito em julgado dos c�lculos homologados ou ainda nas hip�teses de acordo entre as partes com pr�via anu�ncia da seguradora e consequente homologa��o do Poder Judici�rio. 

1.2. No que diz respeito � subsidiariedade, a responsabilidade do segurado ser� referente � rela��o trabalhista e/ou previdenci�ria entre o autor/reclamante da demanda trabalhista e o tomador, oriundas do contrato principal objeto desta garantia, ocorridas dentro do per�odo de vig�ncia da ap�lice. Consequentemente, a responsabilidade da seguradora ser� relativa ao per�odo de vig�ncia da ap�lice e que o d�bito trabalhista seja decorrente unicamente do lapso temporal garantido. 

2. Defini��es: 

Definem-se, para efeito desta cobertura adicional:

2.1. Autor/Reclamante: aquele que prop�e na justi�a trabalhista uma reclamat�ria e esta seja oriunda do contrato principal, firmado entre tomador e segurado, o qual � objeto da ap�lice em quest�o.

2.2. Limite M�ximo de Indeniza��o: valor m�ximo que a seguradora se responsabilizar� perante o segurado em fun��o do pagamento de indeniza��o, por cobertura contratada. 

2.3. Obriga��es Previdenci�rias: s�o aquelas especificadas pelas Leis n� 8.212/91 e todas as suas altera��es posteriores no que couber, bem como em leis esparsas, as quais disp�em sobre o recolhimento das contribui��es devidas a cada categoria de empregado, observando-se as datas e percentuais.

2.4. Obriga��es Trabalhistas: entende-se por obriga��es trabalhistas as decorrentes do pagamento da contrapresta��o devida ao empregado pelo seu labor dispensado ao tomador, bem como de seus encargos, sendo a remunera��o a que tem direito e todos seus reflexos, conforme determina a legisla��o em vigor. 

2.5. Responsabilidade Subsidi�ria: � aquela que recai sobre garantias que somente s�o exigidas quando a principal � insuficiente, ou seja, inadimplente o real empregador - prestador de servi�os, aqui denominado tomador, e esgotadas as tentativas de execut�-lo, pode-se exigir do segurado o cumprimento das obriga��es do r�u/tomador, desde que o segurado tenha participado da rela��o processual e conste do t�tulo executivo judicial. 

3. Expectativa, Reclama��o e Caracteriza��o do Sinistro:

3.1. Expectativa: quando o segurado receber cita��o(�es) judicial(ais) para apresentar defesa trabalhista e/ou previdenci�ria, cujo autor/reclamante reivindique cr�dito de natureza remunerat�ria ou direito de responsabilidade do tomador, dever� comunicar � seguradora, t�o logo seja citado, enviando c�pia(s) da(s) referida(s) cita��o(�es) e de todo(s) documento(s) juntado(s) aos autos tanto pelo autor/ reclamante como pelo r�u/tomador. 

3.1.1. Caso ocorra o item 3.1. acima e reste pendente o tr�nsito em julgado da senten�a, o segurado ter� seus direitos preservados at� decis�o definitiva.

3.1.2. Est�o cobertas por esta garantia somente as a��es trabalhistas distribu�das na Justi�a do Trabalho. 

3.2. Reclama��o: a Expectativa de Sinistro ser� convertida em Reclama��o, mediante comunica��o do segurado � seguradora, quando transitada em julgado a a��o, com o pagamento dos valores constantes na condena��o do segurado. 

3.2.1. Para a Reclama��o do Sinistro ser� necess�ria a apresenta��o dos seguintes documentos, sem preju�zo do disposto no item 7.2.1. das Condi��es Gerais: 

a) comprovante(s) de pagamento dos valores citados no item 3.2. desta Cobertura Adicional; 
b) certid�o(�es) de tr�nsito em julgado das senten�as proferidas e com os valores homologados; 
c) acordo devidamente homologado pelo Poder Judici�rio, se houver. 
d) guias de recolhimento do Fundo de Garantia por Tempo de Servi�o � FGTS; 
e) guias de recolhimento do INSS dos empregados que trabalharam nos servi�os contratados; 
f) documentos comprobat�rios de que o autor/reclamante trabalhou para o r�u/tomador no contrato principal dentro do per�odo de vig�ncia da ap�lice. 

3.3. A Reclama��o de Sinistros amparada pela presente cobertura poder� ser realizada durante o prazo prescricional, nos termos o art. 7�, inciso XXIX da Constitui��o da Rep�blica, no que se refere ao Direito do Trabalho. 

3.4. A n�o formaliza��o da Reclama��o do Sinistro tornar� sem efeito a Expectativa do Sinistro; 

3.5. Caracteriza��o: recebida a notifica��o, devidamente acompanhada dos documentos citados no item 3.2.1, a Seguradora dever� concluir o processo de regula��o de sinistro e emitir o relat�rio final de regula��o de sinistro. 

4. Acordos: 

4.1. Nas hip�teses, e no momento, em que o segurado tenha inten��o de realizar acordos nas a��es judiciais cobertas por esta cobertura, o mesmo dever� enviar uma mem�ria de c�lculo simples das verbas pleiteadas pelo autor, juntamente com uma estimativa do valor a ser acordado. 

4.2. A seguradora, ap�s receber os documentos constantes no item 4.1. e fizer sua an�lise da situa��o f�tico-jur�dica, enviar� ao segurado em at� 20 (vinte) dias da data do recebimento, sua aceita��o ao valor proposto, ou apresentar� um valor m�ximo alternativo ou ainda, manifestar-se-� se enviar� preposto para audi�ncia, cuja data ser� devidamente comunicada pelo segurado em tempo h�bil.

4.3. Acordos decorrentes das reclamat�rias trabalhistas e/ou previdenci�rias poder�o ser realizados, desde que cumpridos os requisitos dos itens 4.1. e 4.2. 

5. Indeniza��o: 

Caracterizado o sinistro na forma descrita no item 3.5., a seguradora indenizar� o segurado, por meio de reembolso, at� o limite m�ximo de indeniza��o estabelecido na ap�lice. 

6. Perda de Direito: 

Al�m das perdas de direito descritas na Cl�usula 11 das Condi��es Gerais, o segurado perder� o direito � indeniza��o na ocorr�ncia de uma ou mais das seguintes hip�teses:

I � N�o cumprimento por parte do segurado das exig�ncias descritas na Cl�usula 3 desta Cobertura Adicional.
II � Quando o segurado deixar de apresentar defesa ou perder prazo para interposi��o de recurso ou for considerado revel nos termos do artigo 844, par�grafo �nico da Consolida��o de Leis do Trabalho ou confessar. 
III � se o segurado firmar acordo sem a pr�via anu�ncia da seguradora ou este n�o for homologado pelo Poder Judici�rio. 
IV � Nos casos de condena��es do tomador e/ou segurado no que se refere a dano moral e/ou dano material, ass�dio moral ou sexual decorrentes de responsabilidade civil do tomador e/ou do segurado e indeniza��es por acidente de trabalho. 

7. Ratifica��o: 
Ratificam-se integralmente as disposi��es das Condi��es Gerais e Especiais que n�o tenham sido alteradas pela presente Condi��es Particulares.', 0, CAST(N'2020-03-12T00:00:00.000' AS DateTime), CAST(N'2021-08-31T00:00:00.000' AS DateTime), 1, 14, GETDATE(), nULL, NULL)
GO
INSERT [dbo].[ClauseText]  VALUES ( N'Teste de Inclus�o de Novo Texto', N'Bla bla blaBla bla blaBla bla blaBla bla blaBla bla blaBla bla blaBla bla blaBla bla blaBla bla blaBla bla blaBla bla blaBla bla blaBla bla blaBla bla blaBla bla blaBla bla blaBla bla blaBla bla blaBla bla blaBla bla blaBla bla blaBla bla bla', 0, CAST(N'2020-04-08T00:00:00.000' AS DateTime), NULL, 2, 6, GETDATE(), nULL, NULL)





INSERT INTO [dbo].[ProductVersionClause] VALUES ( 1,2, 2, 0.01,	100000.00, 1, 1,  521, GETDATE(), null,null)
GO
INSERT INTO [dbo].[ProductVersionClause] VALUES ( 1,2, 2, 1,100000.01,	1000000.00,1, 521, GETDATE(), null,null)
GO
INSERT INTO [dbo].[ProductVersionClause] VALUES ( 1,2, 2, 1,0.01,101010.10,1,  521, GETDATE(), null,null)
GO
INSERT INTO [dbo].[ProductVersionClause] VALUES ( 1,5, 3, 0.00,100000000.00,0, 1,   521, GETDATE(), null,null)
--GO
--INSERT INTO [dbo].[ProductVersionClause] VALUES ( 1,5, 3, 0, 1,  521, GETDATE(), null,null)
--GO
--INSERT INTO [dbo].[ProductVersionClause] VALUES ( 1,5, 3, 1, 1,  521, GETDATE(), null,null)
--GO
--INSERT INTO [dbo].[ProductVersionClause] VALUES ( 1,6,  2, 0, 1, 521, GETDATE(), null,null)
GO
SET IDENTITY_INSERT [dbo].[InsuredObject] ON 
GO
INSERT [dbo].[InsuredObject] ([InsuredObjectId], [Name], [Description], [ExternalCode], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES (1, N'Texto Objeto da Ap�lice', N'Aplica-se ao Recursal', NULL, 1, 521, CAST(N'2025-03-26T22:35:21.870' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[InsuredObject] ([InsuredObjectId], [Name], [Description], [ExternalCode], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES (2, N'Texto Objeto da Ap�lice', N'Aplica-se a licita��o e contrato', NULL, 1, 521, CAST(N'2025-03-26T22:35:21.877' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[InsuredObject] ([InsuredObjectId], [Name], [Description], [ExternalCode], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES (3, N'Texto Objeto da Ap�lice', N'Aplica-se ao Judicial Civil e Fiscal', NULL, 1, 521, CAST(N'2025-03-26T22:35:21.883' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[InsuredObject] ([InsuredObjectId], [Name], [Description], [ExternalCode], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES (4, N'teste1', N'teste1', NULL, 2, 521, CAST(N'2025-03-26T22:35:21.887' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[InsuredObject] OFF
GO
SET IDENTITY_INSERT [dbo].[InsuredObjectBlock] ON 
GO
INSERT [dbo].[InsuredObjectBlock] ([InsuredObjectBlockId], [InsuredObjectId], [PrintMode], [Contents], [StartInNewLine], [PrintOrder], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES (1, 1, 1, N'Nos termos previstos no par�grafo 11 do artigo 899 da CLT, esta ap�lice se presta a garantir o valor de dep�sito recursal referente ao recurso "@@TIPO_RECURSO@@", no �mbito do processo n� @@NUMERO_PROCESSO@@, cujo(s) reclamante(s) �(s�o) @@LISTA_RECLAMANTES@@ e atualmente tramita perante o @@NOME_VARA@@.', 0, 1, 1, 521, CAST(N'2025-03-26T22:35:21.893' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[InsuredObjectBlock] ([InsuredObjectBlockId], [InsuredObjectId], [PrintMode], [Contents], [StartInNewLine], [PrintOrder], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES (2, 1, 3, N'O valor desta ap�lice representa o valor do dep�sito recursal, acrescido em @@PERCENTUAL_AGRAVO@@%.', 0, 2, 1, 521, CAST(N'2025-03-26T22:35:21.907' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[InsuredObjectBlock] ([InsuredObjectBlockId], [InsuredObjectId], [PrintMode], [Contents], [StartInNewLine], [PrintOrder], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES (3, 2, 1, N'Este seguro garante a indeniza��o, at� o valor da garantia fixado na ap�lice, se o Tomador adjudicat�rio se recusar a assinar o Contrato Principal, nas condi��es propostas, dentro do prazo estabelecido no Edital de Concorr�ncia P�blica @@NUMERO_LICITACAO@@, Processo Interno n� 428/2019, cujo objeto � a presta��o de servi�os de limpeza urbana, compreendendo a coleta seletiva de materiais potencialmente recicl�veis; coleta, transporte, tratamento e destina��o final de res�duos de servi�os de sa�de incluindo animais mortos; coleta e transporte de res�duos domiciliares; coleta e transporte de res�duos domiciliares em locais de dif�cil acesso; varri��o manual de vias e logradouros p�blicos; varri��o mecanizada; fornecimento de equipe padr�o para realiza��o de servi�os correlatos e complementares aos servi�os de limpeza urbana; opera��o e manuten��o de usina de triagem incluindo o fornecimento de equipe e equipamentos.', 0, 1, 1, 521, CAST(N'2025-03-26T22:35:21.913' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[InsuredObjectBlock] ([InsuredObjectBlockId], [InsuredObjectId], [PrintMode], [Contents], [StartInNewLine], [PrintOrder], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES (4, 3, 1, N'Este contrato de seguro garante o pagamento de valores que o tomador necessite realizar no tramite de processos de execu��o fiscal.

CL�USULAS PARTICULARES:
- Esta ap�lice � emitida de acordo com as condi��es da Circular da SUSEP n� 477/13 e fica expressamente estabelecido que para todos os fins e efeitos de direito, a regula��o do sinistro observar� o disposto nas Condi��es Gerais da presente Ap�lice.    
- ESTA AP�LICE N�O PODER� SER UTILIZADA COMO COMPLEMENTO OU ENDOSSO DE AP�LICE ANTERIORMENTE FORNECIDA POR ESTA SEGURADORA REFERENTE AO MESMO EDITAL E/OU CONTRATO OBJETO DESTE SEGURO', 1, 1, 1, 521, CAST(N'2025-03-26T22:35:21.920' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[InsuredObjectBlock] OFF
GO

INSERT INTO [dbo].[ProductVersionInsuredObject]  VALUES (1, 1, 1, 521, GETDATE(), null,null)
GO


--INSERT INTO [dbo].[ProductVersionLawsuitType]  VALUES ( 5, 5, 1, 521, Getdate(),null,null)
--GO
--INSERT INTO [dbo].[ProductVersionLawsuitType]  VALUES ( 6, 5, 1, 521, Getdate(),null,null)
--GO
--INSERT INTO [dbo].[ProductVersionLawsuitType] VALUES ( 7, 5, 1, 521, Getdate(),null,null)
--GO
--INSERT INTO [dbo].[ProductVersionLawsuitType]  VALUES ( 8, 5, 1, 521, Getdate(),null,null)
--GO
--INSERT INTO [dbo].[ProductVersionLawsuitType]  VALUES ( 9, 5, 1, 521, Getdate(),null,null)
--GO
--INSERT INTO [dbo].[ProductVersionLawsuitType]  VALUES ( 1, 6, 1, 521, Getdate(),null,null)
--GO
--INSERT INTO [dbo].[ProductVersionLawsuitType]  VALUES ( 2, 6, 1, 521, Getdate(),null,null)
--GO
--INSERT INTO [dbo].[ProductVersionLawsuitType]  VALUES ( 3, 6, 1, 521, Getdate(),null,null)
--GO
--INSERT INTO [dbo].[ProductVersionLawsuitType]  VALUES ( 4, 6, 1, 521, Getdate(),null,null)
--GO
--INSERT INTO [dbo].[ProductVersionTermType]  VALUES ( 3, 1, 1, 72,Getdate(),null,null)
--GO
--INSERT INTO [dbo].[ProductVersionTermType]  VALUES ( 4, 1, 1, 72,Getdate(),null,null)
--GO
--INSERT INTO [dbo].[ProductVersionTermType]  VALUES ( 5, 1, 1, 72,Getdate(),null,null)
--GO
--INSERT INTO [dbo].[ProductVersionTermType]  VALUES ( 6, 5, 1, 72,Getdate(),null,null)
--GO


INSERT INTO PaymentMethod VALUES ('Ficha de compensa��o', 1, 1,1,GETDATE(), null, null)
INSERT INTO PaymentMethod VALUES ('Boleto', 2, 1,1,GETDATE(), null, null)
INSERT INTO PaymentMethod VALUES ('Fatura unificada',3, 1,1,GETDATE(), null, null)
INSERT INTO ProductVersionPaymentMethod VALUES(1,3,1,1,1,GETDATE(), null, null)




INSERT INTO PaymentInstallment Values('A vista',		1 ,0,0,0,99,1,1,getdate(), null,null)
INSERT INTO PaymentInstallment Values('1 + 1 sem juros',2 ,0,0,0,99,1,1,getdate(), null,null)
INSERT INTO PaymentInstallment Values('1 + 2 sem juros',3 ,0,0,0,99,1,1,getdate(), null,null)
INSERT INTO PaymentInstallment Values('1 + 3 sem juros',4 ,0,0,0,99,1,1,getdate(), null,null)
INSERT INTO PaymentInstallment Values('1 + 4 sem juros',5 ,0,0,0,99,1,1,getdate(), null,null)
INSERT INTO PaymentInstallment Values('1 + 5 sem juros',6 ,0,0,0,99,1,1,getdate(), null,null)
INSERT INTO PaymentInstallment Values('1 + 6 sem juros',7 ,0,0,0,99,1,1,getdate(), null,null)
INSERT INTO PaymentInstallment Values('1 + 7 sem juros',8 ,0,0,0,99,1,1,getdate(), null,null)
INSERT INTO PaymentInstallment Values('1 + 8 sem juros',9 ,0,0,0,99,1,1,getdate(), null,null)
INSERT INTO PaymentInstallment Values('1 + 9 sem juros',10 ,0,0,0,99,1,1,getdate(), null,null)
INSERT INTO PaymentInstallment Values('A vista',		1 ,0,0,0,99,1,1,getdate(), null,null)
INSERT INTO PaymentInstallment Values('1 + 1 sem juros',2 ,1,1,1,99,1,1,getdate(), null,null)
INSERT INTO PaymentInstallment Values('1 + 2 sem juros',3 ,1,1,2,99,1,1,getdate(), null,null)
INSERT INTO PaymentInstallment Values('1 + 3 sem juros',4 ,1,1,3,99,1,1,getdate(), null,null)
INSERT INTO PaymentInstallment Values('1 + 4 sem juros',5 ,1,1,4,99,1,1,getdate(), null,null)
INSERT INTO PaymentInstallment Values('1 + 5 sem juros',6 ,1,1,5,99,1,1,getdate(), null,null)
INSERT INTO PaymentInstallment Values('1 + 6 sem juros',7 ,1,1,6,99,1,1,getdate(), null,null)
INSERT INTO PaymentInstallment Values('1 + 7 sem juros',8 ,1,1,7,99,1,1,getdate(), null,null)
INSERT INTO PaymentInstallment Values('1 + 8 sem juros',9 ,1,1,8,99,1,1,getdate(), null,null)
INSERT INTO PaymentInstallment Values('1 + 9 sem juros',10 ,1,1,9,99,1,1,getdate(), null,null)


INSERT INTO ProductVersionPaymentInstallment VALUES (1,1, 99,1,GETDATE() , null, null)
INSERT INTO ProductVersionPaymentInstallment VALUES (1,2, 99,1,GETDATE() , null, null)
INSERT INTO ProductVersionPaymentInstallment VALUES (1,3, 99,1,GETDATE() , null, null)
INSERT INTO ProductVersionPaymentInstallment VALUES (1,4, 99,1,GETDATE() , null, null)
INSERT INTO ProductVersionPaymentInstallment VALUES (1,5, 99,1,GETDATE() , null, null)
INSERT INTO ProductVersionPaymentInstallment VALUES (1,6, 99,1,GETDATE() , null, null)
INSERT INTO ProductVersionPaymentInstallment VALUES (1,7, 99,1,GETDATE() , null, null)
INSERT INTO ProductVersionPaymentInstallment VALUES (1,8, 99,1,GETDATE() , null, null)
INSERT INTO ProductVersionPaymentInstallment VALUES (1,9, 99,1,GETDATE() , null, null)




INSERT [dbo].[PaymentFrequency] ( [Name], [Code], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES ( N'Mensal', N'1', 1, 1, CAST(N'2020-07-06T11:32:34.090' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PaymentFrequency] ( [Name], [Code], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES ( N'Di�rio', N'2', 1, 1, CAST(N'2020-07-06T11:32:34.090' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PaymentFrequency] ( [Name], [Code], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES ( N'Bimestral', N'3', 1, 1, CAST(N'2020-07-06T11:32:34.090' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PaymentFrequency] ( [Name], [Code], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES ( N'Trimestral', N'4', 1, 1, CAST(N'2020-07-06T11:32:34.093' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PaymentFrequency] ( [Name], [Code], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES ( N'Quadrimestral', N'5', 1, 1, CAST(N'2020-07-06T11:32:34.093' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PaymentFrequency] ( [Name], [Code], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES ( N'Semestral', N'6', 1, 1, CAST(N'2020-07-06T11:32:34.093' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PaymentFrequency] ( [Name], [Code], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES ( N'Anual', N'7', 1, 1, CAST(N'2020-07-06T11:32:34.097' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PaymentFrequency] ( [Name], [Code], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES ( N'Semanal', N'8', 1, 1, CAST(N'2020-07-06T11:32:34.100' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PaymentFrequency] ( [Name], [Code], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES ( N'�nica', N'9', 1, 1, CAST(N'2020-07-06T11:32:34.100' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[ProductVersionPaymentFrequency] (  [ProductVersionId], [PaymentFrequencyId], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES ( 1, 1, 1, 1, CAST(N'2020-07-06T11:32:37.870' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVersionPaymentFrequency] ( [ProductVersionId], [PaymentFrequencyId], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES ( 1, 2, 1, 1, CAST(N'2020-07-06T11:32:37.870' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVersionPaymentFrequency] ( [ProductVersionId], [PaymentFrequencyId], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES ( 1, 3, 1, 1, CAST(N'2020-07-06T11:32:37.870' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVersionPaymentFrequency] ( [ProductVersionId], [PaymentFrequencyId], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES ( 1, 4, 1, 1, CAST(N'2020-07-06T11:32:37.870' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVersionPaymentFrequency] ( [ProductVersionId], [PaymentFrequencyId], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES ( 1, 5, 1, 1, CAST(N'2020-07-06T11:32:37.870' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVersionPaymentFrequency] ( [ProductVersionId], [PaymentFrequencyId], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES ( 1, 6, 1, 1, CAST(N'2020-07-06T11:32:37.870' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVersionPaymentFrequency] ( [ProductVersionId], [PaymentFrequencyId], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES ( 1, 7, 1, 1, CAST(N'2020-07-06T11:32:37.870' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVersionPaymentFrequency] ( [ProductVersionId], [PaymentFrequencyId], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES ( 1, 8, 1, 1, CAST(N'2020-07-06T11:32:37.870' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVersionPaymentFrequency] ( [ProductVersionId], [PaymentFrequencyId], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES ( 1, 9, 1, 1, CAST(N'2020-07-06T11:32:37.870' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVersionPaymentFrequency] ( [ProductVersionId], [PaymentFrequencyId], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES ( 2, 1, 1, 1, CAST(N'2020-08-01T14:40:27.927' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVersionPaymentFrequency] ( [ProductVersionId], [PaymentFrequencyId], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES ( 2, 2, 1, 1, CAST(N'2020-08-01T14:40:27.927' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVersionPaymentFrequency] ( [ProductVersionId], [PaymentFrequencyId], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES ( 2, 3, 1, 1, CAST(N'2020-08-01T14:40:27.927' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVersionPaymentFrequency] ( [ProductVersionId], [PaymentFrequencyId], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES ( 2, 4, 1, 1, CAST(N'2020-08-01T14:40:27.927' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVersionPaymentFrequency] ( [ProductVersionId], [PaymentFrequencyId], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES ( 2, 5, 1, 1, CAST(N'2020-08-01T14:40:27.927' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVersionPaymentFrequency] ( [ProductVersionId], [PaymentFrequencyId], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES ( 2, 6, 1, 1, CAST(N'2020-08-01T14:40:27.927' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVersionPaymentFrequency] ( [ProductVersionId], [PaymentFrequencyId], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES ( 2, 7, 1, 1, CAST(N'2020-08-01T14:40:27.927' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVersionPaymentFrequency] ( [ProductVersionId], [PaymentFrequencyId], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES ( 2, 8, 1, 1, CAST(N'2020-08-01T14:40:27.927' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVersionPaymentFrequency] ( [ProductVersionId], [PaymentFrequencyId], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES ( 2, 9, 1, 1, CAST(N'2020-08-01T14:40:27.927' AS DateTime), NULL, NULL)
GO

INSERT INTO OperationType VALUES ('Desconto', 1, 1,1,GETDATE(), null, null)
INSERT INTO OperationType VALUES ('Agravo', 2, 1,1,GETDATE(), null, null)

INSERT INTO RateType VALUES ('Taxa', 1, 1,1,GETDATE(), null, null)
INSERT INTO RateType VALUES ('Pr�mio', 2, 1,1,GETDATE(), null, null)
INSERT INTO RateType VALUES ('Comiss�o', 3, 1,1,GETDATE(), null, null)

INSERT INTO  FlexRate VALUES ('Taxa Mix por Pr�mio desconto','Taxa Mix por Pr�mio',1,40.000000,0.01,999999999999.99,2,0,1,2.000000,6.000000,'2025-01-01 00:00:00.000','2026-01-01 00:00:00.000',1,1,GETDATE(), null, null)
INSERT INTO  FlexRate VALUES ('Taxa Mix por Pr�mio agravo','Taxa Mix por Pr�mio',1,40.000000,0.01,999999999999.99,2,0,2,2.000000,6.000000,'2025-01-01 00:00:00.000','2026-01-01 00:00:00.000',1,1,GETDATE(), null, null)

INSERT INTO  FlexRate VALUES ('Taxa Mix por Pr�mio Comiss�o','Taxa Mix por Comiss�o',1,40.000000,0.01,999999999999.99,3,0,1,2.000000,6.000000,'2025-01-01 00:00:00.000','2026-01-01 00:00:00.000',1,1,GETDATE(), null, null)
INSERT INTO  FlexRate VALUES ('Taxa Mix por Pr�mio Comiss�o','Taxa Mix por Comiss�o',1,40.000000,0.01,999999999999.99,3,0,2,2.000000,6.000000,'2025-01-01 00:00:00.000','2026-01-01 00:00:00.000',1,1,GETDATE(), null, null)


