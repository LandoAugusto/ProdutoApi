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

IF OBJECT_ID('dbo.[ClaimsExperienceBonus]', 'U') IS NOT NULL 
  DROP TABLE dbo.ClaimsExperienceBonus; 
GO
CREATE TABLE [dbo].ClaimsExperienceBonus(
	[ClaimsExperienceBonusId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](30) NOT NULL,
	[BonusId] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[InclusionUserId] [int] NOT NULL,
	[InclusionDate] [datetime] NOT NULL,
	[LastChangeUserId]				INT NULL,
	[LastChangeDate]				DATETIME NULL
 CONSTRAINT [PK_ClaimsExperienceBonus_ClaimsExperienceBonusId] PRIMARY KEY CLUSTERED 
(
	[ClaimsExperienceBonusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

IF OBJECT_ID('dbo.[BuildingsContents]', 'U') IS NOT NULL 
  DROP TABLE dbo.BuildingsContents; 
GO
CREATE TABLE [dbo].BuildingsContents(
	[BuildingsContentsId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](30) NOT NULL,
	[Status] [int] NOT NULL,
	[InclusionUserId] [int] NOT NULL,
	[InclusionDate] [datetime] NOT NULL,
	[LastChangeUserId]				INT NULL,
	[LastChangeDate]				DATETIME NULL
 CONSTRAINT [PK_BuildingsContents_BuildingsContentsId] PRIMARY KEY CLUSTERED 
(
	[BuildingsContentsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

IF OBJECT_ID('dbo.ProductVersionActivity', 'U') IS NOT NULL 
  DROP TABLE dbo.ProductVersionActivity; 
GO
CREATE TABLE [dbo].ProductVersionActivity(
	[ProductVersionActivityId][int] IDENTITY(1,1) NOT NULL,
	[ProductVersionId]			 [int] NOT NULL,
	[ActivityId]				 [int] NOT NULL,
	[HazardGroupId]				 [int] NOT NULL,
	[RiskTypeId]				 [int] NOT NULL,		
	[ProfileId]					 [int] NOT NULL,
	[Status]					 [int] NOT NULL,
	[InclusionUserId]			 [int] NOT NULL,
	[InclusionDate]				 [datetime] NOT NULL,
	[LastChangeUserId]				INT NULL,
	[LastChangeDate]				DATETIME NULL
 CONSTRAINT [PK_ProductVersionActivity_ProductVersionActivityId] PRIMARY KEY CLUSTERED 
(
	[ActivityId] ASC
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
	[Name] [varchar](300) NOT NULL,
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

ALTER TABLE [dbo].[Activity]  WITH CHECK ADD  CONSTRAINT [FK_Activity_ActivityNature_ActivityNatureId] FOREIGN KEY([ActivityNatureId])
REFERENCES [dbo].[ActivityNature] ([ActivityNatureId])


ALTER TABLE [dbo].[ProductVersionActivity]  WITH CHECK ADD  CONSTRAINT [FK_ProductVersionActivity_ProductVersion_ProductVersionId] FOREIGN KEY([ProductVersionId])
REFERENCES [dbo].[ProductVersion] ([ProductVersionId])

ALTER TABLE [dbo].[ProductVersionActivity]  WITH CHECK ADD  CONSTRAINT [FK_ProductVersionActivity_Activity_ActivityId] FOREIGN KEY([ActivityId])
REFERENCES [dbo].[Activity] ([ActivityId])

ALTER TABLE [dbo].[ProductVersionActivity]  WITH CHECK ADD  CONSTRAINT [FK_ProductVersionActivity_HazardGroup_HazardGroupId] FOREIGN KEY([HazardGroupId])
REFERENCES [dbo].[HazardGroup] ([HazardGroupId])

ALTER TABLE [dbo].[ProductVersionActivity]  WITH CHECK ADD  CONSTRAINT [FK_ProductVersionActivity_RiskType_RiskTypeId] FOREIGN KEY(RiskTypeId)
REFERENCES [dbo].[RiskType] ([RiskTypeId])

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
INSERT INTO CoverageGroup VALUES ('Responsabilidade Civil', 76,1, 14, Getdate(),null,null)
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


INSERT INTO [dbo].[Coverage] VALUES ( N'Incêndio, Queda de Raio, Explosão, Implosão e Queda de Aeronaves',N'Danos materiais decorrentes de incêndio de qualquer natureza, onde quer que tenham se originado,   incluindo queimadas em zonas rurais;',3,1,1,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Compreensiva para Veículos em Exposição E Venda',N'Exclusivamente para empresas cuja atividade/ocupação seja Concessionárias Autorizadas de Veículos/Máquinas e Implementos Agrícolas garante Perda e danos exclusivamente materiais e diretamente causados aos veículos de propriedade do Segurado, desde que tais danos materiais sejam resultantes de:  a) Incêndio, raio ou explosão.   b) Roubo.  c) Furto Qualificado, total ou parcial.   do Código Penal.  d) Colisão, abalroamento ou capotagem acidental.;',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Despesas de Recomposição de Registros de Documentos',N'Garante o reembolso das despesas necessárias à recomposição de seus registros e documentos que forem destruídos total ou parcialmente por eventos de causa externa. Estarão amparados também os registros e documentos de terceiros quando inerentes ao ramo de atividade do Segurado.',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Impacto de Veículos Terrestres',N'A seguradora indenizará por esta cobertura os danos materiais diretamente causados aos bens segurados em consequência do impacto de veículos terrestres. Entende-se por “veículo terrestre” aquele que possa ou não dispor de tração própria.',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Tumultos, Greves e Lock-Out',N'Cobertura que ampara as perdas e danos causados aos bens cobertos por atos predatórios, ocorridos durante tumulto, greve ou lockout.',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Ruptura de Tanques e Tubulações',N'Garante as perdas e/ou danos materiais de origem súbita e imprevista causados ao estabelecimento segurado em consequência de derrame ou vazamento de água, ocasionado pelo rompimento das  tubulações e/ou encanamentos das instalações fixas da rede interna de água e esgoto, do sistema de tratamento e reutilização de água, assim como os reservatórios existentes no imóvel segurado.',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Derrame ou Vazamento de Material em Estado de Fusão',N'Garante as perdas ou pelos danos materiais de origem súbita e imprevista, sofridos por tanques fixos de depósitos ou por seus respectivos conteúdos, ou tubulações existentes no local segurado, diretamente causados por acidentes de causa externa, exceto por impacto de veículos.',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Derrame de Sprinklers',N'Garante as perdas ou danos materiais causados, direta e exclusivamente, aos bens segurados, decorrentes de infiltração, derrame de água ou outra substância líquida contida em instalações de chuveiros automáticos (sprinklers) em consequência de acidente de causa externa.',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Perda e/ou Pagamento de Aluguel',N'Esta cobertura garante o pagamento, por período indenizatório especificado na apólice de seguros (normalmente 6 ou 12 meses), de despesas de aluguel e demais despesas contratuais, caso o imóvel não possa ser  ocupado, em decorrência dos eventos de danos materiais cobertos e contratados na apólice de seguros.',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Alagamento',N'Garante as perdas ou os danos materiais causados aos bens descritos na apólice por entrada de água no local segurado proveniente de aguaceiro, tromba-d’água ou chuva, seja ou não consequente da obstrução ou insuficiência de esgotos, galerias pluviais, desaguadouros e similares',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Avarias de Máquinas e Equipamentos',N'Garante os prejuízos por perda e danos materiais, de origem súbita e imprevista (causa externa), causados:  Aos equipamentos eletrônicos, arrendados ou cedidos a terceiros, em exposição, móveis ou estacionários, portáteis de propriedade do Segurado ou de terceiros utilizados em função da atividade empresarial.  Por impacto externo, queda, balanço, colisão, virada ou fatos equivalentes, durante a movimentação interna ou operações de carga e descarga.',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Equipamentos Eletrônicos',N'Garante, a indenização por perdas e danos materiais, de origem súbita e imprevista (causa externa),   causados aos Equipamentos Eletrônicos de propriedade do segurado, ou por ele utilizados em   função de sua atividade e que estejam nas dependências do local de risco, em consequência de:  a) Danos mecânicos;  b) Transporte interno;  c) Queda, quebra, amassamento em consequência de eventos cobertos.',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Equipamentos Arrendados ou Cedidos a Terceiros',N'Garante, danos materiais causados aos bens segurados por qualquer acidente de causa externa.Esta garantia abrange os equipamentos segurados nos locais de operação ou de guarda, assim como a sua trasladação fora de tais locais, por autopropulsão ou por qualquer meio de transporte adequado.',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Equipamentos em Exposição',N'Equipamentos em Exposição',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Equipamentos Estacionários e Móveis',N'Garante as perdas ou os danos materiais causados aos equipamentos estacionários descritos na apólice, por acidentes decorrentes de causa externa. E aos danos materiais causados aos equipamentos móveis, por acidentes decorrentes de causa externa, enquanto estiverem nos canteiros de obras ou locais de trabalho, considerando-se, também, como tais, locais de guarda, assim como sua transladação fora desses lugares, por autopropulsão ou qualquer meio de transporte adequado.',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Deterioração de Mercadorias em Ambientes Frigorificados',N'Garante, as perdas e danos materiais causados à mercadorias existentes no estabelecimento segurado, em ambientes frigorificados em consequência de:  a) Ruptura, quebra ou desarranjo acidental de qualquer parte do sistema de refrigeração;  b) Vazamento, descarga ou evaporação da substância refrigerante contida no sistema de refrigeração;  c) Falha no fornecimento de energia elétrica  d) Desentulho do local.',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Movimentação Interna',N'Garante a indenização por perdas e danos materiais causados por impacto externo, queda, balanço, colisão, virada ou fatos equivalentes, durante a movimentação interna ou operações de carga e  descarga.',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Danos Elétricos',N'Garante as perdas ou danos físicos diretamente causados a quaisquer máquinas, equipamentos ou instalações eletrônicas ou elétricas devido a variações anormais de tensão, curto-circuito, arco voltaico, calor gerado acidentalmente por eletricidade, descargas elétricas, eletricidade estática ou qualquer efeito ou fenômeno de natureza elétrica, inclusive a queda de raio.',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Quebra de Vidros e Anúncios Luminosos e Mármores',N'Garante as perdas ou pelos danos materiais sofridos por vidros, regularmente existentes e instalados no(s) local(is) segurado(s) descrito(s) na apólice, bem como perdas ou danos materiais causados aos letreiros, anúncios luminosos e painéis, inclusive às respectivas estruturas e bases, decorrentes de quaisquer acidentes de causa externa, salvo os expressamente excluídos.',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Roubo de Bens',N'Garante as perdas e/ou danos materiais causados aos bens de propriedade do segurado por:  a) roubo ou furto qualificado, caracterizado com destruição ou rompimento e obstáculo;  b) extorsão, de acordo com a definição do artigo 158 do Código Penal;  c) danos causados a portas e janelas, bem como danos às fechaduras e outras partes do imóvel, onde os bens cobertos encontram-se localizados, quer o furto qualificado tenha se consumado ou não, ou tenha se caracterizado como simples tentativa.',3,2,0,1, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Roubo de Bens de Hóspedes',N'Exclusivamente para empresas cuja atividade/ocupação seja hotéis/resorts/pousadas, garante a indenização por perdas e danos causados aos bens pertencentes aos hóspedes, guardados   no cofre do hotel, não se considerando como tal os cofres localizados dentro dos quartos, enquanto  os mesmos estiverem hospedados no local segurado.',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Roubo de Valores no Interior do Estabelecimento',N'Cobertura voltada para contratações de seguros compreensivos empresariais e que ampara os prejuízos decorrentes de:  a) roubo ou furto qualificado caracterizado, com destruição ou rompimento de obstáculo, de valores de propriedade do segurado, quando ocorridos no interior do estabelecimento segurado;  b) destruição ou perecimento dos valores em consequência ou decorrente da simples tentativa de roubo ou furto qualificado;  c) extorsão de acordo com a definição do artigo 158 do Código Penal.',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Roubo de Valores em Trânsito em Mãos de Portadores',N'Cobertura também voltada para contratações de seguros compreensivos empresariais e que ampara os prejuízos decorrentes de roubo ou furto de valores ocorridos em trânsito em mãos de portadores (pessoas às quais são confiados os valores para missões externas)',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Vendaval, Furacão, Ciclone, Granizo e Tornado',N'Visa garantir as perdas e os danos causados aos bens segurados diretamente por vendaval, furacão, ciclone, tornado e granizo.',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Perda de Lucro Bruto',N'Esta cobertura garante o pagamento, por período indenizatório especificado na apólice de seguros, referente às perdas de Lucro Bruto (constituído pela soma do Lucro Líquido e Despesas Fixas) do estabelecimento segurado resultante da interrupção ou queda no movimento de negócios da empresa segurada em decorrência de sinistro de danos materiais coberto pelas coberturas contratadas no seguro.',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Despesas Fixas',N'Esta cobertura garante o pagamento, por período indenizatório especificado na apólice de seguros, de despesas fixas se o estabelecimento segurado ficar total ou parcialmente paralisado em consequência de sinistro de danos materiais garantido por cobertura contratada no seguro, geralmente pela cobertura incêndio, queda de raio e explosão (Cobertura Básica).',3,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Responsabilidade Civil Operações',N'Estabelece, normalmente, que a seguradora responderá pelo reembolso ao segurado das quantias pelas quais vier a ser responsável civilmente, em sentença judicial transitada em julgado ou em acordo autorizado de modo expresso pela seguradora, pelos danos materiais e corporais causados involuntariamente a terceiros durante a vigência deste contrato e que decorram dos  riscos estabelecidos nas condições gerais',3,3,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Responsabilidade Civil Contingente de Veículos',N'Garante o reembolso ao segurado das quantias pelas quais vier a ser responsável civilmente, relativas a reparações por danos materiais causados exclusivamente a veículos de terceiros sob a guarda ou custódia do segurado, decorrentes de:  -incêndio ou explosão;  -roubo ou furto qualificado total;  -colisão de veículos contra obstáculos;  -colisão entre veículos;  -acidentes relacionados à existência, conservação e ao uso do local do risco indicado na apólice.',3,3,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Responsabilidade Civil Empregador',N'Cobre acidentes súbitos e inesperados que resultem morte ou invalidez permanente de empregados quando a serviço do segurado.',3,3,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Responsabilidade Civil Estabelecimentos de Ensino',N'Ampara os danos causados a terceiros que sejam decorrentes de acidentes relacionados com a existência, uso e conservação do local de risco, bem como à realização das atividades desenvolvidas pelo segurado no referido imóvel.',3,3,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Responsabilidade Civil Estabelecimentos de Hospedagem',N'Garante a indenização a terceiros por danos corporais e materiais causados em hóspedes ou pessoas que estão utilizando as dependências do hotel para alimentação, reunião ou eventos.',3,3,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Responsabilidade Civil Guarda de Veículos de Terceiros',N'Garante o reembolso ao segurado das quantias pelas quais vier a ser responsável civilmente, relativas a reparações por danos materiais causados exclusivamente a veículos de terceiros sob a guarda ou custódia do segurado, decorrentes de:  -incêndio ou explosão;  -roubo ou furto qualificado total;  -colisão de veículos contra obstáculos;  -colisão entre veículos;  -acidentes relacionados à existência, conservação e ao uso do local do risco indicado na apólice.',3,3,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Responsabilidade Civil Guarda de Veículos para Concessionárias Autorizadas',N'Garante indenização por avarias, perdas e danos materiais de origem súbita, imprevista e acidental, diretamente ocasionadas por colisão, incêndio e roubo, causadas aos veículos e/ou pelos veículos de clientes, quando conduzidos por manobrista, devidamente autorizados, durante o percurso entre o estabelecimento segurado e os locais de estacionamento indicados na apólice, durante a vigência da apólice.',3,3,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Danos Morais',N'Garante o reembolso das quantias mensuráveis pelas quais o Segurado vier a ser civilmente responsável a pagar, em sentença judicial transitada em julgado ou em acordo expressamente autorizado pela Seguradora, em virtude de Danos Morais diretamente decorrentes de Danos Materiais e/ou de Danos Corporais causados a terceiros, durante a vigência deste contrato e efetivamente indenizados nos termos previstos na especificação da apólice.',3,3,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Incêndio, Queda de Raio, Explosão, Fumaça e Queda de Aeronaves ',N'Ampara sua residência se ela for atingida por fogo ou fumaça ou até se acontecer uma explosão. Além disso, essa cobertura ampara seu imóvel em caso de queda de aeronaves.  ',4,1,1,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Danos Elétricos',N'Ampara os danos em seus eletrodomésticos, eletroeletrônicos e instalações elétricas causados por curto-circuito, variações anormais de tensão e queda de raio. Essa cobertura ampara o valor para conserto ou compra de novos equipamentos.',4,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Responsabilidade Civil Familiar (danos a terceiros) ',N'Essa cobertura ampara os danos causados a terceiros, se você for responsabilizado civilmente. Ex: seu pet mordeu alguém na rua ou seu filho quebrou o vidro da janela do vizinho.',4,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Vendaval, Furacão, Ciclone, Tornado e Granizo',N'Garante os danos a sua residência causados diretamente por vendaval, ciclone, tornado, furacão e granizo. ',4,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Quebra de Vidros, Mármores e Granitos',N'Cobre  danos  causados,  por  quaisquer  acidentes  de  causa  externa,  aos  vidros,  espelhos, mármores e granitos (exceto pisos) instalados de forma fixa no imóvel, bem como, tampos de vidro de mesa ou instalados em balcões de uso doméstico, cooktop e louças sanitárias.',4,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Impacto de Veículos',N'Ampara sua casa se algum veículo de terceiro atingir involuntariamente sua casa e danificá-la. ',4,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Despesas com Aluguel',N'Em  caso  de  sinistro  de  incêndio,  queda  de  raio,  explosão,  vendaval,  furacão,  ciclone, tornado,  granizo  e  impacto  de  veículos  terrestres  e  aéreos  (desde  que contratada  a cobertura  adicional),  que  impeça  o  imóvel  de  permanecer  ocupado,  garante  ao segurado as despesas de aluguel caso ele seja proprietário ou locatário do imóvel.',4,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Roubo e Subtração de Bens com Arrombamento',N'Ampara o roubo ou furto qualificado de bens de sua casa. Para recebimento da indenização respeitando o valor contratado é necessário comprovar a pré-existência dos bens (para alguns itens é necessária apresentação da nota fiscal).',4,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Ruptura de Tubulações',N'Ampara os danos decorrentes de rupturas de tanques e tubulações da rede de água e esgoto da residência segurada. Lembrando que a ruptura tem que ser acidental e súbita. ',4,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Tumultos, Greves e Lock-outs',N'Ampra os danos materiais causados por tumultos, greves e lock-outs.',4,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Equipamentos Eletrônicos',N'Ampara os danos causados aos equipamentos do segurado como laptops (notebook, netbook, ultrabook) e desktops, inclusive seus acessórios decorrentes de acidentes de origem súbita.',4,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Danos ao Jardim',N'Em caso de incêndio, vendaval, queda de granizo ou até um assalto, essa cobertura ampara os danos ao jardim da sua casa, inclusive a iluminação, sistemas de irrigação, chafariz e mobiliário existentes nesse espaço. ',4,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Obras de Arte e Bens Culturais',N'Obras de Arte e Bens Culturais - Garante os danos decorrentes de Incêndio, Vendaval, Roubo com Arrombamento e Impacto de Veículos às obras de arte (desenhos, pinturas, quadros, esculturas, vasos e objetos decorativos) e bens culturais (obras de artistas, arquitetos, músicos, escritores ligados a cultura de alguma nacionalidade e/ou grupo específico',4,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Desmoronamento',N'Esta cobertura ampara danos diretamente causados por desmoronamento total ou parcial do imóvel segurado, respeitando o limite máximo indenizável ',4,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Joias e Relogios',N'Essa cobertura garante a indenização dos danos causados às jóias, obras e objetos de arte de propriedade do segurado que estiverem em sua casa decorrente de eventos como roubo ou furto qualificado, alagamento, vendaval, queda de aeronaves, impacto de veículos, desmoronamento, tumultos, incêndio, raio e explosão.',4,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Roubo de Bens Fora do Local de Risco',N'Essa cobertura garante o roubo  ou  furto  qualificado  de  bicicletas,  celulares,  filmadoras  e  máquinas fotográficas, notebook, laptop, tablet, netbook, jóias e relógios de pulso, fora do local de  risco de acordo com os limites estabelecidos nas condições gerais do produto. É necessária a comprovação dos bens através de notas fiscais.  ',4,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Alagamento e inundação',N'Garante os danos causados a sua residência em caso de alagamento, inundação e enchente, que tenham acontecido por fortes chuvas. ',4,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Roubo de Bens',N'Garante as perdas e/ou danos materiais causados aos bens de propriedade do segurado por:  a) roubo ou furto qualificado, caracterizado com destruição ou rompimento e obstáculo;  b) extorsão, de acordo com a definição do artigo 158 do Código Penal;  c) danos causados a portas e janelas, bem como danos às fechaduras e outras partes do imóvel, onde os bens cobertos encontram-se localizados, quer o furto qualificado tenha se consumado ou não, ou tenha se caracterizado como simples tentativa.',4,2,0,1, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Anfitrião',N'Ampara os danos materiais causados pelo hóspede aos bens da residência anfitriã durante sua permanência no imóvel. ',4,2,0,0, N'10353', 1, 6,GETDATE(), NULL, NULL)

