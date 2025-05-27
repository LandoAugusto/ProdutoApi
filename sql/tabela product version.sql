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



IF OBJECT_ID('dbo.HazardGroup', 'U') IS NOT NULL 
  DROP TABLE dbo.HazardGroup; 
GO
CREATE TABLE [dbo].[HazardGroup](
	[HazardGroupId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](30) NOT NULL,
	[Status] [int] NOT NULL,
	[InclusionUserId] [int] NOT NULL,
	[InclusionDate] [datetime] NOT NULL,
	[LastChangeUserId]				INT NULL,
	[LastChangeDate]				DATETIME NULL
 CONSTRAINT [PK_HazardGroup_HazardGroupId] PRIMARY KEY CLUSTERED 
(
	[HazardGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


IF OBJECT_ID('dbo.RiskType', 'U') IS NOT NULL 
  DROP TABLE dbo.RiskType; 
GO
CREATE TABLE [dbo].RiskType(
	[RiskTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](30) NOT NULL,
	[Status] [int] NOT NULL,
	[InclusionUserId] [int] NOT NULL,
	[InclusionDate] [datetime] NOT NULL,
	[LastChangeUserId]				INT NULL,
	[LastChangeDate]				DATETIME NULL
 CONSTRAINT [PK_RiskType_RiskTypeId] PRIMARY KEY CLUSTERED 
(
	[RiskTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

IF OBJECT_ID('dbo.Activity', 'U') IS NOT NULL 
  DROP TABLE dbo.Activity; 
GO
CREATE TABLE [dbo].Activity(
	[ActivityId] [int] IDENTITY(1,1) NOT NULL,
	[ActivityNatureId] [int],
	[Name] [varchar](30) NOT NULL,
	[Status] [int] NOT NULL,
	[InclusionUserId] [int] NOT NULL,
	[InclusionDate] [datetime] NOT NULL,
	[LastChangeUserId]				INT NULL,
	[LastChangeDate]				DATETIME NULL
 CONSTRAINT [PK_Activity_ActivityId] PRIMARY KEY CLUSTERED 
(
	[ActivityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

IF OBJECT_ID('dbo.ActivityNature', 'U') IS NOT NULL 
  DROP TABLE dbo.ActivityNature; 
GO
CREATE TABLE [dbo].ActivityNature(
	[ActivityNatureId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](30) NOT NULL,
	[Status] [int] NOT NULL,
	[InclusionUserId] [int] NOT NULL,
	[InclusionDate] [datetime] NOT NULL,
	[LastChangeUserId]				INT NULL,
	[LastChangeDate]				DATETIME NULL
 CONSTRAINT [PK_ActivityNature_ActivityNatureId] PRIMARY KEY CLUSTERED 
(
	[ActivityNatureId] ASC
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
	[ProductVersionCoverageId]		INT IDENTITY(1,1) NOT NULL,
	[ProductVersionId]				INT NOT NULL,
	[CoverageId]					INT NOT NULL,
	[Status]						INT NOT NULL,
	[InclusionUserId]				INT NOT NULL,
	[InclusionDate]					DATETIME NOT NULL,
	[LastChangeUserId]				INT NULL,
	[LastChangeDate]				datetime NULL,
 CONSTRAINT [PK_ProductVersionCoverageId] PRIMARY KEY CLUSTERED 
(
	[ProductVersionCoverageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

IF OBJECT_ID('dbo.ProductVersionCoverageAcceptance', 'U') IS NOT NULL 
  DROP TABLE dbo.ProductVersionCoverage; 
GO

--CREATE TABLE [dbo].[ProductVersionCoverageAcceptance](
--	[ProductVersionCoverageId]		INT IDENTITY(1,1) NOT NULL,
--	[ProductVersionId]				INT NOT NULL,
--	[CoverageId]					INT NOT NULL,
--	[ProfileId]						INT NOT NULL,
--	[InsuredAmountDefault]			DECIMAL(18,6) NOT NULL,
--	[Status]						INT NOT NULL,
--	[InclusionUserId]				INT NOT NULL,
--	[InclusionDate]					DATETIME NOT NULL,
--	[LastChangeUserId]				INT NULL,
--	[LastChangeDate]				datetime NULL,
-- CONSTRAINT [PK_ProductVersionCoverageId] PRIMARY KEY CLUSTERED 
--(
--	[ProductVersionCoverageId] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
--) ON [PRIMARY]
--GO

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
	[Name] [varchar](300) NOT NULL,
	[Description] [varchar](500) NOT NULL,
	[BranchId] [int] NOT NULL,
	[CoverageGroupId] [int] NOT NULL,
	[CoverageBasic] [bit] NOT NULL,		
	[IsGoodsRelationship ] BIT NOT NULL,
	[LegacyCode] [varchar](10) NULL,
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
INSERT INTO [dbo].[InsuranceBranch]  VALUES ( N'LICITA��O', N'Garantir proposta e assinatura', 1, 1, 14, GETDATE(), NULL, NULL)
GO
INSERT INTO [dbo].[InsuranceBranch] VALUES ( N'CONTRATO', N'Cumprimento de contratos', 1, 1, 14,  GETDATE(), NULL, NULL)
GO
INSERT INTO [dbo].[InsuranceBranch]  VALUES ( N'JUDICIAL', N'Substituir dep�sito judicial/penhora', 1, 1, 14,  GETDATE(), NULL, NULL)
GO
INSERT INTO [dbo].[InsuranceBranch]  VALUES ( N'ADMINISTRATIVA', N'Obriga��es com o poder p�blico', 1, 1, 14,  GETDATE(), NULL, NULL)
GO
INSERT INTO [dbo].[InsuranceBranch]  VALUES ( N'COMPREENSIVO EMPRESARIAL', N'', 2, 1, 14,  GETDATE(), NULL, NULL)
GO
INSERT INTO [dbo].[InsuranceBranch]  VALUES ( N'COMPREENSIVO RESIDENCIAL', N'', 3, 1, 14, GETDATE(), NULL, NULL)
GO
INSERT INTO [dbo].[InsuranceBranch] VALUES ( N'COMPREENSIVO VIDA INDIVIDUAL', N'', 4, 1, 14,  GETDATE(), NULL, NULL)

GO
INSERT INTO [dbo].[Product]  VALUES ( N'GARANTIA PRIVADAS LICITA��O', N'', 1, 1, 521, GETDATE(), NULL, NULL)
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

INSERT INTO CoverageGroup VALUES ('B�sica', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('Coberturas Adicionais', 76,1, 14, Getdate(),null,null)
INSERT INTO CoverageGroup VALUES ('Responsabilidade Civil', 76,1, 14, Getdate(),null,null)
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


INSERT INTO [dbo].[Coverage] VALUES ( N'Inc�ndio, Queda de Raio, Explos�o, Implos�o e Queda de Aeronaves',N'Danos materiais decorrentes de inc�ndio de qualquer natureza, onde quer que tenham se originado,   incluindo queimadas em zonas rurais;',3,1,1,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Compreensiva para Ve�culos em Exposi��o E Venda',N'Exclusivamente para empresas cuja atividade/ocupa��o seja Concession�rias Autorizadas de Ve�culos/M�quinas e Implementos Agr�colas garante Perda e danos exclusivamente materiais e diretamente causados aos ve�culos de propriedade do Segurado, desde que tais danos materiais sejam resultantes de:  a) Inc�ndio, raio ou explos�o.   b) Roubo.  c) Furto Qualificado, total ou parcial.   do C�digo Penal.  d) Colis�o, abalroamento ou capotagem acidental.;',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Despesas de Recomposi��o de Registros de Documentos',N'Garante o reembolso das despesas necess�rias � recomposi��o de seus registros e documentos que forem destru�dos total ou parcialmente por eventos de causa externa. Estar�o amparados tamb�m os registros e documentos de terceiros quando inerentes ao ramo de atividade do Segurado.',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Impacto de Ve�culos Terrestres',N'A seguradora indenizar� por esta cobertura os danos materiais diretamente causados aos bens segurados em consequ�ncia do impacto de ve�culos terrestres. Entende-se por �ve�culo terrestre� aquele que possa ou n�o dispor de tra��o pr�pria.',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Tumultos, Greves e Lock-Out',N'Cobertura que ampara as perdas e danos causados aos bens cobertos por atos predat�rios, ocorridos durante tumulto, greve ou lockout.',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Ruptura de Tanques e Tubula��es',N'Garante as perdas e/ou danos materiais de origem s�bita e imprevista causados ao estabelecimento segurado em consequ�ncia de derrame ou vazamento de �gua, ocasionado pelo rompimento das  tubula��es e/ou encanamentos das instala��es fixas da rede interna de �gua e esgoto, do sistema de tratamento e reutiliza��o de �gua, assim como os reservat�rios existentes no im�vel segurado.',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Derrame ou Vazamento de Material em Estado de Fus�o',N'Garante as perdas ou pelos danos materiais de origem s�bita e imprevista, sofridos por tanques fixos de dep�sitos ou por seus respectivos conte�dos, ou tubula��es existentes no local segurado, diretamente causados por acidentes de causa externa, exceto por impacto de ve�culos.',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Derrame de Sprinklers',N'Garante as perdas ou danos materiais causados, direta e exclusivamente, aos bens segurados, decorrentes de infiltra��o, derrame de �gua ou outra subst�ncia l�quida contida em instala��es de chuveiros autom�ticos (sprinklers) em consequ�ncia de acidente de causa externa.',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Perda e/ou Pagamento de Aluguel',N'Esta cobertura garante o pagamento, por per�odo indenizat�rio especificado na ap�lice de seguros (normalmente 6 ou 12 meses), de despesas de aluguel e demais despesas contratuais, caso o im�vel n�o possa ser  ocupado, em decorr�ncia dos eventos de danos materiais cobertos e contratados na ap�lice de seguros.',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Alagamento',N'Garante as perdas ou os danos materiais causados aos bens descritos na ap�lice por entrada de �gua no local segurado proveniente de aguaceiro, tromba-d��gua ou chuva, seja ou n�o consequente da obstru��o ou insufici�ncia de esgotos, galerias pluviais, desaguadouros e similares',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Avarias de M�quinas e Equipamentos',N'Garante os preju�zos por perda e danos materiais, de origem s�bita e imprevista (causa externa), causados:  Aos equipamentos eletr�nicos, arrendados ou cedidos a terceiros, em exposi��o, m�veis ou estacion�rios, port�teis de propriedade do Segurado ou de terceiros utilizados em fun��o da atividade empresarial.  Por impacto externo, queda, balan�o, colis�o, virada ou fatos equivalentes, durante a movimenta��o interna ou opera��es de carga e descarga.',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Equipamentos Eletr�nicos',N'Garante, a indeniza��o por perdas e danos materiais, de origem s�bita e imprevista (causa externa),   causados aos Equipamentos Eletr�nicos de propriedade do segurado, ou por ele utilizados em   fun��o de sua atividade e que estejam nas depend�ncias do local de risco, em consequ�ncia de:  a) Danos mec�nicos;  b) Transporte interno;  c) Queda, quebra, amassamento em consequ�ncia de eventos cobertos.',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Equipamentos Arrendados ou Cedidos a Terceiros',N'Garante, danos materiais causados aos bens segurados por qualquer acidente de causa externa.Esta garantia abrange os equipamentos segurados nos locais de opera��o ou de guarda, assim como a sua traslada��o fora de tais locais, por autopropuls�o ou por qualquer meio de transporte adequado.',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Equipamentos em Exposi��o',N'Equipamentos em Exposi��o',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Equipamentos Estacion�rios e M�veis',N'Garante as perdas ou os danos materiais causados aos equipamentos estacion�rios descritos na ap�lice, por acidentes decorrentes de causa externa. E aos danos materiais causados aos equipamentos m�veis, por acidentes decorrentes de causa externa, enquanto estiverem nos canteiros de obras ou locais de trabalho, considerando-se, tamb�m, como tais, locais de guarda, assim como sua translada��o fora desses lugares, por autopropuls�o ou qualquer meio de transporte adequado.',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Deteriora��o de Mercadorias em Ambientes Frigorificados',N'Garante, as perdas e danos materiais causados � mercadorias existentes no estabelecimento segurado, em ambientes frigorificados em consequ�ncia de:  a) Ruptura, quebra ou desarranjo acidental de qualquer parte do sistema de refrigera��o;  b) Vazamento, descarga ou evapora��o da subst�ncia refrigerante contida no sistema de refrigera��o;  c) Falha no fornecimento de energia el�trica  d) Desentulho do local.',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Movimenta��o Interna',N'Garante a indeniza��o por perdas e danos materiais causados por impacto externo, queda, balan�o, colis�o, virada ou fatos equivalentes, durante a movimenta��o interna ou opera��es de carga e  descarga.',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Danos El�tricos',N'Garante as perdas ou danos f�sicos diretamente causados a quaisquer m�quinas, equipamentos ou instala��es eletr�nicas ou el�tricas devido a varia��es anormais de tens�o, curto-circuito, arco voltaico, calor gerado acidentalmente por eletricidade, descargas el�tricas, eletricidade est�tica ou qualquer efeito ou fen�meno de natureza el�trica, inclusive a queda de raio.',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Quebra de Vidros e An�ncios Luminosos e M�rmores',N'Garante as perdas ou pelos danos materiais sofridos por vidros, regularmente existentes e instalados no(s) local(is) segurado(s) descrito(s) na ap�lice, bem como perdas ou danos materiais causados aos letreiros, an�ncios luminosos e pain�is, inclusive �s respectivas estruturas e bases, decorrentes de quaisquer acidentes de causa externa, salvo os expressamente exclu�dos.',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Roubo de Bens',N'Garante as perdas e/ou danos materiais causados aos bens de propriedade do segurado por:  a) roubo ou furto qualificado, caracterizado com destrui��o ou rompimento e obst�culo;  b) extors�o, de acordo com a defini��o do artigo 158 do C�digo Penal;  c) danos causados a portas e janelas, bem como danos �s fechaduras e outras partes do im�vel, onde os bens cobertos encontram-se localizados, quer o furto qualificado tenha se consumado ou n�o, ou tenha se caracterizado como simples tentativa.',3,2,0,1, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Roubo de Bens de H�spedes',N'Exclusivamente para empresas cuja atividade/ocupa��o seja hot�is/resorts/pousadas, garante a indeniza��o por perdas e danos causados aos bens pertencentes aos h�spedes, guardados   no cofre do hotel, n�o se considerando como tal os cofres localizados dentro dos quartos, enquanto  os mesmos estiverem hospedados no local segurado.',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Roubo de Valores no Interior do Estabelecimento',N'Cobertura voltada para contrata��es de seguros compreensivos empresariais e que ampara os preju�zos decorrentes de:  a) roubo ou furto qualificado caracterizado, com destrui��o ou rompimento de obst�culo, de valores de propriedade do segurado, quando ocorridos no interior do estabelecimento segurado;  b) destrui��o ou perecimento dos valores em consequ�ncia ou decorrente da simples tentativa de roubo ou furto qualificado;  c) extors�o de acordo com a defini��o do artigo 158 do C�digo Penal.',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Roubo de Valores em Tr�nsito em M�os de Portadores',N'Cobertura tamb�m voltada para contrata��es de seguros compreensivos empresariais e que ampara os preju�zos decorrentes de roubo ou furto de valores ocorridos em tr�nsito em m�os de portadores (pessoas �s quais s�o confiados os valores para miss�es externas)',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Vendaval, Furac�o, Ciclone, Granizo e Tornado',N'Visa garantir as perdas e os danos causados aos bens segurados diretamente por vendaval, furac�o, ciclone, tornado e granizo.',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Perda de Lucro Bruto',N'Esta cobertura garante o pagamento, por per�odo indenizat�rio especificado na ap�lice de seguros, referente �s perdas de Lucro Bruto (constitu�do pela soma do Lucro L�quido e Despesas Fixas) do estabelecimento segurado resultante da interrup��o ou queda no movimento de neg�cios da empresa segurada em decorr�ncia de sinistro de danos materiais coberto pelas coberturas contratadas no seguro.',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Despesas Fixas',N'Esta cobertura garante o pagamento, por per�odo indenizat�rio especificado na ap�lice de seguros, de despesas fixas se o estabelecimento segurado ficar total ou parcialmente paralisado em consequ�ncia de sinistro de danos materiais garantido por cobertura contratada no seguro, geralmente pela cobertura inc�ndio, queda de raio e explos�o (Cobertura B�sica).',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Responsabilidade Civil Opera��es',N'Estabelece, normalmente, que a seguradora responder� pelo reembolso ao segurado das quantias pelas quais vier a ser respons�vel civilmente, em senten�a judicial transitada em julgado ou em acordo autorizado de modo expresso pela seguradora, pelos danos materiais e corporais causados involuntariamente a terceiros durante a vig�ncia deste contrato e que decorram dos  riscos estabelecidos nas condi��es gerais',3,3,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Responsabilidade Civil Contingente de Ve�culos',N'Garante o reembolso ao segurado das quantias pelas quais vier a ser respons�vel civilmente, relativas a repara��es por danos materiais causados exclusivamente a ve�culos de terceiros sob a guarda ou cust�dia do segurado, decorrentes de:  -inc�ndio ou explos�o;  -roubo ou furto qualificado total;  -colis�o de ve�culos contra obst�culos;  -colis�o entre ve�culos;  -acidentes relacionados � exist�ncia, conserva��o e ao uso do local do risco indicado na ap�lice.',3,3,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Responsabilidade Civil Empregador',N'Cobre acidentes s�bitos e inesperados que resultem morte ou invalidez permanente de empregados quando a servi�o do segurado.',3,3,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Responsabilidade Civil Estabelecimentos de Ensino',N'Ampara os danos causados a terceiros que sejam decorrentes de acidentes relacionados com a exist�ncia, uso e conserva��o do local de risco, bem como � realiza��o das atividades desenvolvidas pelo segurado no referido im�vel.',3,3,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Responsabilidade Civil Estabelecimentos de Hospedagem',N'Garante a indeniza��o a terceiros por danos corporais e materiais causados em h�spedes ou pessoas que est�o utilizando as depend�ncias do hotel para alimenta��o, reuni�o ou eventos.',3,3,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Responsabilidade Civil Guarda de Ve�culos de Terceiros',N'Garante o reembolso ao segurado das quantias pelas quais vier a ser respons�vel civilmente, relativas a repara��es por danos materiais causados exclusivamente a ve�culos de terceiros sob a guarda ou cust�dia do segurado, decorrentes de:  -inc�ndio ou explos�o;  -roubo ou furto qualificado total;  -colis�o de ve�culos contra obst�culos;  -colis�o entre ve�culos;  -acidentes relacionados � exist�ncia, conserva��o e ao uso do local do risco indicado na ap�lice.',3,3,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Responsabilidade Civil Guarda de Ve�culos para Concession�rias Autorizadas',N'Garante indeniza��o por avarias, perdas e danos materiais de origem s�bita, imprevista e acidental, diretamente ocasionadas por colis�o, inc�ndio e roubo, causadas aos ve�culos e/ou pelos ve�culos de clientes, quando conduzidos por manobrista, devidamente autorizados, durante o percurso entre o estabelecimento segurado e os locais de estacionamento indicados na ap�lice, durante a vig�ncia da ap�lice.',3,3,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Danos Morais',N'Garante o reembolso das quantias mensur�veis pelas quais o Segurado vier a ser civilmente respons�vel a pagar, em senten�a judicial transitada em julgado ou em acordo expressamente autorizado pela Seguradora, em virtude de Danos Morais diretamente decorrentes de Danos Materiais e/ou de Danos Corporais causados a terceiros, durante a vig�ncia deste contrato e efetivamente indenizados nos termos previstos na especifica��o da ap�lice.',3,3,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Inc�ndio, Queda de Raio, Explos�o, Fuma�a e Queda de Aeronaves ',N'Ampara sua resid�ncia se ela for atingida por fogo ou fuma�a ou at� se acontecer uma explos�o. Al�m disso, essa cobertura ampara seu im�vel em caso de queda de aeronaves.  ',4,1,1,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Danos El�tricos',N'Ampara os danos em seus eletrodom�sticos, eletroeletr�nicos e instala��es el�tricas causados por curto-circuito, varia��es anormais de tens�o e queda de raio. Essa cobertura ampara o valor para conserto ou compra de novos equipamentos.',4,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Responsabilidade Civil Familiar (danos a terceiros) ',N'Essa cobertura ampara os danos causados a terceiros, se voc� for responsabilizado civilmente. Ex: seu pet mordeu algu�m na rua ou seu filho quebrou o vidro da janela do vizinho.',4,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Vendaval, Furac�o, Ciclone, Tornado e Granizo',N'Garante os danos a sua resid�ncia causados diretamente por vendaval, ciclone, tornado, furac�o e granizo. ',4,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Quebra de Vidros, M�rmores e Granitos',N'Cobre� danos� causados,� por� quaisquer� acidentes� de� causa� externa,� aos� vidros,� espelhos, m�rmores e granitos (exceto pisos) instalados de forma fixa no im�vel, bem como, tampos de vidro de mesa ou instalados em balc�es de uso dom�stico, cooktop e lou�as sanit�rias.',4,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Impacto de Ve�culos',N'Ampara sua casa se algum ve�culo de terceiro atingir involuntariamente sua casa e danific�-la. ',4,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Despesas com Aluguel',N'Em� caso� de� sinistro� de� inc�ndio,� queda� de� raio,� explos�o,� vendaval,� furac�o,� ciclone, tornado,� granizo� e� impacto� de� ve�culos� terrestres� e� a�reos� (desde� que contratada� a cobertura� adicional),� que� impe�a� o� im�vel� de� permanecer� ocupado,� garante� ao segurado as despesas de aluguel caso ele seja propriet�rio ou locat�rio do im�vel.',4,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Roubo e Subtra��o de Bens com Arrombamento',N'Ampara o roubo ou furto qualificado de bens de sua casa. Para recebimento da indeniza��o respeitando o valor contratado � necess�rio comprovar a pr�-exist�ncia dos bens (para alguns itens � necess�ria apresenta��o da nota fiscal).',4,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Ruptura de Tubula��es',N'Ampara os danos decorrentes de rupturas de tanques e tubula��es da rede de �gua e esgoto da resid�ncia segurada. Lembrando que a ruptura tem que ser acidental e s�bita. ',4,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Tumultos, Greves e Lock-outs',N'Ampra os danos materiais causados por tumultos, greves e lock-outs.',4,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Equipamentos Eletr�nicos',N'Ampara os danos causados aos equipamentos do segurado como laptops (notebook, netbook, ultrabook) e desktops, inclusive seus acess�rios decorrentes de acidentes de origem s�bita.',4,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Danos ao Jardim',N'Em caso de inc�ndio, vendaval, queda de granizo ou at� um assalto, essa cobertura ampara os danos ao jardim da sua casa, inclusive a ilumina��o, sistemas de irriga��o, chafariz e mobili�rio existentes nesse espa�o. ',4,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Obras de Arte e Bens Culturais',N'Obras de Arte e Bens Culturais - Garante os danos decorrentes de Inc�ndio, Vendaval, Roubo com Arrombamento e Impacto de Ve�culos �s obras de arte (desenhos, pinturas, quadros, esculturas, vasos e objetos decorativos) e bens culturais (obras de artistas, arquitetos, m�sicos, escritores ligados a cultura de alguma nacionalidade e/ou grupo espec�fico',4,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Desmoronamento',N'Esta cobertura ampara danos diretamente causados por desmoronamento total ou parcial do im�vel segurado, respeitando o limite m�ximo indeniz�vel ',4,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Joias e Relogios',N'Essa cobertura garante a indeniza��o dos danos causados �s j�ias, obras e objetos de arte de propriedade do segurado que estiverem em sua casa decorrente de eventos como roubo ou furto qualificado, alagamento, vendaval, queda de aeronaves, impacto de ve�culos, desmoronamento, tumultos, inc�ndio, raio e explos�o.',4,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Roubo de Bens Fora do Local de Risco',N'Essa cobertura garante o roubo� ou� furto� qualificado� de� bicicletas,� celulares,� filmadoras� e� m�quinas fotogr�ficas, notebook, laptop, tablet, netbook, j�ias e rel�gios de pulso, fora do local de� risco de acordo com os limites estabelecidos nas condi��es gerais do produto. � necess�ria a comprova��o dos bens atrav�s de notas fiscais. �',4,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Alagamento e inunda��o',N'Garante os danos causados a sua resid�ncia em caso de alagamento, inunda��o e enchente, que tenham acontecido por fortes chuvas. ',4,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Roubo de Bens',N'Garante as perdas e/ou danos materiais causados aos bens de propriedade do segurado por:  a) roubo ou furto qualificado, caracterizado com destrui��o ou rompimento e obst�culo;  b) extors�o, de acordo com a defini��o do artigo 158 do C�digo Penal;  c) danos causados a portas e janelas, bem como danos �s fechaduras e outras partes do im�vel, onde os bens cobertos encontram-se localizados, quer o furto qualificado tenha se consumado ou n�o, ou tenha se caracterizado como simples tentativa.',4,2,0,1, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Anfitri�o',N'Ampara os danos materiais causados pelo h�spede aos bens da resid�ncia anfitri� durante sua perman�ncia no im�vel. ',4,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)

