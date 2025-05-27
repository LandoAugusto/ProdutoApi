Use product
go

IF OBJECT_ID('dbo.ProductVersionCalculationTypeAcceptance', 'U') IS NOT NULL 
  DROP TABLE dbo.ProductVersionCalculationTypeAcceptance; 
GO
CREATE TABLE [dbo].[ProductVersionCalculationTypeAcceptance](
	[ProductVersionCalculationTypeAcceptanceId] [int] IDENTITY(1,1) NOT NULL,
	[ProductVersionCalculationTypeId] [int] NOT NULL,
	[IsCountDays] [bit] NOT NULL,
	[CountDayMin] [int] NOT NULL,
	[CountDayMax] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[InclusionUserId] [int] NOT NULL,
	[InclusionDate] [datetime] NOT NULL,
	[LastChangeUserId] [int] NULL,
	[LastChangeDate] [datetime] NULL,
 CONSTRAINT [PK_ProductVersionCalculationTypeAcceptance_ProductVersionCalculationTypeAcceptanceId] PRIMARY KEY CLUSTERED 
(
	[ProductVersionCalculationTypeAcceptanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

IF OBJECT_ID('dbo.[ProductVersionContractType]', 'U') IS NOT NULL 
  DROP TABLE dbo.[ProductVersionContractType]; 
GO
CREATE TABLE [dbo].[ProductVersionContractType](
	[ProductVersionContractTypeId] [int] IDENTITY(1,1) NOT NULL,
	[ProductVersionId] [int] NOT NULL,
	[ContractTypeId] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[InclusionUserId] [int] NOT NULL,
	[InclusionDate] [datetime] NOT NULL,
	[LastChangeUserId] [int] NULL,
	[LastChangeDate] [datetime] NULL,
 CONSTRAINT [PK_ProductVersionContractType_ProductVersionContractTypeId] PRIMARY KEY CLUSTERED 
(
	[ProductVersionContractTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

IF OBJECT_ID('dbo.[ContractType]', 'U') IS NOT NULL 
  DROP TABLE dbo.ContractType; 
GO
CREATE TABLE [dbo].[ContractType](
	[ContractTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](30) NOT NULL,
	[Status] [int] NOT NULL,
	[InclusionUserId] [int] NOT NULL,
	[InclusionDate] [datetime] NOT NULL,
 CONSTRAINT [PK_ContractType_ContractTypeId] PRIMARY KEY CLUSTERED 
(
	[ContractTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

IF OBJECT_ID('dbo.ProductVersionPlan', 'U') IS NOT NULL 
  DROP TABLE dbo.ProductVersionPlan; 
GO
CREATE TABLE [dbo].[ProductVersionPlan](
	[ProductVersionPlanId]			INT IDENTITY(1,1) NOT NULL,	
	[ProductVersionId]				INT NOT NULL,
	[Description]					VARCHAR(200) NOT NULL,
	[PlanId]						INT NOT NULL,
	[UseTypePropertyStructure]		INT NULL,
	[GenderId]						INT NULL,
	[ProfessionId]					INT NULL,
	[AgeMin]						INT NULL,
	[AgeMax]						INT NULL,	
	[Order]							INT NOT NULL,
	[Status]						INT NOT NULL,
	[InclusionUserId]				INT NOT NULL,
	[InclusionDate]					DATETIME NOT NULL,
	[LastChangeUserId]				INT NULL,
	[LastChangeDate]				DATETIME NULL
 CONSTRAINT [PK_ProductVersionPlan_ProductVersionPlanId] PRIMARY KEY CLUSTERED 
(
	[PlanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


IF OBJECT_ID('dbo.Plan', 'U') IS NOT NULL 
  DROP TABLE dbo.[Plan]; 
GO
CREATE TABLE [dbo].[Plan](
	[PlanId]						[int] IDENTITY(1,1) NOT NULL,	
	[Name]							VARCHAR(100) NOT NULL,	
	[Description]					VARCHAR(200) NOT NULL,
	[IsPersonalized]				[int] NOT NULL,
	[Status]						[int] NOT NULL,
	[InclusionUserId]				INT NOT NULL,
	[InclusionDate]					DATETIME NOT NULL,
	[LastChangeUserId]				INT NULL,
	[LastChangeDate]				DATETIME NULL
 CONSTRAINT [PK_Plans_PlanId] PRIMARY KEY CLUSTERED 
(
	[PlanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

IF OBJECT_ID('dbo.UseTypePropertyStructure', 'U') IS NOT NULL 
  DROP TABLE dbo.UseTypePropertyStructure; 
GO
CREATE TABLE [dbo].[UseTypePropertyStructure](
	[UseTypePropertyStructureId]					[int] IDENTITY(1,1) NOT NULL,	
	[UseTypeId]										[int] NOT NULL,
	[PropertyStructureId]							[int] NOT NULL,	
	[Status]										INT NOT NULL,		
	[InclusionUserId]								INT NOT NULL,
	[InclusionDate]									DATETIME NOT NULL,
	[LastChangeUserId]								INT NULL,
	[LastChangeDate]								DATETIME NULL
 CONSTRAINT [PK_UseTypePropertyStructure_UseTypePropertyStructureId] PRIMARY KEY CLUSTERED 
(
	[UseTypePropertyStructureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

IF OBJECT_ID('dbo.ProductVersionConstructionType', 'U') IS NOT NULL 
  DROP TABLE dbo.ProductVersionConstructionType; 
GO
CREATE TABLE [dbo].[ProductVersionConstructionType](
	[ProductVersionConstructionTypeId]		[int] IDENTITY(1,1) NOT NULL,
	[ProductVersionId]						[int] NOT NULL,	
	[ConstructionTypeId]					[int] NOT NULL,	
	[Status]								INT NOT NULL,		
	[InclusionUserId]						INT NOT NULL,
	[InclusionDate]							DATETIME NOT NULL,
	[LastChangeUserId]						INT NULL,
	[LastChangeDate]						DATETIME NULL
 CONSTRAINT [PK_ProductVersionConstructionType_ProductVersionConstructionTypeId] PRIMARY KEY CLUSTERED 
(
	[ProductVersionConstructionTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

IF OBJECT_ID('dbo.ProductVersionCalculationType', 'U') IS NOT NULL 
  DROP TABLE dbo.ProductVersionCalculationType; 
GO
CREATE TABLE [dbo].[ProductVersionCalculationType](
	[ProductVersionCalculationTypeId] [int] IDENTITY(1,1) NOT NULL,	
	[ProductVersionId]				[int] NOT NULL,		
	[ProfileId]										[int] NOT NULL,	
	[CalculationTypeId]				[int] NOT NULL,		
	[Status]						[int] NOT NULL,
	[InclusionUserId]				INT NOT NULL,
	[InclusionDate]					DATETIME NOT NULL,
	[LastChangeUserId]				INT NULL,
	[LastChangeDate]				DATETIME NULL
 CONSTRAINT [PK_ProductVersionCalculationType_ProductVersionCalculationTypeId] PRIMARY KEY CLUSTERED 
(
	[ProductVersionCalculationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

IF OBJECT_ID('dbo.CalculationType', 'U') IS NOT NULL 
  DROP TABLE dbo.CalculationType; 
GO
CREATE TABLE [dbo].[CalculationType](
	[CalculationTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](30) NOT NULL,
	[Status] [int] NOT NULL,
	[InclusionUserId] [int] NOT NULL,
	[InclusionDate] [datetime] NOT NULL,
 CONSTRAINT [PK_CalculationType_CalculationTypeId] PRIMARY KEY CLUSTERED 
(
	[CalculationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
IF OBJECT_ID('dbo.ConstructionTypeUseType', 'U') IS NOT NULL 
  DROP TABLE dbo.ConstructionTypeUseType; 
GO
CREATE TABLE [dbo].[ConstructionTypeUseType](
	[ConstructionTypeUseTypeId]						[int] IDENTITY(1,1) NOT NULL,
	[ConstructionTypeId]							[int] NOT NULL,
	[UseTypeId]										[int] NOT NULL,
	[ProfileId]										[int] NOT NULL,
	[Status]										INT NOT NULL,		
	[InclusionUserId]								INT NOT NULL,
	[InclusionDate]									DATETIME NOT NULL,
	[LastChangeUserId]								INT NULL,
	[LastChangeDate]								DATETIME NULL
 CONSTRAINT [PK_ConstructionTypeUseType_ConstructionTypeUseTypeId] PRIMARY KEY CLUSTERED 
(
	[ConstructionTypeUseTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

IF OBJECT_ID('dbo.ConstructionType', 'U') IS NOT NULL 
  DROP TABLE dbo.ConstructionType; 
GO
CREATE TABLE [dbo].[ConstructionType](
	[ConstructionTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](30) NOT NULL,
	[Status] [int] NOT NULL,
	[InclusionUserId] [int] NOT NULL,
	[InclusionDate] [datetime] NOT NULL,
	[LastChangeUserId] [int] NULL,
	[LastChangeDate] [datetime] NULL,
 CONSTRAINT [PK_ConstructionType_ConstructionTypeId] PRIMARY KEY CLUSTERED 
(
	[ConstructionTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

IF OBJECT_ID('dbo.UseType', 'U') IS NOT NULL 
  DROP TABLE dbo.UseType; 
GO
CREATE TABLE [dbo].[UseType](
	[UseTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](30) NOT NULL,
	[Status] [int] NOT NULL,
	[InclusionUserId] [int] NOT NULL,
	[InclusionDate] [datetime] NOT NULL,
 CONSTRAINT [PK_UseType_UseTypeId] PRIMARY KEY CLUSTERED 
(
	[UseTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

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



IF OBJECT_ID('dbo.PropertyStructure', 'U') IS NOT NULL 
  DROP TABLE dbo.PropertyStructure; 
GO
CREATE TABLE [dbo].[PropertyStructure](
	[PropertyStructureId]		[int] IDENTITY(1,1) NOT NULL,	
	[Name]							VARCHAR(30) NOT NULL,		
	[Status]						[int] NOT NULL,
	[InclusionUserId]				INT NOT NULL,
	[InclusionDate]					DATETIME NOT NULL,
	[LastChangeUserId]				INT NULL,
	[LastChangeDate]				DATETIME NULL
 CONSTRAINT [PK_PropertyStructure_PropertyStructureId] PRIMARY KEY CLUSTERED 
(
	[PropertyStructureId] ASC
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



IF OBJECT_ID('dbo.Insurer', 'U') IS NOT NULL 
  DROP TABLE dbo.Insurer; 
GO
CREATE TABLE [dbo].[Insurer](
	[InsurerId]										[int] IDENTITY(1,1) NOT NULL,	
	[Name]											VARCHAR(50) NOT NULL,
	[CodeNumber]									VARCHAR(20)NOT NULL,	
	[LegacyCode]									[int] NOT NULL,	
	[IsLeader]										[BIT] NOT NULL,	
	[IsCongenere]									[BIT] NOT NULL,	
	[Status]										[int] NOT NULL,
	[InclusionUserId]								INT NOT NULL,
	[InclusionDate]									DATETIME NOT NULL,
	[LastChangeUserId]								INT NULL,
	[LastChangeDate]								DATETIME NULL
 CONSTRAINT [PK_Insurer_InsurerId] PRIMARY KEY CLUSTERED 
(
	[InsurerId] ASC
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
	[IsGoodsRelationship ] BIT NOT NULL,
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

ALTER TABLE [dbo].[ProductVersionPlan]  WITH CHECK ADD  CONSTRAINT [FK_ProductVersionPlan_ProductVersion_ProductVersionId] FOREIGN KEY([ProductVersionId])
REFERENCES [dbo].[ProductVersion] ([ProductVersionId])
GO
ALTER TABLE [dbo].[ProductVersionPlan]  WITH CHECK ADD  CONSTRAINT [FK_ProductVersionPlan_Plan_PlanId] FOREIGN KEY([PlanId])
REFERENCES [dbo].[Plan] ([PlanId])
GO



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


ALTER TABLE [dbo].[ProductVersionCoverage]  WITH CHECK ADD  CONSTRAINT [FK_ProductVersionCoverage_Coverage_CoverageId] FOREIGN KEY([CoverageId])
REFERENCES [dbo].[Coverage] ([CoverageId])
GO
ALTER TABLE [dbo].[ProductVersionCoverage]  WITH CHECK ADD  CONSTRAINT [FK_ProductVersionCoverage_ProductVersion_ProductVersionId] FOREIGN KEY([ProductVersionId])
REFERENCES [dbo].[ProductVersion] ([ProductVersionId])
GO

ALTER TABLE [dbo].[ProductVersionConstructionType]  WITH CHECK ADD  CONSTRAINT [FK_ProductVersionConstructionType_ProductVersion_ProductVersionId] FOREIGN KEY([ProductVersionId])
REFERENCES [dbo].[ProductVersion] ([ProductVersionId])
GO

ALTER TABLE [dbo].[ProductVersionConstructionType]  WITH CHECK ADD  CONSTRAINT [FK_ProductVersionConstructionType_ProductVersion_ConstructionTypeId] FOREIGN KEY([ConstructionTypeId])
REFERENCES [dbo].[ConstructionType] ([ConstructionTypeId])
GO




ALTER TABLE [dbo].[ConstructionTypeUseType]  WITH CHECK ADD  CONSTRAINT [FK_ConstructionTypeUseType_UseType_UseTypeId] FOREIGN KEY([UseTypeId])
REFERENCES [dbo].[UseType] ([UseTypeId])
GO

ALTER TABLE [dbo].[ConstructionTypeUseType]  WITH CHECK ADD  CONSTRAINT [FK_ConstructionTypeUseType_ProductVersion_ConstructionTypeId] FOREIGN KEY([ConstructionTypeId])
REFERENCES [dbo].[ConstructionType] ([ConstructionTypeId])
GO

ALTER TABLE [dbo].[ConstructionTypeUseType]  WITH CHECK ADD  CONSTRAINT [FK_ConstructionTypeUseType_Profile_ProfileId] FOREIGN KEY([ProfileId])
REFERENCES [dbo].[Profile] ([ProfileId])
GO


ALTER TABLE [dbo].[UseTypePropertyStructure]  WITH CHECK ADD  CONSTRAINT [FK_UseTypePropertyStructure_UseType_UseTypeId] FOREIGN KEY([UseTypeId])
REFERENCES [dbo].[UseType] ([UseTypeid])
GO
ALTER TABLE [dbo].[UseTypePropertyStructure]  WITH CHECK ADD  CONSTRAINT [FK_UseTypePropertyStructure_PropertyStructure_PropertyStructureId] FOREIGN KEY([PropertyStructureId])
REFERENCES [dbo].[PropertyStructure] ([PropertyStructureId])
GO

ALTER TABLE [dbo].[ProductVersionContractType]  WITH CHECK ADD  CONSTRAINT [FK_ProductVersionContractType_ContractType_ContractTypeId] FOREIGN KEY([ContractTypeId])
REFERENCES [dbo].[ContractType] ([ContractTypeId])

ALTER TABLE [dbo].[ProductVersionContractType]  WITH CHECK ADD  CONSTRAINT [FK_ProductVersionContractType_ProductVersion_ProductVersionId] FOREIGN KEY([ProductVersionId])
REFERENCES [dbo].[ProductVersion] ([ProductVersionId])


INSERT INTO[dbo].[BranchType]  VALUES ( 'Risco Financeiros', 1,14, Getdate(),null,null)
INSERT INTO[dbo].[BranchType]  VALUES ( 'Patrrimonial', 1,14, Getdate(),null,null)
INSERT INTO[dbo].[BranchType]  VALUES ( 'Pessoas individual',1, 14, Getdate(),null,null)

INSERT INTO[dbo].[Branch]  VALUES ( 1,'GARANTIA SEGURADO - SETOR PRIVADO','GPRIVAD', 76,1, 14, Getdate(),null,null)
INSERT INTO[dbo].[Branch]  VALUES ( 1,'GARANTIA SEGURADO - SETOR PUBlICO','GPRIVAD', 75,1, 14, Getdate(),null,null)
INSERT INTO[dbo].[Branch]  VALUES ( 2,'EMPRESARIAL','COMPREENSIVO EMPRESARIAL', 18,1, 14, Getdate(),null,null)
INSERT INTO[dbo].[Branch]  VALUES ( 2,'RESIDENCIAL','COMPREENSIVO RESIDENCIAL', 14,1, 14, Getdate(),null,null)
INSERT INTO[dbo].[Branch]  VALUES ( 3,'VIDA','VIDA INDIVIDUAL', 91,1, 14, Getdate(),null,null)

GO
INSERT INTO [dbo].[InsuranceBranch]  VALUES ( N'LICITAÇÃO', N'Garantir proposta e assinatura', 1, 1, 14, GETDATE(), NULL, NULL)
GO
INSERT INTO [dbo].[InsuranceBranch] VALUES ( N'CONTRATO', N'Cumprimento de contratos', 1, 1, 14,  GETDATE(), NULL, NULL)
GO
INSERT INTO [dbo].[InsuranceBranch]  VALUES ( N'JUDICIAL', N'Substituir depósito judicial/penhora', 1, 1, 14,  GETDATE(), NULL, NULL)
GO
INSERT INTO [dbo].[InsuranceBranch]  VALUES ( N'ADMINISTRATIVA', N'Obrigações com o poder público', 1, 1, 14,  GETDATE(), NULL, NULL)
GO
INSERT INTO [dbo].[InsuranceBranch]  VALUES ( N'COMPREENSIVO EMPRESARIAL', N'', 2, 1, 14,  GETDATE(), NULL, NULL)
GO
INSERT INTO [dbo].[InsuranceBranch]  VALUES ( N'COMPREENSIVO RESIDENCIAL', N'', 3, 1, 14, GETDATE(), NULL, NULL)
GO
INSERT INTO [dbo].[InsuranceBranch] VALUES ( N'COMPREENSIVO VIDA INDIVIDUAL', N'', 4, 1, 14,  GETDATE(), NULL, NULL)

GO
INSERT INTO [dbo].[Product]  VALUES ( N'GARANTIA PRIVADAS LICITAÇÃO', N'', 1, 1, 521, GETDATE(), NULL, NULL)
GO
INSERT  INTO [dbo].[Product]  VALUES ( N'GARANTIA PRIVADAS CONTRATO', N'', 2, 1, 521, GETDATE(), NULL, NULL)
GO
INSERT  INTO[dbo].[Product]  VALUES ( N'GARANTIA JUDICIAL', N'', 3, 1, 521, GETDATE(), NULL, NULL)
GO
INSERT  INTO[dbo].[Product]  VALUES ( N'GARANTIA ADMINISTRATIVA', N'', 4, 1, 521, GETDATE(), NULL, NULL)
GO
INSERT  INTO[dbo].[Product]  VALUES ( N'EMPRESA', N'', 5, 1, 521, GETDATE(), NULL, NULL)
GO
INSERT  INTO[dbo].[Product]  VALUES ( N'RESIDENCIA', N'', 6, 1, 521, GETDATE(), NULL, NULL)
GO
INSERT INTO [dbo].[Product]  VALUES ( N'VIDA', N'', 7, 1, 521, GETDATE(), NULL, NULL)
GO

INSERT INTO [dbo].[CalculationType]  VALUES ( N'Anual', 1, 1, GETDATE())
GO
INSERT INTO  [dbo].[CalculationType] VALUES ( N'18 meses', 1, 1,GETDATE())
GO
INSERT INTO [dbo].[CalculationType]  VALUES ( N'Prazo Curto', 1, 1, GETDATE())
GO
INSERT  INTO [dbo].[CalculationType] VALUES ( N'Prazo Longo', 1, 1, GETDATE())
GO
INSERT  INTO [dbo].[CalculationType] VALUES ( N'Plurianual', 1, 1, GETDATE())
GO

INSERT INTO CoverageGroup VALUES ('Básica', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('Coberturas Adicionais', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('Acidentes Pessoais Passageiros', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('Acidentes Pessoais de Tripulantes', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('Serviços', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('Tradicionais', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('Judiciais', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('Deposito Recursal', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('Licitante', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('Adiantamento de Pagamento', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('Aduaneira', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('CONSTRUÇÃO, FORNECIMENTO OU PRESTADOR ', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('EXECUTANTE CONSTRUTOR - TÉRMINO DE OBRA', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('MANUTENÇÃO CORRETIVA ', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('RETENÇÃO DE PAGAMENTOS', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('ADMINISTRATIVO DE CRÉDITOS TRIBUTARIOS', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('AGÊNCIA NACIONAL DO PETRÓLEO, GÁS NATURAL E BIOCOM', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('AGENTE FINANCIADOR (COMPLETION)', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('FINANCEIRA ', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('IMOBILIÁRIO', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('JUDICIAL PARA EXECUÇÃO FISCAL ', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('PAGAMENTO', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('PARCELAMENTO ADMINISTRATIVO FISCAL', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('Licitante - Privado', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('Adiantamento de Pagamento - Privado', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('CONSTRUÇÃO, FORNECIMENTO OU PRESTADOR  - Privado', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('MANUTENÇÃO CORRETIVA  - Privado', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('JUDICIAL – Ações Trabalhistas', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('Assistência Vida Individual', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('ADUANEIRO', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('FIANÇA LOCATÍCIA', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('EMPRESARIAL', 76,1, 14, Getdate(),null,null)



INSERT INTO [dbo].[Coverage] VALUES ('EXECUTANTE CONSTRUTOR - TÉRMINO DE OBRA - INFRAESTRUTURA', N'',1,1, 0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'RETENÇÃO DE PAGAMENTO', N'',1,1,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'ADIANTAMENTO DE PAGAMENTO', N'',1,1,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'MANUTENÇÃO CORRETIVA', N'',1,1,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'ADUANEIRO', N'', 1,1,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'AGÊNCIA NACIONAL DO PETRÓLEO, GÁS NATURAL E BIOCOMBUSTÍVEIS - ANP', N'', 1,1,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'TÉRMINO DE OBRA - MANUTENÇÃO CORRETIVA', N'CORRETIVA', 1,1,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'PARCELAMENTO ADMINISTRATIVO FISCAL', N'',1,1,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'ADMINISTRATIVO DE CRÉDITOS TRIBUTÁRIOS', N'',1,1,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'AÇÕES TRABALHISTAS E PREVIDENCIÁRIAS', N'',1,1,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'JUDICIAL PARA EXECUÇÃO FISCAL', N'', 1,1,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'JUDICIAL', N'', 1,1,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'EXECUTANTE CONSTRUTOR - TÉRMINO DE OBRA - CEF', N'',1,1,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'EXECUTANTE CONSTRUTOR - TÉRMINO DE OBRA - BB', N'',1,1, 0,N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'AGENTE FINANCIADOR (COMPLETION)', N'',1,1, 0,N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'LICITANTE', N'',1,1, 0,N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'GARANTIA FINANCEIRA', N'', 1,1,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'GARANTIA DO LICITANTE ANEEL', N'',1,1,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'PAGAMENTOS', N'',1,1, 0,N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'GARANTIA RECURSAL', N'',1,1,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'JUDICIAL PARA EXECUÇÃO TRABALHISTA', N'', 1,1,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'GARANTIA RECURSAL SME', N'',1,1,0, N'10353', 1, 6,GETDATE(), NULL, NULL)

INSERT INTO [dbo].[Profile]  VALUES ( N'Administrador', 1,  14, GETDATE(),null,null)
INSERT INTO [dbo].[Profile]  VALUES ( N'Corretor', 1,  14, GETDATE(),null,null)

INSERT INTO [ProductVersion] VALUES(1,1,1,GETDATE(),null,null)
INSERT INTO [ProductVersion] VALUES(2,1,1,GETDATE(),null,null)
INSERT INTO [ProductVersion] VALUES(3,1,1,GETDATE(),null,null)
INSERT INTO [ProductVersion] VALUES(4,1,1,GETDATE(),null,null)
INSERT INTO [ProductVersion] VALUES(5,1,1,GETDATE(),null,null)
INSERT INTO [ProductVersion] VALUES(6,1,1,GETDATE(),null,null)
INSERT INTO [ProductVersion] VALUES(7,1,1,GETDATE(),null,null)

INSERT INTO [dbo].[ProductVersionCoverage] VALUES ( 1, 1, 1, NULL, 1, 99, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCoverage] VALUES ( 1, 2, 1, NULL, 1, 99, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCoverage] VALUES ( 2, 1, 1, NULL, 1, 99, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCoverage] VALUES ( 2, 2, 1, NULL, 1, 99, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCoverage] VALUES ( 2, 6, 1, NULL, 1, 99, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCoverage] VALUES ( 2, 7, 1, NULL, 1, 99, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCoverage] VALUES ( 2, 8, 1, NULL, 1, 99, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCoverage] VALUES ( 3, 9, 1, NULL, 1, 99, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCoverage] VALUES ( 3, 10, 1, NULL, 1, 99,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCoverage] VALUES ( 3, 11, 1, NULL, 1, 99,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCoverage] VALUES ( 3, 12, 1, NULL, 1, 99,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCoverage] VALUES ( 3, 13, 1, NULL, 1, 99,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCoverage] VALUES ( 4, 3, 1, NULL, 1, 99, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCoverage] VALUES ( 4, 4, 1, NULL, 1, 99, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCoverage] VALUES ( 4, 5, 1, NULL, 1, 99, GETDATE(), NULL, NULL)

INSERT INTO [ProductVersionAcceptance] VALUES (1,1,20.00,0.01,	30.00,150.00,10000.00,1000.01,10000.00,10,10,7.38,2,30.000000,	30.000000,	100.000000,0,5.000000,15.000000,1,1,1,GETDATE(), nULL, NULL)
INSERT INTO [ProductVersionAcceptance] VALUES (2,1,20.00,0.01,	30.00,150.00,10000.00,1000.01,10000.00,10,10,7.38,2,30.000000,	30.000000,	100.000000,0,5.000000,15.000000,1,1,1,GETDATE(), nULL, NULL)
INSERT INTO [ProductVersionAcceptance] VALUES (3,1,20.00,0.01,	30.00,150.00,10000.00,1000.01,10000.00,10,10,7.38,2,30.000000,	30.000000,	100.000000,0,5.000000,15.000000,1,1,1,GETDATE(), nULL, NULL)
INSERT INTO [ProductVersionAcceptance] VALUES (4,1,20.00,0.01,	30.00,150.00,10000.00,1000.01,10000.00,10,10,7.38,2,30.000000,	30.000000,	100.000000,0,5.000000,15.000000,1,1,1,GETDATE(), nULL, NULL)

INSERT INTO  [dbo].[CalculationType]  VALUES ( N'Anual', 1, 1,GETDATE())
INSERT INTO  [dbo].[CalculationType]  VALUES ( N'18 meses', 1, 1, GETDATE())
INSERT INTO  [dbo].[CalculationType]  VALUES ( N'Prazo Curto', 1, 1, GETDATE())
INSERT INTO  [dbo].[CalculationType]  VALUES ( N'Prazo Longo', 1, 1, GETDATE())
INSERT INTO  [dbo].[CalculationType]  VALUES ( N'Plurianual', 1, 1, GETDATE())

INSERT INTO [dbo].[ContractType]  VALUES ( N'Local a local', 1, 1, GETDATE())
INSERT INTO [dbo].[ContractType]  VALUES ( N'LMI único', 1, 1, GETDATE())
INSERT INTO [dbo].[ContractType]  VALUES ( N'Individual', 1, 1,GETDATE())

INSERT INTO [dbo].[ProductVersionContractType]  VALUES ( 5, 1, 1, 1, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionContractType]  VALUES ( 5, 2, 1, 1,  GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionContractType]  VALUES ( 6, 1, 1, 1,  GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionContractType]  VALUES ( 7, 3, 1, 1, GETDATE(), NULL, NULL)

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




INSERT INTO [dbo].[ClauseText] VALUES ( N'Teste 1', N'conteúdo do texto do teste 1...', 0, CAST(N'2020-03-03T00:00:00.000' AS DateTime), NULL, 2, 14, GETDATE(), nULL, NULL)
GO
INSERT INTO [dbo].[ClauseText]  VALUES ( N'Teste de Texto para Cláusula', N'Texto para Cláusula, Texto para Cláusula, Texto para Cláusula, Texto para Cláusula, Texto para Cláusula, Texto para Cláusula, Texto para Cláusula, Texto para Cláusula, Texto para Cláusula, Texto para Cláusula, Texto para Cláusula, Texto para Cláusula, Texto para Cláusula, Texto para Cláusula, Texto para Cláusula, Texto para Cláusula, Texto para Cláusula, Texto para Cláusula, Texto para Cláusula, Texto para Cláusula, Texto para Cláusula, Texto para Cláusula, Texto para Cláusula, Texto para Cláusula, Texto para Cláusula, Texto para Cláusula, Texto para Cláusula, Texto para Cláusula, Texto para Cláusula, Texto para Cláusula, Texto para Cláusula, Texto para Cláusula, Texto para Cláusula, Texto para Cláusula, Texto para Cláusula, Texto para Cláusula, Texto para Cláusula, Texto para Cláusula, Texto para Cláusula, Texto para Cláusula, ', 0, CAST(N'2020-03-03T00:00:00.000' AS DateTime), NULL, 1, 14, GETDATE(), nULL, NULL)
GO
INSERT INTO [dbo].[ClauseText]  VALUES ( N'Cobertura Trabalhista e Previdenciaria', N'CAPÍTULO III 
COBERTURA ADICIONAL I: AÇÕES TRABALHISTAS E PREVIDENCIÁRIAS:

Objeto: 

1.1. Esta cobertura adicional tem por objeto garantir exclusivamente ao segurado, até o limite máximo de indenização, o reembolso dos prejuízos comprovadamente sofridos em relação às obrigações de natureza trabalhista e previdenciária de responsabilidade do tomador oriundas do contrato principal, nas quais haja condenação judicial do tomador ao pagamento e o segurado seja condenado subsidiariamente e que os valores tenham sido pagos por este, em decorrência de sentença condenatória transitada em julgado, bem como do trânsito em julgado dos cálculos homologados ou ainda nas hipóteses de acordo entre as partes com prévia anuência da seguradora e consequente homologação do Poder Judiciário. 

1.2. No que diz respeito à subsidiariedade, a responsabilidade do segurado será referente à relação trabalhista e/ou previdenciária entre o autor/reclamante da demanda trabalhista e o tomador, oriundas do contrato principal objeto desta garantia, ocorridas dentro do período de vigência da apólice. Consequentemente, a responsabilidade da seguradora será relativa ao período de vigência da apólice e que o débito trabalhista seja decorrente unicamente do lapso temporal garantido. 

2. Definições: 

Definem-se, para efeito desta cobertura adicional:

2.1. Autor/Reclamante: aquele que propõe na justiça trabalhista uma reclamatória e esta seja oriunda do contrato principal, firmado entre tomador e segurado, o qual é objeto da apólice em questão.

2.2. Limite Máximo de Indenização: valor máximo que a seguradora se responsabilizará perante o segurado em função do pagamento de indenização, por cobertura contratada. 

2.3. Obrigações Previdenciárias: são aquelas especificadas pelas Leis nº 8.212/91 e todas as suas alterações posteriores no que couber, bem como em leis esparsas, as quais dispõem sobre o recolhimento das contribuições devidas a cada categoria de empregado, observando-se as datas e percentuais.

2.4. Obrigações Trabalhistas: entende-se por obrigações trabalhistas as decorrentes do pagamento da contraprestação devida ao empregado pelo seu labor dispensado ao tomador, bem como de seus encargos, sendo a remuneração a que tem direito e todos seus reflexos, conforme determina a legislação em vigor. 

2.5. Responsabilidade Subsidiária: é aquela que recai sobre garantias que somente são exigidas quando a principal é insuficiente, ou seja, inadimplente o real empregador - prestador de serviços, aqui denominado tomador, e esgotadas as tentativas de executá-lo, pode-se exigir do segurado o cumprimento das obrigações do réu/tomador, desde que o segurado tenha participado da relação processual e conste do título executivo judicial. 

3. Expectativa, Reclamação e Caracterização do Sinistro:

3.1. Expectativa: quando o segurado receber citação(ões) judicial(ais) para apresentar defesa trabalhista e/ou previdenciária, cujo autor/reclamante reivindique crédito de natureza remuneratória ou direito de responsabilidade do tomador, deverá comunicar à seguradora, tão logo seja citado, enviando cópia(s) da(s) referida(s) citação(ões) e de todo(s) documento(s) juntado(s) aos autos tanto pelo autor/ reclamante como pelo réu/tomador. 

3.1.1. Caso ocorra o item 3.1. acima e reste pendente o trânsito em julgado da sentença, o segurado terá seus direitos preservados até decisão definitiva.

3.1.2. Estão cobertas por esta garantia somente as ações trabalhistas distribuídas na Justiça do Trabalho. 

3.2. Reclamação: a Expectativa de Sinistro será convertida em Reclamação, mediante comunicação do segurado à seguradora, quando transitada em julgado a ação, com o pagamento dos valores constantes na condenação do segurado. 

3.2.1. Para a Reclamação do Sinistro será necessária a apresentação dos seguintes documentos, sem prejuízo do disposto no item 7.2.1. das Condições Gerais: 

a) comprovante(s) de pagamento dos valores citados no item 3.2. desta Cobertura Adicional; 
b) certidão(ões) de trânsito em julgado das sentenças proferidas e com os valores homologados; 
c) acordo devidamente homologado pelo Poder Judiciário, se houver. 
d) guias de recolhimento do Fundo de Garantia por Tempo de Serviço – FGTS; 
e) guias de recolhimento do INSS dos empregados que trabalharam nos serviços contratados; 
f) documentos comprobatórios de que o autor/reclamante trabalhou para o réu/tomador no contrato principal dentro do período de vigência da apólice. 

3.3. A Reclamação de Sinistros amparada pela presente cobertura poderá ser realizada durante o prazo prescricional, nos termos o art. 7º, inciso XXIX da Constituição da República, no que se refere ao Direito do Trabalho. 

3.4. A não formalização da Reclamação do Sinistro tornará sem efeito a Expectativa do Sinistro; 

3.5. Caracterização: recebida a notificação, devidamente acompanhada dos documentos citados no item 3.2.1, a Seguradora deverá concluir o processo de regulação de sinistro e emitir o relatório final de regulação de sinistro. 

4. Acordos: 

4.1. Nas hipóteses, e no momento, em que o segurado tenha intenção de realizar acordos nas ações judiciais cobertas por esta cobertura, o mesmo deverá enviar uma memória de cálculo simples das verbas pleiteadas pelo autor, juntamente com uma estimativa do valor a ser acordado. 

4.2. A seguradora, após receber os documentos constantes no item 4.1. e fizer sua análise da situação fático-jurídica, enviará ao segurado em até 20 (vinte) dias da data do recebimento, sua aceitação ao valor proposto, ou apresentará um valor máximo alternativo ou ainda, manifestar-se-á se enviará preposto para audiência, cuja data será devidamente comunicada pelo segurado em tempo hábil.

4.3. Acordos decorrentes das reclamatórias trabalhistas e/ou previdenciárias poderão ser realizados, desde que cumpridos os requisitos dos itens 4.1. e 4.2. 

5. Indenização: 

Caracterizado o sinistro na forma descrita no item 3.5., a seguradora indenizará o segurado, por meio de reembolso, até o limite máximo de indenização estabelecido na apólice. 

6. Perda de Direito: 

Além das perdas de direito descritas na Cláusula 11 das Condições Gerais, o segurado perderá o direito à indenização na ocorrência de uma ou mais das seguintes hipóteses:

I – Não cumprimento por parte do segurado das exigências descritas na Cláusula 3 desta Cobertura Adicional.
II – Quando o segurado deixar de apresentar defesa ou perder prazo para interposição de recurso ou for considerado revel nos termos do artigo 844, parágrafo único da Consolidação de Leis do Trabalho ou confessar. 
III – se o segurado firmar acordo sem a prévia anuência da seguradora ou este não for homologado pelo Poder Judiciário. 
IV – Nos casos de condenações do tomador e/ou segurado no que se refere a dano moral e/ou dano material, assédio moral ou sexual decorrentes de responsabilidade civil do tomador e/ou do segurado e indenizações por acidente de trabalho. 

7. Ratificação: 
Ratificam-se integralmente as disposições das Condições Gerais e Especiais que não tenham sido alteradas pela presente Condições Particulares.', 0, CAST(N'2020-03-12T00:00:00.000' AS DateTime), CAST(N'2021-08-31T00:00:00.000' AS DateTime), 1, 14, GETDATE(), nULL, NULL)
GO
INSERT [dbo].[ClauseText]  VALUES ( N'Teste de Inclusão de Novo Texto', N'Bla bla blaBla bla blaBla bla blaBla bla blaBla bla blaBla bla blaBla bla blaBla bla blaBla bla blaBla bla blaBla bla blaBla bla blaBla bla blaBla bla blaBla bla blaBla bla blaBla bla blaBla bla blaBla bla blaBla bla blaBla bla blaBla bla bla', 0, CAST(N'2020-04-08T00:00:00.000' AS DateTime), NULL, 2, 6, GETDATE(), nULL, NULL)


INSERT INTO [dbo].[ProductVersionClause] VALUES ( 1,2, 2, 0.01,	100000.00, 1, 1,  521, GETDATE(), null,null)
INSERT INTO [dbo].[ProductVersionClause] VALUES ( 1,2, 2, 1,100000.01,	1000000.00,1, 521, GETDATE(), null,null)
INSERT INTO [dbo].[ProductVersionClause] VALUES ( 1,2, 2, 1,0.01,101010.10,1,  521, GETDATE(), null,null)
INSERT INTO [dbo].[ProductVersionClause] VALUES ( 1,5, 3, 0.00,100000000.00,0, 1,   521, GETDATE(), null,null)

INSERT INTO [dbo].[InsuredObject]  VALUES ( N'Texto Objeto da Apólice', N'Aplica-se ao Recursal', NULL, 1, 521, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[InsuredObject]  VALUES ( N'Texto Objeto da Apólice', N'Aplica-se a licitação e contrato', NULL, 1, 521, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[InsuredObject]  VALUES ( N'Texto Objeto da Apólice', N'Aplica-se ao Judicial Civil e Fiscal', NULL, 1, 521, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[InsuredObject]  VALUES ( N'teste1', N'teste1', NULL, 2, 521, GETDATE(), NULL, NULL)



INSERT INTO [dbo].[InsuredObjectBlock]  VALUES ( 1, 1, N'Nos termos previstos no parágrafo 11 do artigo 899 da CLT, esta apólice se presta a garantir o valor de depósito recursal referente ao recurso "@@TIPO_RECURSO@@", no âmbito do processo nº @@NUMERO_PROCESSO@@, cujo(s) reclamante(s) é(são) @@LISTA_RECLAMANTES@@ e atualmente tramita perante o @@NOME_VARA@@.', 0, 1, 1, 521, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[InsuredObjectBlock]  VALUES ( 1, 3, N'O valor desta apólice representa o valor do depósito recursal, acrescido em @@PERCENTUAL_AGRAVO@@%.', 0, 2, 1, 521,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[InsuredObjectBlock]  VALUES ( 2, 1, N'Este seguro garante a indenização, até o valor da garantia fixado na apólice, se o Tomador adjudicatário se recusar a assinar o Contrato Principal, nas condições propostas, dentro do prazo estabelecido no Edital de Concorrência Pública @@NUMERO_LICITACAO@@, Processo Interno nº 428/2019, cujo objeto é a prestação de serviços de limpeza urbana, compreendendo a coleta seletiva de materiais potencialmente recicláveis; coleta, transporte, tratamento e destinação final de resíduos de serviços de saúde incluindo animais mortos; coleta e transporte de resíduos domiciliares; coleta e transporte de resíduos domiciliares em locais de difícil acesso; varrição manual de vias e logradouros públicos; varrição mecanizada; fornecimento de equipe padrão para realização de serviços correlatos e complementares aos serviços de limpeza urbana; operação e manutenção de usina de triagem incluindo o fornecimento de equipe e equipamentos.', 0, 1, 1, 521,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[InsuredObjectBlock]  VALUES ( 3, 1, N'Este contrato de seguro garante o pagamento de valores que o tomador necessite realizar no tramite de processos de execução fiscal.

CLÁUSULAS PARTICULARES:
- Esta apólice é emitida de acordo com as condições da Circular da SUSEP nº 477/13 e fica expressamente estabelecido que para todos os fins e efeitos de direito, a regulação do sinistro observará o disposto nas Condições Gerais da presente Apólice.    
- ESTA APÓLICE NÃO PODERÁ SER UTILIZADA COMO COMPLEMENTO OU ENDOSSO DE APÓLICE ANTERIORMENTE FORNECIDA POR ESTA SEGURADORA REFERENTE AO MESMO EDITAL E/OU CONTRATO OBJETO DESTE SEGURO', 1, 1, 1, 521, GETDATE(), NULL, NULL)
GO
INSERT INTO [dbo].[ProductVersionInsuredObject]  VALUES (1, 1, 1, 521, GETDATE(), null,null)
GO

INSERT INTO [dbo].[ProductVersionCalculationTypeAcceptance]  VALUES ( 1, 0, 365, 365, 1, 1, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCalculationTypeAcceptance]  VALUES ( 2, 0, 365, 547, 1, 1, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCalculationTypeAcceptance]  VALUES ( 3, 1, 0, 365, 1, 1,   GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCalculationTypeAcceptance]  VALUES ( 4, 1, 365, 545, 1, 1, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCalculationTypeAcceptance]  VALUES ( 5, 0, 365, 365, 1, 1, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCalculationTypeAcceptance]  VALUES ( 6, 0, 365, 365, 1, 1, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCalculationTypeAcceptance]  VALUES ( 7, 0, 365, 365, 1, 1, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCalculationTypeAcceptance]  VALUES ( 8, 0, 365, 365, 1, 1, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCalculationTypeAcceptance]  VALUES ( 9, 0, 365, 365, 1, 1, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCalculationTypeAcceptance]  VALUES ( 1, 0, 365, 365, 1, 1, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCalculationTypeAcceptance]  VALUES ( 2, 0, 365, 547, 1, 1, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCalculationTypeAcceptance]  VALUES ( 3, 1, 0, 365, 1, 1,   GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCalculationTypeAcceptance]  VALUES ( 4, 1, 365, 545, 1, 1, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCalculationTypeAcceptance]  VALUES ( 5, 0, 365, 365, 1, 1, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCalculationTypeAcceptance]  VALUES ( 6, 0, 365, 365, 1, 1, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCalculationTypeAcceptance]  VALUES ( 7, 0, 365, 365, 1, 1, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCalculationTypeAcceptance]  VALUES ( 8, 0, 365, 365, 1, 1, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCalculationTypeAcceptance]  VALUES ( 9, 0, 365, 365, 1, 1, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCalculationTypeAcceptance]  VALUES ( 1, 0, 365, 365, 1, 1, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCalculationTypeAcceptance]  VALUES ( 2, 0, 365, 547, 1, 1, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCalculationTypeAcceptance]  VALUES ( 3, 1, 0, 365, 1, 1,   GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCalculationTypeAcceptance]  VALUES ( 4, 1, 365, 545, 1, 1, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCalculationTypeAcceptance]  VALUES ( 5, 0, 365, 365, 1, 1, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCalculationTypeAcceptance]  VALUES ( 6, 0, 365, 365, 1, 1, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCalculationTypeAcceptance]  VALUES ( 7, 0, 365, 365, 1, 1, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCalculationTypeAcceptance]  VALUES ( 8, 0, 365, 365, 1, 1, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCalculationTypeAcceptance]  VALUES ( 9, 0, 365, 365, 1, 1, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCalculationTypeAcceptance]  VALUES ( 1, 0, 365, 365, 1, 1, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCalculationTypeAcceptance]  VALUES ( 2, 0, 365, 547, 1, 1, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCalculationTypeAcceptance]  VALUES ( 3, 1, 0, 365, 1, 1,   GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCalculationTypeAcceptance]  VALUES ( 4, 1, 365, 545, 1, 1, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCalculationTypeAcceptance]  VALUES ( 5, 0, 365, 365, 1, 1, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCalculationTypeAcceptance]  VALUES ( 6, 0, 365, 365, 1, 1, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCalculationTypeAcceptance]  VALUES ( 7, 0, 365, 365, 1, 1, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCalculationTypeAcceptance]  VALUES ( 8, 0, 365, 365, 1, 1, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCalculationTypeAcceptance]  VALUES ( 9, 0, 365, 365, 1, 1, GETDATE(), NULL, NULL)

INSERT INTO PaymentMethod VALUES ('Ficha de compensação', 1, 1,1,GETDATE(), null, null)
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
INSERT [dbo].[PaymentFrequency] ( [Name], [Code], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES ( N'Diário', N'2', 1, 1, CAST(N'2020-07-06T11:32:34.090' AS DateTime), NULL, NULL)
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
INSERT [dbo].[PaymentFrequency] ( [Name], [Code], [Status], [InclusionUserId], [InclusionDate], [LastChangeUserId], [LastChangeDate]) VALUES ( N'Única', N'9', 1, 1, CAST(N'2020-07-06T11:32:34.100' AS DateTime), NULL, NULL)
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
INSERT INTO RateType VALUES ('Prêmio', 2, 1,1,GETDATE(), null, null)
INSERT INTO RateType VALUES ('Comissão', 3, 1,1,GETDATE(), null, null)


INSERT INTO [dbo].[ConstructionType] VALUES ( N'Superior', 1, 1, GETDATE(), NULL, NULL)
GO
INSERT INTO [dbo].[ConstructionType] VALUES ( N'Sólida', 1, 1, GETDATE(), NULL, NULL)
GO
INSERT  INTO[dbo].[ConstructionType]  VALUES ( N'Mista', 1, 1, GETDATE(), NULL, NULL)
GO
INSERT INTO [dbo].[ConstructionType] VALUES ( N'Inferior', 1, 1, GETDATE(), NULL, NULL)
GO
INSERT INTO [dbo].[ConstructionType]  VALUES ( N'Alvenaria/Aço/Concreto', 1, 1, GETDATE(), NULL, NULL)
GO
INSERT INTO  [dbo].[ConstructionType] VALUES ( N'Madeira', 1, 1, GETDATE(), NULL, NULL)


INSERT INTO [dbo].[UseType]  VALUES ( N'Habitual', 1, 1, CAST(N'2025-05-22T18:10:01.120' AS DateTime))
GO
INSERT INTO  [dbo].[UseType]  VALUES ( N'Desocupado', 1, 1, CAST(N'2025-05-22T18:10:01.127' AS DateTime))
GO
INSERT  INTO [dbo].[UseType]  VALUES ( N'Veraneio', 1, 1, CAST(N'2025-05-22T18:10:01.130' AS DateTime))
GO
INSERT INTO  [dbo].[UseType] VALUES ( N'Moradia com Negócios', 1, 1, CAST(N'2025-05-22T18:10:01.130' AS DateTime))

INSERT INTO [ProductVersionCalculationTypeAcceptance] values ( 1,0,365,365, 1,1, GETDATE(), null,null)
INSERT INTO [ProductVersionCalculationTypeAcceptance] values ( 2,0,365,547, 1,1, GETDATE(), null,null)
INSERT INTO [ProductVersionCalculationTypeAcceptance] values (3 ,1,  0,365, 1,1, GETDATE(), null,null)
INSERT INTO [ProductVersionCalculationTypeAcceptance] values ( 4,1,365,545, 1,1, GETDATE(), null,null)
INSERT INTO [ProductVersionCalculationTypeAcceptance] values ( 5,0,365,365, 1,1, GETDATE(), null,null)
INSERT INTO [ProductVersionCalculationTypeAcceptance] values ( 6,0,365,365, 1,1, GETDATE(), null,null)
INSERT INTO [ProductVersionCalculationTypeAcceptance] values ( 7,0,365,365, 1,1, GETDATE(), null,null)
INSERT INTO [ProductVersionCalculationTypeAcceptance] values ( 8,0,365,365, 1,1, GETDATE(), null,null)
INSERT INTO [ProductVersionCalculationTypeAcceptance] values ( 9,0,365,365, 1,1, GETDATE(), null,null)


INSERT INTO  [Insurer] VALUES ('EZZE SEGUROS','31534848000124',3646,1,1,1,1, GETDATE(), null,null)
INSERT INTO  [Insurer] VALUES ('BRADESCO SEGUROS','33055146000193',5444,0,1,1,1, GETDATE(), null,null)
INSERT INTO  [Insurer] VALUES ('MAPFRE SEGUROS','61074175000138',6238,0,1,1,1, GETDATE(), null,null)
INSERT INTO  [Insurer] VALUES ('PORTO SEGURO','61198164000160',5886,0,1,1,1, GETDATE(), null,null)
INSERT INTO  [Insurer] VALUES ('TOKIO MARINE','33164021000100',6190,0,1,1,1, GETDATE(), null,null)
INSERT INTO  [Insurer] VALUES ('HDI SEGUROS','29980158000157',6572,0,1,1,1, GETDATE(), null,null)
INSERT INTO  [Insurer] VALUES ('LIBERTY SEGUROS','61550141000172',5185,0,1,1,1, GETDATE(), null,null)
INSERT INTO  [Insurer] VALUES ('ZURICH MINAS BRASIL SEGUROS S.A','17197385000121',5495,0,1,1,1, GETDATE(), null,null)
INSERT INTO  [Insurer] VALUES ('ZURICH SANTANDER BRASIL SEGUROS S.A','6136920000118',6564,0,1,1,1, GETDATE(), null,null)


INSERT INTO  ClaimsExperienceBonus VALUES ('0 anos sem sinistro',1, 1,1, GETDATE(), null,null)
INSERT INTO  ClaimsExperienceBonus VALUES ('1 anos sem sinistro',2, 1,1, GETDATE(), null,null)
INSERT INTO  ClaimsExperienceBonus VALUES ('2 anos sem sinistro',3, 1,1, GETDATE(), null,null)
INSERT INTO  ClaimsExperienceBonus VALUES ('3 anos sem sinistro',4, 1,1, GETDATE(), null,null)
INSERT INTO  ClaimsExperienceBonus VALUES ('4 anos sem sinistro',5, 1,1, GETDATE(), null,null)
INSERT INTO  ClaimsExperienceBonus VALUES ('5 anos sem sinistro',6, 1,1, GETDATE(), null,null)
INSERT INTO  ClaimsExperienceBonus VALUES ('1 anos com sinistro',7, 1,1, GETDATE(), null,null)
INSERT INTO  ClaimsExperienceBonus VALUES ('2 anos com sinistro',8, 1,1, GETDATE(), null,null)
INSERT INTO  ClaimsExperienceBonus VALUES ('3 anos com sinistro',9, 1,1, GETDATE(), null,null)
INSERT INTO  ClaimsExperienceBonus VALUES ('4 anos com sinistro',10,1,1, GETDATE(), null,null)
INSERT INTO  ClaimsExperienceBonus VALUES ('5 anos com sinistro',11,1,1, GETDATE(), null,null)


INSERT INTO  PropertyStructure VALUES ('Casa',1,1, GETDATE(), null,null)
INSERT INTO  PropertyStructure VALUES ('Apartamento',1,1, GETDATE(), null,null)
INSERT INTO  PropertyStructure VALUES ('Casa em condomínio',1,1, GETDATE(), null,null)
INSERT INTO  PropertyStructure VALUES ('Chácaras, sítios ou fazendas',1,1, GETDATE(), null,null)

INSERT INTO  BuildingsContents VALUES ('Prédio/Conteúdo',1,1, GETDATE(), null,null)
INSERT INTO  BuildingsContents VALUES ('Prédio',1,1, GETDATE(), null,null)
INSERT INTO  BuildingsContents VALUES ('Conteúdo',1,1, GETDATE(), null,null)


INSERT INTO [UseTypePropertyStructure] VALUES (1,1,1,1,GETDATE(), null,null)
INSERT INTO [UseTypePropertyStructure] VALUES (1,2,1,1,GETDATE(), null,null)
INSERT INTO [UseTypePropertyStructure] VALUES (1,3,1,1,GETDATE(), null,null)
INSERT INTO [UseTypePropertyStructure] VALUES (1,4,1,1,GETDATE(), null,null)


INSERT INTO [UseTypePropertyStructure] VALUES (2,1,1,1,GETDATE(), null,null)
INSERT INTO [UseTypePropertyStructure] VALUES (2,2,1,1,GETDATE(), null,null)
INSERT INTO [UseTypePropertyStructure] VALUES (2,3,1,1,GETDATE(), null,null)
INSERT INTO [UseTypePropertyStructure] VALUES (2,4,1,1,GETDATE(), null,null)

INSERT INTO [UseTypePropertyStructure] VALUES (3,1,1,1,GETDATE(), null,null)
INSERT INTO [UseTypePropertyStructure] VALUES (3,2,1,1,GETDATE(), null,null)
INSERT INTO [UseTypePropertyStructure] VALUES (3,3,1,1,GETDATE(), null,null)

INSERT INTO [UseTypePropertyStructure] VALUES (4,1,1,1,GETDATE(), null,null)
INSERT INTO [UseTypePropertyStructure] VALUES (4,2,1,1,GETDATE(), null,null)



INSERT INTO [ConstructionTypeUseType] VALUES (5,1,1,1,99,GETDATE(), null,null)
INSERT INTO [ConstructionTypeUseType] VALUES (5,2,1,1,99,GETDATE(), null,null)
INSERT INTO [ConstructionTypeUseType] VALUES (5,3,1,1,99,GETDATE(), null,null)
INSERT INTO [ConstructionTypeUseType] VALUES (5,4,1,1,99,GETDATE(), null,null)
INSERT INTO [ConstructionTypeUseType] VALUES (5,1,2,1,99,GETDATE(), null,null)
INSERT INTO [ConstructionTypeUseType] VALUES (5,2,2,1,99,GETDATE(), null,null)
INSERT INTO [ConstructionTypeUseType] VALUES (5,3,2,1,99,GETDATE(), null,null)
INSERT INTO [ConstructionTypeUseType] VALUES (5,4,2,1,99,GETDATE(), null,null)
INSERT INTO [ConstructionTypeUseType] VALUES (6,1,1,1,99,GETDATE(), null,null)
INSERT INTO [ConstructionTypeUseType] VALUES (6,2,1,1,99,GETDATE(), null,null)
INSERT INTO [ConstructionTypeUseType] VALUES (6,3,1,1,99,GETDATE(), null,null)
INSERT INTO [ConstructionTypeUseType] VALUES (6,4,1,1,99,GETDATE(), null,null)
INSERT INTO [ConstructionTypeUseType] VALUES (6,1,2,1,99,GETDATE(), null,null)



Insert into dbo.[Plan] values ('Plano AP Estagiário'				,'Seguro essencial para proteção completa. Confiança, simplicidade e tranquilidade garantidas.', 0,1,1, GETDATE(), null,null)
Insert into dbo.[Plan] values ('Plano Básico'						,'Seguro essencial para proteção completa. Confiança, simplicidade e tranquilidade garantidas.', 0,1,1, GETDATE(), null,null)
Insert into dbo.[Plan] values ('Plano Intermediário'				,'Seguro essencial para proteção completa. Confiança, simplicidade e tranquilidade garantidas.', 0,1,1, GETDATE(), null,null)
Insert into dbo.[Plan] values ('Plano Personalizado'				,'Seguro essencial para proteção completa. Confiança, simplicidade e tranquilidade garantidas.', 0,1,1, GETDATE(), null,null)
Insert into dbo.[Plan] values ('Plano Residencial Avançado'			,'Seguro essencial para proteção completa. Confiança, simplicidade e tranquilidade garantidas.', 0,1,1, GETDATE(), null,null)
Insert into dbo.[Plan] values ('Plano Residencial Completo'			,'Seguro essencial para proteção completa. Confiança, simplicidade e tranquilidade garantidas.', 1,1,1, GETDATE(), null,null)
Insert into dbo.[Plan] values ('Plano Residencial Essencial'		,'Seguro essencial para proteção completa. Confiança, simplicidade e tranquilidade garantidas.', 0,1,1, GETDATE(), null,null)
Insert into dbo.[Plan] values ('Plano Residencial Personalizado'	,'Seguro essencial para proteção completa. Confiança, simplicidade e tranquilidade garantidas.', 0,1,1, GETDATE(), null,null)
Insert into dbo.[Plan] values ('Plano Vida Individual'				,'Seguro essencial para proteção completa. Confiança, simplicidade e tranquilidade garantidas.', 0,1,1, GETDATE(), null,null)
Insert into dbo.[Plan]  values('Plano Vida Individual Mulher'		,'Seguro essencial para proteção completa. Confiança, simplicidade e tranquilidade garantidas.', 0,1,1, GETDATE(), null,null)
Insert into dbo.[Plan] values ('Plano Vida Individual Sênior'		,'Seguro essencial para proteção completa. Confiança, simplicidade e tranquilidade garantidas.', 0,1,1, GETDATE(), null,null)


Insert into dbo.ProductVersionConstructionType values (5,1, 1,1, GETDATE(), null,null)
Insert into dbo.ProductVersionConstructionType values (5,2, 1,1, GETDATE(), null,null)
Insert into dbo.ProductVersionConstructionType values (5,3, 1,1, GETDATE(), null,null)
Insert into dbo.ProductVersionConstructionType values (5,4, 1,1, GETDATE(), null,null)
Insert into dbo.ProductVersionConstructionType values (6,5, 1,1, GETDATE(), null,null)
Insert into dbo.ProductVersionConstructionType values (6,6, 1,1, GETDATE(), null,null)