INSERT INTO [dbo].[Coverage] VALUES ( N'Licitante',															N'',1,1,1,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Contrato',															N'',1,1,1,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Pagamentos',														N'',1,1,1,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Garantia Recursal',													N'',1,1,1,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
INSERT INTO [dbo].[Coverage] VALUES ( N'Judicial para execução trabalhista',								N'',1,1,1,0, N'10353', 1, 6,GETDATE(), NULL, NULL)
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


INSERT INTO  HazardGroup VALUES ('Grupo de Risco 1',1,1, GETDATE(), null,null)
INSERT INTO  HazardGroup VALUES ('Grupo de Risco 2',1,1, GETDATE(), null,null)
INSERT INTO  HazardGroup VALUES ('Grupo de Risco 3',1,1, GETDATE(), null,null)
INSERT INTO  HazardGroup VALUES ('Grupo de Risco 4',1,1, GETDATE(), null,null)
INSERT INTO  HazardGroup VALUES ('Grupo de Risco 5',1,1, GETDATE(), null,null)
INSERT INTO  HazardGroup VALUES ('Grupo de Risco 6',1,1, GETDATE(), null,null)
INSERT INTO  HazardGroup VALUES ('Grupo de Risco 7',1,1, GETDATE(), null,null)
INSERT INTO  HazardGroup VALUES ('Grupo de Risco 8',1,1, GETDATE(), null,null)


INSERT INTO  ActivityNature VALUES ('Comércio',1,1, GETDATE(), null,null)
INSERT INTO  ActivityNature VALUES ('Indústria',1,1, GETDATE(), null,null)
INSERT INTO  ActivityNature VALUES ('Serviços',1,1, GETDATE(), null,null)

INSERT INTO  RiskType VALUES ('Aceito',1,1, GETDATE(), null,null)
INSERT INTO  RiskType VALUES ('Restrito',1,1, GETDATE(), null,null)
INSERT INTO  RiskType VALUES ('Sob Consulta',1,1, GETDATE(), null,null)


insert into activity  values (1, 'Representantes comerciais e agentes do comércio de matérias-primas agrícolas e animais vivos    ',1,1,getdate(),null,null)
insert into activity  values (1, 'Representantes comerciais e agentes do comércio de combustíveis, minerais, produtos siderúrgicos e químicos',1,1,getdate(),null,null)
insert into activity  values (1, 'Representantes comerciais e agentes do comércio de madeira, material de construção e ferragens  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Representantes comerciais e agentes do comércio de máquinas, equipamentos, embarcações e aeronaves',1,1,getdate(),null,null)
insert into activity  values (1, 'Representantes comerciais e agentes do comércio de eletrodomésticos, móveis e artigos de uso doméstico',1,1,getdate(),null,null)
insert into activity  values (1, 'Representantes comerciais e agentes do comércio de têxteis, vestuário, calçados e artigos de viagem   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Representantes comerciais e agentes do comércio de produtos alimentícios, bebidas e fumo   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Representantes comerciais e agentes do comércio especializado em produtos não especificados anteriormente  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Representantes comerciais e agentes do comércio de mercadorias em geral não especializado  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio atacadista de café em grão',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio atacadista de soja   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio atacadista de animais vivos, alimentos para animais e matérias-primas agrícolas, exceto café e soja ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio atacadista de leite e laticínios',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio atacadista de cereais e leguminosas beneficiados, farinhas, amidos e féculas  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio atacadista de hortifrutigranjeiros   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio atacadista de carnes, produtos da carne e pescado    ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio atacadista de bebidas',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio atacadista de produtos do fumo  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio atacadista especializado em produtos alimentícios não especificados anteriormente ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio atacadista de produtos alimentícios em geral',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio atacadista de tecidos, artefatos de tecidos e de armarinho    ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio atacadista de artigos do vestuário e acessórios ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio atacadista de calçados e artigos de viagem  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio atacadista de produtos farmacêuticos para uso humano e veterinário   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio atacadista de instrumentos e materiais para uso médico, cirúrgico, ortopédico e odontológico ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio atacadista de cosméticos, produtos de perfumaria e de higiene pessoal',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio atacadista de artigos de escritório e de papelaria; livros, jornais e outras publicações ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio atacadista de equipamentos e artigos de uso pessoal e doméstico não especificados anteriormente   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio atacadista de computadores, periféricos e suprimentos de informática ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio atacadista de componentes eletrônicos e equipamentos de telefonia e comunicação   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio atacadista de máquinas, aparelhos e equipamentos para uso agropecuário; partes e peças ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio atacadista de máquinas, equipamentos para terraplenagem, mineração e construção; partes e peças   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio atacadista de máquinas e equipamentos para uso industrial; partes e peças',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio atacadista de máquinas, aparelhos e equipamentos para uso odonto-médico-hospitalar; partes e peças',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio atacadista de máquinas e equipamentos para uso comercial; partes e peças ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio atacadista de máquinas, aparelhos e equipamentos não especificados anteriormente; partes e peças  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio atacadista de madeira e produtos derivados  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio atacadista de ferragens e ferramentas',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio atacadista de material elétrico ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio atacadista de cimento',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio atacadista especializado de materiais de construção não especificados anteriormente e de materiais de construção em geral  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio atacadista de combustíveis sólidos, líquidos e gasosos, exceto gás natural e GLP  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio atacadista de gás liqüefeito de petróleo (GLP)  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio atacadista de defensivos agrícolas, adubos, fertilizantes e corretivos do solo',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio atacadista de produtos químicos e petroquímicos, exceto agroquímicos ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio atacadista de produtos siderúrgicos e metalúrgicos, exceto para construção    ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio atacadista de papel e papelão em bruto e de embalagens   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio atacadista de resíduos e sucatas',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio atacadista especializado de outros produtos intermediários não especificados anteriormente   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio atacadista de mercadorias em geral, com predominância de produtos alimentícios',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio atacadista de mercadorias em geral, com predominância de insumos agropecuários',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio atacadista de mercadorias em geral, sem predominância de alimentos ou de insumos agropecuários    ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio varejista de mercadorias em geral, com predominância de produtos alimentícios - hipermercados e supermercados',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio varejista de mercadorias em geral, com predominância de produtos alimentícios - minimercados, mercearias e armazéns   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio varejista de mercadorias em geral, sem predominância de produtos alimentícios ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio varejista de produtos de padaria, laticínio, doces, balas e semelhantes  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio varejista de carnes e pescados - açougues e peixarias',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio varejista de bebidas ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio varejista de hortifrutigranjeiros    ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio varejista de produtos alimentícios em geral ou especializado em produtos alimentícios não especificados anteriormente; produtos do fumo    ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio varejista de combustíveis para veículos automotores  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio varejista de lubrificantes',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio varejista de tintas e materiais para pintura',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio varejista de material elétrico  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio varejista de vidros  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio varejista de ferragens, madeira e materiais de construção',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio varejista especializado de equipamentos e suprimentos de informática ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio varejista especializado de equipamentos de telefonia e comunicação   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio varejista especializado de eletrodomésticos e equipamentos de áudio e vídeo   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio varejista especializado de móveis, colchoaria e artigos de iluminação',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio varejista especializado de tecidos e artigos de cama, mesa e banho   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio varejista especializado de instrumentos musicais e acessórios ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio varejista especializado de peças e acessórios para aparelhos eletroeletrônicos para uso doméstico, exceto informática e comunicação   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio varejista de artigos de uso doméstico não especificados anteriormente',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio varejista de livros, jornais, revistas e papelaria   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio varejista de discos, CDs, DVDs e fitas ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio varejista de artigos recreativos e esportivos   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio varejista de produtos farmacêuticos para uso humano e veterinário    ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio varejista de cosméticos, produtos de perfumaria e de higiene pessoal ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio varejista de artigos médicos e ortopédicos  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio varejista de artigos de óptica  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio varejista de artigos do vestuário e acessórios  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio varejista de calçados e artigos de viagem   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio varejista de jóias e relógios   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio varejista de gás liqüefeito de petróleo (GLP)   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio varejista de artigos usados ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio varejista de outros produtos novos não especificados anteriormente   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio ambulante e outros tipos de comércio varejista  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Incorporação de empreendimentos imobiliários  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio atacadista de energia elétrica  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio a varejo e por atacado de veículos automotores  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Representantes comerciais e agentes do comércio de veículos automotores',1,1,getdate(),null,null)
insert into activity  values (1, 'Atividades de Correio',1,1,getdate(),null,null)
insert into activity  values (1, 'Atividades de malote e de entrega  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Hotéis e similares   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Outros tipos de alojamento não especificados anteriormente    ',1,1,getdate(),null,null)
insert into activity  values (1, 'Restaurantes e outros estabelecimentos de serviços de alimentação e bebidas   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Serviços ambulantes de alimentação ',1,1,getdate(),null,null)
insert into activity  values (1, 'Serviços de catering, bufê e outros serviços de comida preparada  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio de peças e acessórios para veículos automotores ',1,1,getdate(),null,null)
insert into activity  values (1, 'Comércio por atacado e a varejo de motocicletas, peças e acessórios    ',1,1,getdate(),null,null)
insert into activity  values (1, 'Representantes comerciais e agentes do comércio de motocicletas, peças e acessórios    ',1,1,getdate(),null,null)
insert into activity  values (1, 'Armazenamento    ',1,1,getdate(),null,null)
insert into activity  values (1, 'Carga e descarga ',1,1,getdate(),null,null)
insert into activity  values (1, 'Atividades de exibição cinematográfica   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Atividades de gravação de som e de edição de música  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Atividades de rádio  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Atividades de televisão aberta',1,1,getdate(),null,null)
insert into activity  values (1, 'Programadoras e atividades relacionadas à televisão por assinatura',1,1,getdate(),null,null)
insert into activity  values (1, 'Operadoras de televisão por assinatura por cabo ',1,1,getdate(),null,null)
insert into activity  values (1, 'Operadoras de televisão por assinatura por microondas',1,1,getdate(),null,null)
insert into activity  values (1, 'Operadoras de televisão por assinatura por satélite  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Outras atividades de telecomunicações',1,1,getdate(),null,null)
insert into activity  values (1, 'Locação de automóveis sem condutor ',1,1,getdate(),null,null)
insert into activity  values (1, 'Locação de meios de transporte, exceto automóveis, sem condutor   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Aluguel de equipamentos recreativos e esportivos',1,1,getdate(),null,null)
insert into activity  values (1, 'Aluguel de fitas de vídeo, DVDs e similares   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Aluguel de objetos do vestuário, jóias e acessórios  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Aluguel de objetos pessoais e domésticos não especificados anteriormente ',1,1,getdate(),null,null)
insert into activity  values (1, 'Aluguel de máquinas e equipamentos agrícolas sem operador',1,1,getdate(),null,null)
insert into activity  values (1, 'Aluguel de máquinas e equipamentos para construção sem operador   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Aluguel de máquinas e equipamentos para escritório   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Aluguel de máquinas e equipamentos não especificados anteriormente',1,1,getdate(),null,null)
insert into activity  values (1, 'Agências de viagens  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Operadores turísticos',1,1,getdate(),null,null)
insert into activity  values (1, 'Serviços de reservas e outros serviços de turismo não especificados anteriormente ',1,1,getdate(),null,null)
insert into activity  values (1, 'Estacionamento de veículos',1,1,getdate(),null,null)
insert into activity  values (1, 'Fotocópias, preparação de documentos e outros serviços especializados de apoio administrativo   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Envasamento e empacotamento sob contrato ',1,1,getdate(),null,null)
insert into activity  values (2, 'Edição de livros ',1,1,getdate(),null,null)
insert into activity  values (2, 'Edição de jornais',1,1,getdate(),null,null)
insert into activity  values (2, 'Edição de revistas   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Edição de cadastros, listas e outros produtos gráficos   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Edição integrada à impressão de livros   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Edição integrada à impressão de jornais  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Edição integrada à impressão de revistas ',1,1,getdate(),null,null)
insert into activity  values (2, 'Edição integrada à impressão de cadastros, listas e outros produtos gráficos  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Geração de energia elétrica   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Transmissão de energia elétrica    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Recuperação de materiais metálicos ',1,1,getdate(),null,null)
insert into activity  values (2, 'Recuperação de materiais plásticos ',1,1,getdate(),null,null)
insert into activity  values (2, 'Recuperação de materiais não especificados anteriormente ',1,1,getdate(),null,null)
insert into activity  values (2, 'Descontaminação e outros serviços de gestão de resíduos  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Distribuição de energia elétrica   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Produção de gás; processamento de gás natural; distribuição de combustíveis gasosos por redes urbanas ',1,1,getdate(),null,null)
insert into activity  values (2, 'Produção e distribuição de vapor, água quente e ar condicionado   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Captação, tratamento e distribuição de água   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Gestão de redes de esgoto ',1,1,getdate(),null,null)
insert into activity  values (2, 'Atividades relacionadas a esgoto, exceto a gestão de redes    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Construção de edifícios   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Construção de rodovias e ferrovias ',1,1,getdate(),null,null)
insert into activity  values (2, 'Construção de obras-de-arte especiais',1,1,getdate(),null,null)
insert into activity  values (2, 'Obras de urbanização - ruas, praças e calçadas',1,1,getdate(),null,null)
insert into activity  values (2, 'Obras para geração e distribuição de energia elétrica e para telecomunicações ',1,1,getdate(),null,null)
insert into activity  values (2, 'Construção de redes de abastecimento de água, coleta de esgoto e construções correlatas',1,1,getdate(),null,null)
insert into activity  values (2, 'Construção de redes de transportes por dutos, exceto para água e esgoto',1,1,getdate(),null,null)
insert into activity  values (2, 'Obras portuárias, marítimas e fluviais   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Montagem de instalações industriais e de estruturas metálicas ',1,1,getdate(),null,null)
insert into activity  values (2, 'Obras de engenharia civil não especificadas anteriormente',1,1,getdate(),null,null)
insert into activity  values (2, 'Demolição e preparação de canteiros de obras  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Perfurações e sondagens   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Obras de terraplenagem    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Serviços de preparação do terreno não especificados anteriormente ',1,1,getdate(),null,null)
insert into activity  values (2, 'Instalações elétricas',1,1,getdate(),null,null)
insert into activity  values (2, 'Instalações hidráulicas, de sistemas de ventilação e refrigeração ',1,1,getdate(),null,null)
insert into activity  values (2, 'Obras de instalações em construções não especificadas anteriormente    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Obras de acabamento  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Obras de fundações   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Serviços especializados para construção não especificados anteriormente',1,1,getdate(),null,null)
insert into activity  values (2, 'Cultivo de cereais   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Cultivo de algodão herbáceo e de outras fibras de lavoura temporária   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Cultivo de cana-de-açúcar ',1,1,getdate(),null,null)
insert into activity  values (2, 'Cultivo de fumo  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Cultivo de soja  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Cultivo de oleaginosas de lavoura temporária, exceto soja',1,1,getdate(),null,null)
insert into activity  values (2, 'Cultivo de plantas de lavoura temporária não especificadas anteriormente ',1,1,getdate(),null,null)
insert into activity  values (2, 'Horticultura',1,1,getdate(),null,null)
insert into activity  values (2, 'Cultivo de flores e plantas ornamentais  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Cultivo de laranja   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Cultivo de uva   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Cultivo de frutas de lavoura permanente, exceto laranja e uva ',1,1,getdate(),null,null)
insert into activity  values (2, 'Cultivo de café  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Cultivo de cacau ',1,1,getdate(),null,null)
insert into activity  values (2, 'Cultivo de plantas de lavoura permanente não especificadas anteriormente ',1,1,getdate(),null,null)
insert into activity  values (2, 'Produção de sementes certificadas  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Produção de mudas e outras formas de propagação vegetal, certificadas  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Criação de bovinos   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Criação de outros animais de grande porte',1,1,getdate(),null,null)
insert into activity  values (2, 'Criação de caprinos e ovinos  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Criação de suínos',1,1,getdate(),null,null)
insert into activity  values (2, 'Criação de aves  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Criação de animais não especificados anteriormente   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Atividades de apoio à agricultura  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Atividades de apoio à pecuária',1,1,getdate(),null,null)
insert into activity  values (2, 'Atividades de pós-colheita',1,1,getdate(),null,null)
insert into activity  values (2, 'Caça e serviços relacionados  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Produção florestal - florestas plantadas ',1,1,getdate(),null,null)
insert into activity  values (2, 'Produção florestal - florestas nativas   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Atividades de apoio à produção florestal ',1,1,getdate(),null,null)
insert into activity  values (2, 'Pesca em água salgada',1,1,getdate(),null,null)
insert into activity  values (2, 'Pesca em água doce   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Aqüicultura em água salgada e salobra',1,1,getdate(),null,null)
insert into activity  values (2, 'Aqüicultura em água doce  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Extração de carvão mineral',1,1,getdate(),null,null)
insert into activity  values (2, 'Extração de petróleo e gás natural ',1,1,getdate(),null,null)
insert into activity  values (2, 'Extração de minério de ferro  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Extração de minério de alumínio    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Extração de minério de estanho',1,1,getdate(),null,null)
insert into activity  values (2, 'Extração de minério de manganês    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Extração de minério de metais preciosos  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Extração de minerais radioativos   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Extração de minerais metálicos não-ferrosos não especificados anteriormente   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Extração de pedra, areia e argila  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Extração de minerais para fabricação de adubos, fertilizantes e outros produtos químicos   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Extração e refino de sal marinho e sal-gema   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Extração de gemas (pedras preciosas e semipreciosas) ',1,1,getdate(),null,null)
insert into activity  values (2, 'Extração de minerais não-metálicos não especificados anteriormente',1,1,getdate(),null,null)
insert into activity  values (2, 'Atividades de apoio à extração de petróleo e gás natural ',1,1,getdate(),null,null)
insert into activity  values (2, 'Atividades de apoio à extração de minerais, exceto petróleo e gás natural',1,1,getdate(),null,null)
insert into activity  values (2, 'Abate de reses, exceto suínos ',1,1,getdate(),null,null)
insert into activity  values (2, 'Abate de suínos, aves e outros pequenos animais ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de produtos de carne    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Preservação do pescado e fabricação de produtos do pescado    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de conservas de frutas  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de conservas de legumes e outros vegetais ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de sucos de frutas, hortaliças e legumes  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de óleos vegetais em bruto, exceto óleo de milho   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de óleos vegetais refinados, exceto óleo de milho  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de margarina e outras gorduras vegetais e de óleos não-comestíveis de animais   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Preparação do leite  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de laticínios  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de sorvetes e outros gelados comestíveis  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Beneficiamento de arroz e fabricação de produtos do arroz',1,1,getdate(),null,null)
insert into activity  values (2, 'Moagem de trigo e fabricação de derivados',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de farinha de mandioca e derivados ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de farinha de milho e derivados, exceto óleos de milho ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de amidos e féculas de vegetais e de óleos de milho',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de alimentos para animais ',1,1,getdate(),null,null)
insert into activity  values (2, 'Moagem e fabricação de produtos de origem vegetal não especificados anteriormente ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de açúcar em bruto ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de açúcar refinado ',1,1,getdate(),null,null)
insert into activity  values (2, 'Torrefação e moagem de café   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de produtos à base de café',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de produtos de panificação',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de biscoitos e bolachas ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de produtos derivados do cacau, de chocolates e confeitos   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de massas alimentícias  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de especiarias, molhos, temperos e condimentos',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de alimentos e pratos prontos ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de produtos alimentícios não especificados anteriormente    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de aguardentes e outras bebidas destiladas',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de vinho  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de malte, cervejas e chopes   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de águas envasadas ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de refrigerantes e de outras bebidas não-alcoólicas',1,1,getdate(),null,null)
insert into activity  values (2, 'Processamento industrial do fumo   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de produtos do fumo',1,1,getdate(),null,null)
insert into activity  values (2, 'Preparação e fiação de fibras de algodão ',1,1,getdate(),null,null)
insert into activity  values (2, 'Preparação e fiação de fibras têxteis naturais, exceto algodão',1,1,getdate(),null,null)
insert into activity  values (2, 'Fiação de fibras artificiais e sintéticas',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de linhas para costurar e bordar   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Tecelagem de fios de algodão  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Tecelagem de fios de fibras têxteis naturais, exceto algodão  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Tecelagem de fios de fibras artificiais e sintéticas ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de tecidos de malha',1,1,getdate(),null,null)
insert into activity  values (2, 'Acabamentos em fios, tecidos e artefatos têxteis',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de artefatos têxteis para uso doméstico   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de artefatos de tapeçaria ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de artefatos de cordoaria ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de tecidos especiais, inclusive artefatos ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de outros produtos têxteis não especificados anteriormente  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Confecção de roupas íntimas   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Confecção de peças do vestuário, exceto roupas íntimas   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Confecção de roupas profissionais  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de acessórios do vestuário, exceto para segurança e proteção',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de meias  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de artigos do vestuário, produzidos em malharias e tricotagens, exceto meias',1,1,getdate(),null,null)
insert into activity  values (2, 'Curtimento e outras preparações de couro ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de artigos para viagem, bolsas e semelhantes de qualquer material  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de artefatos de couro não especificados anteriormente  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de calçados de couro    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de tênis de qualquer material ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de calçados de material sintético  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de calçados de materiais não especificados anteriormente    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de partes para calçados, de qualquer material ',1,1,getdate(),null,null)
insert into activity  values (2, 'Desdobramento de madeira  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de madeira laminada e de chapas de madeira compensada, prensada e aglomerada',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de estruturas de madeira e de artigos de carpintaria para construção   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de artefatos de tanoaria e de embalagens de madeira',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de artefatos de madeira, palha, cortiça, vime e material trançado não especificados anteriormente, exceto móveis',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de celulose e outras pastas para a fabricação de papel ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de papel  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de cartolina e papel-cartão   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de embalagens de papel  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de embalagens de cartolina e papel-cartão ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de chapas e de embalagens de papelão ondulado ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de produtos de papel, cartolina, papel-cartão e papelão ondulado para uso comercial e de escritório    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de produtos de papel para usos doméstico e higiênico-sanitário',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de produtos de pastas celulósicas, papel, cartolina, papel-cartão e papelão ondulado não especificados anteriormente',1,1,getdate(),null,null)
insert into activity  values (2, 'Impressão de jornais, livros, revistas e outras publicações periódicas ',1,1,getdate(),null,null)
insert into activity  values (2, 'Impressão de material de segurança ',1,1,getdate(),null,null)
insert into activity  values (2, 'Impressão de materiais para outros usos  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Serviços de pré-impressão ',1,1,getdate(),null,null)
insert into activity  values (2, 'Serviços de acabamentos gráficos   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Reprodução de materiais gravados em qualquer suporte ',1,1,getdate(),null,null)
insert into activity  values (2, 'Coquerias ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de produtos do refino de petróleo  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de produtos derivados do petróleo, exceto produtos do refino',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de álcool ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de biocombustíveis, exceto álcool  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de cloro e álcalis ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de intermediários para fertilizantes ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de adubos e fertilizantes ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de gases industriais    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de produtos químicos inorgânicos não especificados anteriormente   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de produtos petroquímicos básicos  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de intermediários para plastificantes, resinas e fibras',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de produtos químicos orgânicos não especificados anteriormente',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de resinas termoplásticas ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de resinas termofixas   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de elastômeros ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de fibras artificiais e sintéticas ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de defensivos agrícolas ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de desinfestantes domissanitários  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de sabões e detergentes sintéticos ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de produtos de limpeza e polimento ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de cosméticos, produtos de perfumaria e de higiene pessoal  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de tintas, vernizes, esmaltes e lacas',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de tintas de impressão  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de impermeabilizantes, solventes e produtos afins  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de adesivos e selantes  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de explosivos  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de aditivos de uso industrial ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de catalisadores   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de produtos químicos não especificados anteriormente   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de produtos farmoquímicos ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de medicamentos para uso humano    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de medicamentos para uso veterinário ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de preparações farmacêuticas  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de pneumáticos e de câmaras-de-ar  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Reforma de pneumáticos usados ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de artefatos de borracha não especificados anteriormente    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de laminados planos e tubulares de material plástico   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de embalagens de material plástico ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de tubos e acessórios de material plástico para uso na construção  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de artefatos de material plástico não especificados anteriormente  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de vidro plano e de segurança ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de embalagens de vidro  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de artigos de vidro',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de cimento',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de artefatos de concreto, cimento, fibrocimento, gesso e materiais semelhantes  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de produtos cerâmicos refratários  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de produtos cerâmicos não-refratários para uso estrutural na construção',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de produtos cerâmicos não-refratários não especificados anteriormente  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Aparelhamento e outros trabalhos em pedras    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de cal e gesso ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de produtos de minerais não-metálicos não especificados anteriormente  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Produção de ferro-gusa    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Produção de ferroligas    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Produção de semi-acabados de aço   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Produção de laminados planos de aço',1,1,getdate(),null,null)
insert into activity  values (2, 'Produção de laminados longos de aço',1,1,getdate(),null,null)
insert into activity  values (2, 'Produção de relaminados, trefilados e perfilados de aço  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Produção de tubos de aço com costura ',1,1,getdate(),null,null)
insert into activity  values (2, 'Produção de outros tubos de ferro e aço  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Metalurgia do alumínio e suas ligas',1,1,getdate(),null,null)
insert into activity  values (2, 'Metalurgia dos metais preciosos    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Metalurgia do cobre  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Metalurgia dos metais não-ferrosos e suas ligas não especificados anteriormente   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fundição de ferro e aço   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fundição de metais não-ferrosos e suas ligas  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de estruturas metálicas ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de esquadrias de metal  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de obras de caldeiraria pesada',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de tanques, reservatórios metálicos e caldeiras para aquecimento central    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de caldeiras geradoras de vapor, exceto para aquecimento central e para veículos',1,1,getdate(),null,null)
insert into activity  values (2, 'Produção de forjados de aço e de metais não-ferrosos e suas ligas ',1,1,getdate(),null,null)
insert into activity  values (2, 'Produção de artefatos estampados de metal; metalurgia do pó   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Serviços de usinagem, solda, tratamento e revestimento em metais  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de artigos de cutelaria ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de artigos de serralheria, exceto esquadrias  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de ferramentas ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de equipamento bélico pesado, armas e munições',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de embalagens metálicas ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de produtos de trefilados de metal ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de artigos de metal para uso doméstico e pessoal   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de produtos de metal não especificados anteriormente   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de componentes eletrônicos',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de equipamentos de informática',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de periféricos para equipamentos de informática    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de equipamentos transmissores de comunicação  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de aparelhos telefônicos e de outros equipamentos de comunicação   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de aparelhos de recepção, reprodução, gravação e amplificação de áudio e vídeo  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de aparelhos e equipamentos de medida, teste e controle',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de cronômetros e relógios ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de aparelhos eletromédicos e eletroterapêuticos e equipamentos de irradiação',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de equipamentos e instrumentos ópticos, fotográficos e cinematográficos',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de mídias virgens, magnéticas e ópticas   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de geradores, transformadores e motores elétricos  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de pilhas, baterias e acumuladores elétricos, exceto para veículos automotores  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de baterias e acumuladores para veículos automotores   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de aparelhos e equipamentos para distribuição e controle de energia elétrica',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de material elétrico para instalações em circuito de consumo',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de fios, cabos e condutores elétricos isolados',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de lâmpadas e outros equipamentos de iluminação    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de fogões, refrigeradores e máquinas de lavar e secar para uso doméstico    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de aparelhos eletrodomésticos não especificados anteriormente ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de equipamentos e aparelhos elétricos não especificados anteriormente  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de motores e turbinas, exceto para aviões e veículos rodoviários   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de equipamentos hidráulicos e pneumáticos, exceto válvulas  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de válvulas, registros e dispositivos semelhantes  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de compressores',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de equipamentos de transmissão para fins industriais   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de aparelhos e equipamentos para instalações térmicas  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de máquinas, equipamentos e aparelhos para transporte e elevação de cargas e pessoas ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de máquinas e aparelhos de refrigeração e ventilação para uso industrial e comercial ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de aparelhos e equipamentos de ar condicionado',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de máquinas e equipamentos para saneamento básico e ambiental ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de máquinas e equipamentos de uso geral não especificados anteriormente',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de tratores agrícolas   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de equipamentos para irrigação agrícola   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de máquinas e equipamentos para a agricultura e pecuária, exceto para irrigação ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de máquinas-ferramenta  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de máquinas e equipamentos para a prospecção e extração de petróleo',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de outras máquinas e equipamentos para uso na extração mineral, exceto na extração de petróleo  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de tratores, exceto agrícolas ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de máquinas e equipamentos para terraplenagem, pavimentação e construção, exceto tratores  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de máquinas para a indústria metalúrgica, exceto máquinas-ferramenta   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de máquinas e equipamentos para as indústrias de alimentos, bebidas e fumo  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de máquinas e equipamentos para a indústria têxtil ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de máquinas e equipamentos para as indústrias do vestuário, do couro e de calçados   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de máquinas e equipamentos para as indústrias de celulose, papel e papelão e artefatos ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de máquinas e equipamentos para a indústria do plástico',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de máquinas e equipamentos para uso industrial específico não especificados anteriormente  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de automóveis, camionetas e utilitários   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de caminhões e ônibus   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de cabines, carrocerias e reboques para veículos automotores',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de peças e acessórios para o sistema motor de veículos automotores ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de peças e acessórios para os sistemas de marcha e transmissão de veículos automotores ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de peças e acessórios para o sistema de freios de veículos automotores ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de peças e acessórios para o sistema de direção e suspensão de veículos automotores  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de material elétrico e eletrônico para veículos automotores, exceto baterias',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de peças e acessórios para veículos automotores não especificados anteriormente ',1,1,getdate(),null,null)
insert into activity  values (2, 'Recondicionamento e recuperação de motores para veículos automotores   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Construção de embarcações e estruturas flutuantes    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Construção de embarcações para esporte e lazer',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de locomotivas, vagões e outros materiais rodantes ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de peças e acessórios para veículos ferroviários   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de aeronaves   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de turbinas, motores e outros componentes e peças para aeronaves   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de veículos militares de combate   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de motocicletas',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de bicicletas e triciclos não-motorizados ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de equipamentos de transporte não especificados anteriormente ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de móveis com predominância de madeira    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de móveis com predominância de metal ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de móveis de outros materiais, exceto madeira e metal  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de colchões    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Lapidação de gemas e fabricação de artefatos de ourivesaria e joalheria',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de bijuterias e artefatos semelhantes',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de instrumentos musicais',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de artefatos para pesca e esporte  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de brinquedos e jogos recreativos  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de instrumentos e materiais para uso médico e odontológico e de artigos ópticos ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de escovas, pincéis e vassouras    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de equipamentos e acessórios para segurança e proteção pessoal e profissional   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabricação de produtos diversos não especificados anteriormente   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Manutenção e reparação de tanques, reservatórios metálicos e caldeiras, exceto para veículos    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Manutenção e reparação de equipamentos eletrônicos e ópticos  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Manutenção e reparação de máquinas e equipamentos elétricos   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Manutenção e reparação de máquinas e equipamentos da indústria mecânica',1,1,getdate(),null,null)
insert into activity  values (3, 'Manutenção e reparação de veículos ferroviários ',1,1,getdate(),null,null)
insert into activity  values (3, 'Manutenção e reparação de aeronaves',1,1,getdate(),null,null)
insert into activity  values (3, 'Manutenção e reparação de embarcações',1,1,getdate(),null,null)
insert into activity  values (3, 'Manutenção e reparação de equipamentos e produtos não especificados anteriormente ',1,1,getdate(),null,null)
insert into activity  values (3, 'Instalação de máquinas e equipamentos industriais    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Instalação de equipamentos não especificados anteriormente    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Coleta de resíduos não-perigosos   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Coleta de resíduos perigosos  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Tratamento e disposição de resíduos não-perigosos    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Tratamento e disposição de resíduos perigosos ',1,1,getdate(),null,null)
insert into activity  values (3, 'Manutenção e reparação de veículos automotores',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de produção cinematográfica, de vídeos e de programas de televisão ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de pós-produção cinematográfica, de vídeos e de programas de televisão ',1,1,getdate(),null,null)
insert into activity  values (3, 'Distribuição cinematográfica, de vídeo e de programas de televisão',1,1,getdate(),null,null)
insert into activity  values (3, 'Telecomunicações por fio  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Telecomunicações sem fio  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Telecomunicações por satélite ',1,1,getdate(),null,null)
insert into activity  values (3, 'Concessionárias de rodovias, pontes, túneis e serviços relacionados    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Terminais rodoviários e ferroviários ',1,1,getdate(),null,null)
insert into activity  values (3, 'Manutenção e reparação de motocicletas   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Transporte ferroviário de carga    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Transporte metroferroviário de passageiros    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Transporte rodoviário coletivo de passageiros, com itinerário fixo, municipal e em região metropolitana    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Transporte rodoviário coletivo de passageiros, com itinerário fixo, intermunicipal, interestadual e internacional ',1,1,getdate(),null,null)
insert into activity  values (3, 'Transporte rodoviário de táxi ',1,1,getdate(),null,null)
insert into activity  values (3, 'Transporte escolar   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Transporte rodoviário coletivo de passageiros, sob regime de fretamento, e outros transportes rodoviários não especificados anteriormente  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Transporte rodoviário de carga',1,1,getdate(),null,null)
insert into activity  values (3, 'Transporte dutoviário',1,1,getdate(),null,null)
insert into activity  values (3, 'Trens turísticos, teleféricos e similares',1,1,getdate(),null,null)
insert into activity  values (3, 'Transporte marítimo de cabotagem   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Transporte marítimo de longo curso ',1,1,getdate(),null,null)
insert into activity  values (3, 'Transporte por navegação interior de carga    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Transporte por navegação interior de passageiros em linhas regulares   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Navegação de apoio   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Transporte por navegação de travessia',1,1,getdate(),null,null)
insert into activity  values (3, 'Transportes aquaviários não especificados anteriormente  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Transporte aéreo de passageiros regular  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Transporte aéreo de passageiros não-regular   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Transporte aéreo de carga ',1,1,getdate(),null,null)
insert into activity  values (3, 'Transporte espacial  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de serviços prestados principalmente às empresas não especificadas anteriormente',1,1,getdate(),null,null)
insert into activity  values (3, 'Administração pública em geral',1,1,getdate(),null,null)
insert into activity  values (3, 'Regulação das atividades de saúde, educação, serviços culturais e outros serviços sociais  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Regulação das atividades econômicas',1,1,getdate(),null,null)
insert into activity  values (3, 'Relações exteriores  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Defesa    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Justiça   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Segurança e ordem pública ',1,1,getdate(),null,null)
insert into activity  values (3, 'Defesa Civil',1,1,getdate(),null,null)
insert into activity  values (3, 'Seguridade social obrigatória ',1,1,getdate(),null,null)
insert into activity  values (3, 'Educação infantil - creche',1,1,getdate(),null,null)
insert into activity  values (3, 'Educação infantil - pré-escola',1,1,getdate(),null,null)
insert into activity  values (3, 'Ensino fundamental   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Ensino médio',1,1,getdate(),null,null)
insert into activity  values (3, 'Educação superior - graduação ',1,1,getdate(),null,null)
insert into activity  values (3, 'Educação superior - graduação e pós-graduação ',1,1,getdate(),null,null)
insert into activity  values (3, 'Educação superior - pós-graduação e extensão  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Educação profissional de nível técnico   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Educação profissional de nível tecnológico    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de apoio à educação',1,1,getdate(),null,null)
insert into activity  values (3, 'Ensino de esportes   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Ensino de arte e cultura  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Ensino de idiomas',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de ensino não especificadas anteriormente ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de atendimento hospitalar ',1,1,getdate(),null,null)
insert into activity  values (3, 'Serviços móveis de atendimento a urgências    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Serviços de remoção de pacientes, exceto os serviços móveis de atendimento a urgências ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de atenção ambulatorial executadas por médicos e odontólogos',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de serviços de complementação diagnóstica e terapêutica',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de profissionais da área de saúde, exceto médicos e odontólogos    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de apoio à gestão de saúde',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de atenção à saúde humana não especificadas anteriormente   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de assistência a idosos, deficientes físicos, imunodeprimidos e convalescentes prestadas em residências coletivas e particulares',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de fornecimento de infra-estrutura de apoio e assistência a paciente no domicílio    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de assistência psicossocial e à saúde a portadores de distúrbios psíquicos, deficiência mental e dependência química',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de assistência social prestadas em residências coletivas e particulares',1,1,getdate(),null,null)
insert into activity  values (3, 'Serviços de assistência social sem alojamento ',1,1,getdate(),null,null)
insert into activity  values (3, 'Artes cênicas, espetáculos e atividades complementares   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Criação artística',1,1,getdate(),null,null)
insert into activity  values (3, 'Gestão de espaços para artes cênicas, espetáculos e outras atividades artísticas  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de bibliotecas e arquivos ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de museus e de exploração, restauração artística e conservação de lugares e prédios históricos e atrações similares ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de jardins botânicos, zoológicos, parques nacionais, reservas ecológicas e áreas de proteção ambiental ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de exploração de jogos de azar e apostas  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Gestão de instalações de esportes  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Clubes sociais, esportivos e similares   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de condicionamento físico ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades esportivas não especificadas anteriormente',1,1,getdate(),null,null)
insert into activity  values (3, 'Parques de diversão e parques temáticos  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de recreação e lazer não especificadas anteriormente   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de organizações associativas patronais e empresariais  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de organizações associativas profissionais',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de organizações sindicais ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de associações de defesa de direitos sociais  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de organizações religiosas',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de organizações políticas ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de organizações associativas ligadas à cultura e à arte',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades associativas não especificadas anteriormente  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Reparação e manutenção de computadores e de equipamentos periféricos   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Reparação e manutenção de equipamentos de comunicação',1,1,getdate(),null,null)
insert into activity  values (3, 'Reparação e manutenção de equipamentos eletroeletrônicos de uso pessoal e doméstico    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Reparação e manutenção de objetos e equipamentos pessoais e domésticos não especificados anteriormente',1,1,getdate(),null,null)
insert into activity  values (3, 'Lavanderias, tinturarias e toalheiros',1,1,getdate(),null,null)
insert into activity  values (3, 'Cabeleireiros e outras atividades de tratamento de beleza',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades funerárias e serviços relacionados ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de serviços pessoais não especificadas anteriormente   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Serviços domésticos  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Organismos internacionais e outras instituições extraterritoriais ',1,1,getdate(),null,null)
insert into activity  values (3, 'Desenvolvimento de programas de computador sob encomenda ',1,1,getdate(),null,null)
insert into activity  values (3, 'Desenvolvimento e licenciamento de programas de computador customizáveis ',1,1,getdate(),null,null)
insert into activity  values (3, 'Desenvolvimento e licenciamento de programas de computador não-customizáveis  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Consultoria em tecnologia da informação  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Suporte técnico, manutenção e outros serviços em tecnologia da informação',1,1,getdate(),null,null)
insert into activity  values (3, 'Tratamento de dados, provedores de serviços de aplicação e serviços de hospedagem na internet   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Portais, provedores de conteúdo e outros serviços de informação na internet   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Agências de notícias ',1,1,getdate(),null,null)
insert into activity  values (3, 'Outras atividades de prestação de serviços de informação não especificadas anteriormente   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Banco Central    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Bancos comerciais',1,1,getdate(),null,null)
insert into activity  values (3, 'Bancos múltiplos, com carteira comercial ',1,1,getdate(),null,null)
insert into activity  values (3, 'Caixas econômicas',1,1,getdate(),null,null)
insert into activity  values (3, 'Crédito cooperativo  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Bancos múltiplos, sem carteira comercial ',1,1,getdate(),null,null)
insert into activity  values (3, 'Bancos de investimento    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Bancos de desenvolvimento ',1,1,getdate(),null,null)
insert into activity  values (3, 'Agências de fomento  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Crédito imobiliário  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Sociedades de crédito, financiamento e investimento - financeiras ',1,1,getdate(),null,null)
insert into activity  values (3, 'Sociedades de crédito ao microempreendedor    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Bancos de câmbio e outras instituições de intermediação não-monetária  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Arrendamento mercantil    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Sociedades de capitalização   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Holdings de instituições financeiras ',1,1,getdate(),null,null)
insert into activity  values (3, 'Holdings de instituições não-financeiras ',1,1,getdate(),null,null)
insert into activity  values (3, 'Outras sociedades de participação, exceto holdings   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Fundos de investimento    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Sociedades de fomento mercantil - factoring   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Securitização de créditos ',1,1,getdate(),null,null)
insert into activity  values (3, 'Administração de consórcios para aquisição de bens e direitos ',1,1,getdate(),null,null)
insert into activity  values (3, 'Outras atividades de serviços financeiros não especificadas anteriormente',1,1,getdate(),null,null)
insert into activity  values (3, 'Seguros de vida  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Seguros não-vida ',1,1,getdate(),null,null)
insert into activity  values (3, 'Seguros-saúde    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Resseguros',1,1,getdate(),null,null)
insert into activity  values (3, 'Previdência complementar fechada   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Previdência complementar aberta    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Planos de saúde  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Administração de bolsas e mercados de balcão organizados ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de intermediários em transações de títulos, valores mobiliários e mercadorias   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Administração de cartões de crédito',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades auxiliares dos serviços financeiros não especificadas anteriormente',1,1,getdate(),null,null)
insert into activity  values (3, 'Avaliação de riscos e perdas  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Corretores e agentes de seguros, de planos de previdência complementar e de saúde ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades auxiliares dos seguros, da previdência complementar e dos planos de saúde não especificadas anteriormente  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de administração de fundos por contrato ou comissão',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades imobiliárias de imóveis próprios   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Intermediação na compra, venda e aluguel de imóveis  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Gestão e administração da propriedade imobiliária    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades jurídicas, exceto cartórios   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Cartórios ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de contabilidade, consultoria e auditoria contábil e tributária    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Sedes de empresas e unidades administrativas locais  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de consultoria em gestão empresarial ',1,1,getdate(),null,null)
insert into activity  values (3, 'Serviços de arquitetura   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Serviços de engenharia    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades técnicas relacionadas à arquitetura e engenharia   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Testes e análises técnicas',1,1,getdate(),null,null)
insert into activity  values (3, 'Pesquisa e desenvolvimento experimental em ciências físicas e naturais ',1,1,getdate(),null,null)
insert into activity  values (3, 'Pesquisa e desenvolvimento experimental em ciências sociais e humanas  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Agências de publicidade   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Agenciamento de espaços para publicidade, exceto em veículos de comunicação   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de publicidade não especificadas anteriormente',1,1,getdate(),null,null)
insert into activity  values (3, 'Pesquisas de mercado e de opinião pública',1,1,getdate(),null,null)
insert into activity  values (3, 'Design e decoração de interiores   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades fotográficas e similares',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades profissionais, científicas e técnicas não especificadas anteriormente  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades veterinárias   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de teleatendimento ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de organização de eventos, exceto culturais e esportivos    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de cobrança e informações cadastrais ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades auxiliares dos transportes terrestres não especificadas anteriormente  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Gestão de portos e terminais  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de agenciamento marítimo',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades auxiliares dos transportes aquaviários não especificadas anteriormente ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades auxiliares dos transportes aéreos  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades relacionadas à organização do transporte de carga  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de vigilância e segurança privada  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de transporte de valores',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de monitoramento de sistemas de segurança ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de investigação particular',1,1,getdate(),null,null)
insert into activity  values (3, 'Serviços combinados para apoio a edifícios, exceto condomínios prediais',1,1,getdate(),null,null)
insert into activity  values (3, 'Condomínios prediais ',1,1,getdate(),null,null)
insert into activity  values (3, 'Limpeza em prédios e em domicílios ',1,1,getdate(),null,null)
insert into activity  values (3, 'Imunização e controle de pragas urbanas  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de limpeza não especificadas anteriormente',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades paisagísticas  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Serviços combinados de escritório e apoio administrativo ',1,1,getdate(),null,null)
insert into activity  values (3, 'Gestão de ativos intangíveis não-financeiros  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Seleção e agenciamento de mão-de-obra',1,1,getdate(),null,null)
insert into activity  values (3, 'Locação de mão-de-obra temporária  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Fornecimento e gestão de recursos humanos para terceiros',1,1,getdate(),null,null)


INSERT INTO ProductVersionActivity VALUES ( 5,1  ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,2  ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,3  ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,4  ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,5  ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,6  ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,7  ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,8  ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,9  ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,10 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,11 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,12 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,13 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,14 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,15 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,16 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,17 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,18 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,19 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,20 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,21 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,22 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,23 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,24 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,25 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,26 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,27 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,28 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,29 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,30 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,31 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,32 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,33 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,34 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,35 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,36 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,37 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,38 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,39 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,40 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,41 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,42 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,43 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,44 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,45 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,46 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,47 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,48 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,49 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,50 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,51 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,52 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,53 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,54 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,55 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,56 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,57 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,58 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,59 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,60 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,61 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,62 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,63 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,64 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,65 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,66 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,67 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,68 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,69 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,70 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,71 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,72 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,73 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,74 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,75 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,76 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,77 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,78 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,79 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,80 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,81 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,82 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,83 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,84 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,85 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,86 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,87 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,88 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,89 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,90 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,91 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,92 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,93 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,94 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,95 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,96 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,97 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,98 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,99 ,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,100,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,101,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,102,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,103,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,104,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,105,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,106,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,107,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,108,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,109,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,110,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,111,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,112,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,113,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,114,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,115,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,116,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,117,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,118,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,119,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,120,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,121,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,122,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,123,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,124,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,125,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,126,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,127,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,128,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,129,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,130,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,131,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,132,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,133,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,134,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,135,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,136,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,137,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,138,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,139,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,140,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,141,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,142,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,143,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,144,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,145,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,146,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,147,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,148,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,149,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,150,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,151,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,152,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,153,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,154,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,155,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,156,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,157,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,158,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,159,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,160,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,161,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,162,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,163,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,164,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,165,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,166,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,167,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,168,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,169,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,170,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,171,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,172,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,173,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,174,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,175,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,176,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,177,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,178,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,179,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,180,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,181,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,182,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,183,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,184,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,185,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,186,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,187,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,188,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,189,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,190,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,191,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,192,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,193,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,194,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,195,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,196,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,197,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,198,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,199,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,200,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,201,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,202,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,203,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,204,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,205,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,206,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,207,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,208,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,209,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,210,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,211,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,212,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,213,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,214,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,215,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,216,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,217,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,218,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,219,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,220,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,221,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,222,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,223,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,224,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,225,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,226,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,227,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,228,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,229,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,230,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,231,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,232,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,233,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,234,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,235,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,236,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,237,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,238,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,239,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,240,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,241,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,242,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,243,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,244,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,245,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,246,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,247,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,248,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,249,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,250,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,251,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,252,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,253,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,254,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,255,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,256,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,257,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,258,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,259,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,260,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,261,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,262,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,263,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,264,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,265,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,266,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,267,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,268,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,269,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,270,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,271,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,272,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,273,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,274,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,275,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,276,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,277,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,278,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,279,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,280,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,281,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,282,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,283,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,284,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,285,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,286,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,287,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,288,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,289,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,290,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,291,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,292,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,293,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,294,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,295,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,296,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,297,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,298,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,299,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,300,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,301,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,302,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,303,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,304,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,305,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,306,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,307,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,308,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,309,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,310,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,311,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,312,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,313,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,314,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,315,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,316,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,317,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,318,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,319,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,320,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,321,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,322,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,323,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,324,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,325,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,326,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,327,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,328,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,329,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,330,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,331,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,332,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,333,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,334,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,335,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,336,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,337,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,338,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,339,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,340,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,341,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,342,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,343,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,344,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,345,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,346,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,347,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,348,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,349,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,350,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,351,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,352,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,353,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,354,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,355,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,356,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,357,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,358,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,359,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,360,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,361,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,362,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,363,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,364,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,365,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,366,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,367,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,368,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,369,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,370,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,371,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,372,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,373,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,374,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,375,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,376,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,377,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,378,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,379,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,380,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,381,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,382,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,383,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,384,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,385,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,386,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,387,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,388,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,389,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,390,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,391,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,392,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,393,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,394,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,395,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,396,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,397,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,398,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,399,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,400,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,401,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,402,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,403,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,404,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,405,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,406,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,407,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,408,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,409,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,410,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,411,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,412,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,413,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,414,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,415,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,416,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,417,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,418,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,419,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,420,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,421,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,422,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,423,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,424,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,425,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,426,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,427,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,428,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,429,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,430,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,431,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,432,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,433,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,434,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,435,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,436,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,437,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,438,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,439,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,440,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,441,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,442,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,443,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,444,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,445,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,446,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,447,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,448,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,449,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,450,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,451,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,452,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,453,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,454,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,455,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,456,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,457,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,458,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,459,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,460,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,461,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,462,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,463,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,464,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,465,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,466,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,467,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,468,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,469,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,470,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,471,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,472,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,473,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,474,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,475,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,476,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,477,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,478,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,479,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,480,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,481,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,482,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,483,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,484,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,485,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,486,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,487,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,488,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,489,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,490,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,491,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,492,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,493,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,494,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,495,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,496,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,497,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,498,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,499,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,500,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,501,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,502,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,503,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,504,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,505,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,506,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,507,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,508,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,509,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,510,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,511,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,512,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,513,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,514,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,515,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,516,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,517,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,518,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,519,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,520,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,521,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,522,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,523,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,524,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,525,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,526,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,527,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,528,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,529,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,530,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,531,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,532,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,533,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,534,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,535,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,536,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,537,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,538,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,539,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,540,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,541,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,542,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,543,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,544,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,545,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,546,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,547,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,548,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,549,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,550,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,551,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,552,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,553,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,554,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,555,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,556,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,557,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,558,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,559,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,560,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,561,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,562,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,563,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,564,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,565,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,566,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,567,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,568,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,569,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,570,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,571,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,572,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,573,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,574,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,575,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,576,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,577,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,578,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,579,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,580,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,581,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,582,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,583,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,584,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,585,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,586,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,587,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,588,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,589,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,590,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,591,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,592,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,593,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,594,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,595,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,596,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,597,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,598,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,599,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,600,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,601,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,602,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,603,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,604,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,605,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,606,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,607,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,608,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,609,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,610,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,611,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,612,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,613,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,614,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,615,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,616,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,617,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,618,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,619,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,620,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,621,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,622,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,623,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,624,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,625,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,626,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,627,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,628,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,629,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,630,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,631,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,632,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,633,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,634,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,635,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,636,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,637,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,638,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,639,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,640,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,641,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,642,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,643,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,644,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,645,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,646,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,647,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,648,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,649,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,650,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,651,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,652,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,653,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,654,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,655,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,656,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,657,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,658,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,659,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,660,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,661,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,662,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,663,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,664,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,665,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,666,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,667,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,668,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,669,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,670,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,671,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,672,1,1,1,1,99,getdate(),null,null)
INSERT INTO ProductVersionActivity VALUES ( 5,673,1,1,1,1,99,getdate(),null,null)