INSERT INTO [dbo].[Coverage] VALUES ( N'Licitante',															N'',1,1,1,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Contrato',															N'',1,1,1,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Pagamentos',														N'',1,1,1,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Garantia Recursal',													N'',1,1,1,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Judicial para execu��o trabalhista',								N'',1,1,1,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Garantia Recursal SME',												N'',1,1,1,0, N'10353', 1, 6,GETDATE(), NULL, NULL)

INSERT INTO [dbo].[Profile]  VALUES ( N'Administrador', 1,  14, GETDATE(),null,null)
INSERT INTO [dbo].[Profile]  VALUES ( N'Corretor', 1,  14, GETDATE(),null,null)

INSERT INTO [ProductVersion] VALUES(1,1,1,GETDATE(),null,null)
INSERT INTO [ProductVersion] VALUES(2,1,1,GETDATE(),null,null)
INSERT INTO [ProductVersion] VALUES(3,1,1,GETDATE(),null,null)
INSERT INTO [ProductVersion] VALUES(4,1,1,GETDATE(),null,null)
INSERT INTO [ProductVersion] VALUES(5,1,1,GETDATE(),null,null)
INSERT INTO [ProductVersion] VALUES(6,1,1,GETDATE(),null,null)
INSERT INTO [ProductVersion] VALUES(7,1,1,GETDATE(),null,null)

INSERT INTO [dbo].[ProductVersionCoverage] VALUES ( 1, 54, 1, 99, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCoverage] VALUES ( 2, 55, 1, 99, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCoverage] VALUES ( 3, 57,1, 99, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCoverage] VALUES ( 3, 58,1, 99, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCoverage] VALUES ( 3, 59,1, 99, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[ProductVersionCoverage] VALUES ( 4, 56, 1, 99, GETDATE(), NULL, NULL)

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
INSERT INTO [dbo].[ContractType]  VALUES ( N'LMI �nico', 1, 1, GETDATE())
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
INSERT INTO [dbo].[ProductVersionClause] VALUES ( 1,2, 2, 1,100000.01,	1000000.00,1, 521, GETDATE(), null,null)
INSERT INTO [dbo].[ProductVersionClause] VALUES ( 1,2, 2, 1,0.01,101010.10,1,  521, GETDATE(), null,null)
INSERT INTO [dbo].[ProductVersionClause] VALUES ( 1,5, 3, 0.00,100000000.00,0, 1,   521, GETDATE(), null,null)

INSERT INTO [dbo].[InsuredObject]  VALUES ( N'Texto Objeto da Ap�lice', N'Aplica-se ao Recursal', NULL, 1, 521, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[InsuredObject]  VALUES ( N'Texto Objeto da Ap�lice', N'Aplica-se a licita��o e contrato', NULL, 1, 521, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[InsuredObject]  VALUES ( N'Texto Objeto da Ap�lice', N'Aplica-se ao Judicial Civil e Fiscal', NULL, 1, 521, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[InsuredObject]  VALUES ( N'teste1', N'teste1', NULL, 2, 521, GETDATE(), NULL, NULL)



INSERT INTO [dbo].[InsuredObjectBlock]  VALUES ( 1, 1, N'Nos termos previstos no par�grafo 11 do artigo 899 da CLT, esta ap�lice se presta a garantir o valor de dep�sito recursal referente ao recurso "@@TIPO_RECURSO@@", no �mbito do processo n� @@NUMERO_PROCESSO@@, cujo(s) reclamante(s) �(s�o) @@LISTA_RECLAMANTES@@ e atualmente tramita perante o @@NOME_VARA@@.', 0, 1, 1, 521, GETDATE(), NULL, NULL)
INSERT INTO [dbo].[InsuredObjectBlock]  VALUES ( 1, 3, N'O valor desta ap�lice representa o valor do dep�sito recursal, acrescido em @@PERCENTUAL_AGRAVO@@%.', 0, 2, 1, 521,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[InsuredObjectBlock]  VALUES ( 2, 1, N'Este seguro garante a indeniza��o, at� o valor da garantia fixado na ap�lice, se o Tomador adjudicat�rio se recusar a assinar o Contrato Principal, nas condi��es propostas, dentro do prazo estabelecido no Edital de Concorr�ncia P�blica @@NUMERO_LICITACAO@@, Processo Interno n� 428/2019, cujo objeto � a presta��o de servi�os de limpeza urbana, compreendendo a coleta seletiva de materiais potencialmente recicl�veis; coleta, transporte, tratamento e destina��o final de res�duos de servi�os de sa�de incluindo animais mortos; coleta e transporte de res�duos domiciliares; coleta e transporte de res�duos domiciliares em locais de dif�cil acesso; varri��o manual de vias e logradouros p�blicos; varri��o mecanizada; fornecimento de equipe padr�o para realiza��o de servi�os correlatos e complementares aos servi�os de limpeza urbana; opera��o e manuten��o de usina de triagem incluindo o fornecimento de equipe e equipamentos.', 0, 1, 1, 521,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[InsuredObjectBlock]  VALUES ( 3, 1, N'Este contrato de seguro garante o pagamento de valores que o tomador necessite realizar no tramite de processos de execu��o fiscal.

CL�USULAS PARTICULARES:
- Esta ap�lice � emitida de acordo com as condi��es da Circular da SUSEP n� 477/13 e fica expressamente estabelecido que para todos os fins e efeitos de direito, a regula��o do sinistro observar� o disposto nas Condi��es Gerais da presente Ap�lice.    
- ESTA AP�LICE N�O PODER� SER UTILIZADA COMO COMPLEMENTO OU ENDOSSO DE AP�LICE ANTERIORMENTE FORNECIDA POR ESTA SEGURADORA REFERENTE AO MESMO EDITAL E/OU CONTRATO OBJETO DESTE SEGURO', 1, 1, 1, 521, GETDATE(), NULL, NULL)
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


INSERT INTO [dbo].[ConstructionType] VALUES ( N'Superior', 1, 1, GETDATE(), NULL, NULL)
GO
INSERT INTO [dbo].[ConstructionType] VALUES ( N'S�lida', 1, 1, GETDATE(), NULL, NULL)
GO
INSERT  INTO[dbo].[ConstructionType]  VALUES ( N'Mista', 1, 1, GETDATE(), NULL, NULL)
GO
INSERT INTO [dbo].[ConstructionType] VALUES ( N'Inferior', 1, 1, GETDATE(), NULL, NULL)
GO
INSERT INTO [dbo].[ConstructionType]  VALUES ( N'Alvenaria/A�o/Concreto', 1, 1, GETDATE(), NULL, NULL)
GO
INSERT INTO  [dbo].[ConstructionType] VALUES ( N'Madeira', 1, 1, GETDATE(), NULL, NULL)


INSERT INTO [dbo].[UseType]  VALUES ( N'Habitual', 1, 1, CAST(N'2025-05-22T18:10:01.120' AS DateTime))
GO
INSERT INTO  [dbo].[UseType]  VALUES ( N'Desocupado', 1, 1, CAST(N'2025-05-22T18:10:01.127' AS DateTime))
GO
INSERT  INTO [dbo].[UseType]  VALUES ( N'Veraneio', 1, 1, CAST(N'2025-05-22T18:10:01.130' AS DateTime))
GO
INSERT INTO  [dbo].[UseType] VALUES ( N'Moradia com Neg�cios', 1, 1, CAST(N'2025-05-22T18:10:01.130' AS DateTime))

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
INSERT INTO  PropertyStructure VALUES ('Casa em condom�nio',1,1, GETDATE(), null,null)
INSERT INTO  PropertyStructure VALUES ('Ch�caras, s�tios ou fazendas',1,1, GETDATE(), null,null)

INSERT INTO  BuildingsContents VALUES ('Pr�dio/Conte�do',1,1, GETDATE(), null,null)
INSERT INTO  BuildingsContents VALUES ('Pr�dio',1,1, GETDATE(), null,null)
INSERT INTO  BuildingsContents VALUES ('Conte�do',1,1, GETDATE(), null,null)


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



Insert into dbo.[Plan] values ('Plano AP Estagi�rio'				,'Seguro essencial para prote��o completa. Confian�a, simplicidade e tranquilidade garantidas.', 0,1,1, GETDATE(), null,null)
Insert into dbo.[Plan] values ('Plano B�sico'						,'Seguro essencial para prote��o completa. Confian�a, simplicidade e tranquilidade garantidas.', 0,1,1, GETDATE(), null,null)
Insert into dbo.[Plan] values ('Plano Intermedi�rio'				,'Seguro essencial para prote��o completa. Confian�a, simplicidade e tranquilidade garantidas.', 0,1,1, GETDATE(), null,null)
Insert into dbo.[Plan] values ('Plano Personalizado'				,'Seguro essencial para prote��o completa. Confian�a, simplicidade e tranquilidade garantidas.', 0,1,1, GETDATE(), null,null)
Insert into dbo.[Plan] values ('Plano Residencial Avan�ado'			,'Seguro essencial para prote��o completa. Confian�a, simplicidade e tranquilidade garantidas.', 0,1,1, GETDATE(), null,null)
Insert into dbo.[Plan] values ('Plano Residencial Completo'			,'Seguro essencial para prote��o completa. Confian�a, simplicidade e tranquilidade garantidas.', 1,1,1, GETDATE(), null,null)
Insert into dbo.[Plan] values ('Plano Residencial Essencial'		,'Seguro essencial para prote��o completa. Confian�a, simplicidade e tranquilidade garantidas.', 0,1,1, GETDATE(), null,null)
Insert into dbo.[Plan] values ('Plano Residencial Personalizado'	,'Seguro essencial para prote��o completa. Confian�a, simplicidade e tranquilidade garantidas.', 0,1,1, GETDATE(), null,null)
Insert into dbo.[Plan] values ('Plano Vida Individual'				,'Seguro essencial para prote��o completa. Confian�a, simplicidade e tranquilidade garantidas.', 0,1,1, GETDATE(), null,null)
Insert into dbo.[Plan]  values('Plano Vida Individual Mulher'		,'Seguro essencial para prote��o completa. Confian�a, simplicidade e tranquilidade garantidas.', 0,1,1, GETDATE(), null,null)
Insert into dbo.[Plan] values ('Plano Vida Individual S�nior'		,'Seguro essencial para prote��o completa. Confian�a, simplicidade e tranquilidade garantidas.', 0,1,1, GETDATE(), null,null)


Insert into dbo.ProductVersionConstructionType values (5,1, 1,1, GETDATE(), null,null)
Insert into dbo.ProductVersionConstructionType values (5,2, 1,1, GETDATE(), null,null)
Insert into dbo.ProductVersionConstructionType values (5,3, 1,1, GETDATE(), null,null)
Insert into dbo.ProductVersionConstructionType values (5,4, 1,1, GETDATE(), null,null)
Insert into dbo.ProductVersionConstructionType values (6,5, 1,1, GETDATE(), null,null)
Insert into dbo.ProductVersionConstructionType values (6,6, 1,1, GETDATE(), null,null)


INSERT INTO  HazardGroup VALUES ('Grupo de Risco 1',1,1, GETDATE(), null,null)
INSERT INTO  HazardGroup VALUES ('Grupo de Risco 2',1,1, GETDATE(), null,null)
INSERT INTO  HazardGroup VALUES ('Grupo de Risco 3',1,1, GETDATE(), null,null)
INSERT INTO  HazardGroup VALUES ('Grupo de Risco 4',1,1, GETDATE(), null,null)
INSERT INTO  HazardGroup VALUES ('Grupo de Risco 5',1,1, GETDATE(), null,null)
INSERT INTO  HazardGroup VALUES ('Grupo de Risco 6',1,1, GETDATE(), null,null)
INSERT INTO  HazardGroup VALUES ('Grupo de Risco 7',1,1, GETDATE(), null,null)
INSERT INTO  HazardGroup VALUES ('Grupo de Risco 8',1,1, GETDATE(), null,null)
INSERT INTO  HazardGroup VALUES ('Grupo de Risco 9',1,1, GETDATE(), null,null)

INSERT INTO  ActivityNature VALUES ('Com�rcio',1,1, GETDATE(), null,null)
INSERT INTO  ActivityNature VALUES ('Ind�stria',1,1, GETDATE(), null,null)
INSERT INTO  ActivityNature VALUES ('Servi�os',1,1, GETDATE(), null,null)

INSERT INTO  RiskType VALUES ('Aceito',1,1, GETDATE(), null,null)
INSERT INTO  RiskType VALUES ('Restrito',1,1, GETDATE(), null,null)
INSERT INTO  RiskType VALUES ('Sob Consulta',1,1, GETDATE(), null,null)