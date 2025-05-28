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


INSERT INTO  ActivityNature VALUES ('Com�rcio',1,1, GETDATE(), null,null)
INSERT INTO  ActivityNature VALUES ('Ind�stria',1,1, GETDATE(), null,null)
INSERT INTO  ActivityNature VALUES ('Servi�os',1,1, GETDATE(), null,null)

INSERT INTO  RiskType VALUES ('Aceito',1,1, GETDATE(), null,null)
INSERT INTO  RiskType VALUES ('Restrito',1,1, GETDATE(), null,null)
INSERT INTO  RiskType VALUES ('Sob Consulta',1,1, GETDATE(), null,null)


insert into activity  values (1, 'Representantes comerciais e agentes do com�rcio de mat�rias-primas agr�colas e animais vivos    ',1,1,getdate(),null,null)
insert into activity  values (1, 'Representantes comerciais e agentes do com�rcio de combust�veis, minerais, produtos sider�rgicos e qu�micos',1,1,getdate(),null,null)
insert into activity  values (1, 'Representantes comerciais e agentes do com�rcio de madeira, material de constru��o e ferragens  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Representantes comerciais e agentes do com�rcio de m�quinas, equipamentos, embarca��es e aeronaves',1,1,getdate(),null,null)
insert into activity  values (1, 'Representantes comerciais e agentes do com�rcio de eletrodom�sticos, m�veis e artigos de uso dom�stico',1,1,getdate(),null,null)
insert into activity  values (1, 'Representantes comerciais e agentes do com�rcio de t�xteis, vestu�rio, cal�ados e artigos de viagem   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Representantes comerciais e agentes do com�rcio de produtos aliment�cios, bebidas e fumo   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Representantes comerciais e agentes do com�rcio especializado em produtos n�o especificados anteriormente  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Representantes comerciais e agentes do com�rcio de mercadorias em geral n�o especializado  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio atacadista de caf� em gr�o',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio atacadista de soja   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio atacadista de animais vivos, alimentos para animais e mat�rias-primas agr�colas, exceto caf� e soja ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio atacadista de leite e latic�nios',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio atacadista de cereais e leguminosas beneficiados, farinhas, amidos e f�culas  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio atacadista de hortifrutigranjeiros   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio atacadista de carnes, produtos da carne e pescado    ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio atacadista de bebidas',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio atacadista de produtos do fumo  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio atacadista especializado em produtos aliment�cios n�o especificados anteriormente ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio atacadista de produtos aliment�cios em geral',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio atacadista de tecidos, artefatos de tecidos e de armarinho    ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio atacadista de artigos do vestu�rio e acess�rios ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio atacadista de cal�ados e artigos de viagem  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio atacadista de produtos farmac�uticos para uso humano e veterin�rio   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio atacadista de instrumentos e materiais para uso m�dico, cir�rgico, ortop�dico e odontol�gico ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio atacadista de cosm�ticos, produtos de perfumaria e de higiene pessoal',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio atacadista de artigos de escrit�rio e de papelaria; livros, jornais e outras publica��es ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio atacadista de equipamentos e artigos de uso pessoal e dom�stico n�o especificados anteriormente   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio atacadista de computadores, perif�ricos e suprimentos de inform�tica ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio atacadista de componentes eletr�nicos e equipamentos de telefonia e comunica��o   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio atacadista de m�quinas, aparelhos e equipamentos para uso agropecu�rio; partes e pe�as ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio atacadista de m�quinas, equipamentos para terraplenagem, minera��o e constru��o; partes e pe�as   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio atacadista de m�quinas e equipamentos para uso industrial; partes e pe�as',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio atacadista de m�quinas, aparelhos e equipamentos para uso odonto-m�dico-hospitalar; partes e pe�as',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio atacadista de m�quinas e equipamentos para uso comercial; partes e pe�as ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio atacadista de m�quinas, aparelhos e equipamentos n�o especificados anteriormente; partes e pe�as  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio atacadista de madeira e produtos derivados  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio atacadista de ferragens e ferramentas',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio atacadista de material el�trico ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio atacadista de cimento',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio atacadista especializado de materiais de constru��o n�o especificados anteriormente e de materiais de constru��o em geral  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio atacadista de combust�veis s�lidos, l�quidos e gasosos, exceto g�s natural e GLP  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio atacadista de g�s liq�efeito de petr�leo (GLP)  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio atacadista de defensivos agr�colas, adubos, fertilizantes e corretivos do solo',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio atacadista de produtos qu�micos e petroqu�micos, exceto agroqu�micos ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio atacadista de produtos sider�rgicos e metal�rgicos, exceto para constru��o    ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio atacadista de papel e papel�o em bruto e de embalagens   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio atacadista de res�duos e sucatas',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio atacadista especializado de outros produtos intermedi�rios n�o especificados anteriormente   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio atacadista de mercadorias em geral, com predomin�ncia de produtos aliment�cios',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio atacadista de mercadorias em geral, com predomin�ncia de insumos agropecu�rios',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio atacadista de mercadorias em geral, sem predomin�ncia de alimentos ou de insumos agropecu�rios    ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio varejista de mercadorias em geral, com predomin�ncia de produtos aliment�cios - hipermercados e supermercados',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio varejista de mercadorias em geral, com predomin�ncia de produtos aliment�cios - minimercados, mercearias e armaz�ns   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio varejista de mercadorias em geral, sem predomin�ncia de produtos aliment�cios ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio varejista de produtos de padaria, latic�nio, doces, balas e semelhantes  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio varejista de carnes e pescados - a�ougues e peixarias',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio varejista de bebidas ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio varejista de hortifrutigranjeiros    ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio varejista de produtos aliment�cios em geral ou especializado em produtos aliment�cios n�o especificados anteriormente; produtos do fumo    ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio varejista de combust�veis para ve�culos automotores  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio varejista de lubrificantes',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio varejista de tintas e materiais para pintura',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio varejista de material el�trico  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio varejista de vidros  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio varejista de ferragens, madeira e materiais de constru��o',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio varejista especializado de equipamentos e suprimentos de inform�tica ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio varejista especializado de equipamentos de telefonia e comunica��o   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio varejista especializado de eletrodom�sticos e equipamentos de �udio e v�deo   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio varejista especializado de m�veis, colchoaria e artigos de ilumina��o',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio varejista especializado de tecidos e artigos de cama, mesa e banho   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio varejista especializado de instrumentos musicais e acess�rios ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio varejista especializado de pe�as e acess�rios para aparelhos eletroeletr�nicos para uso dom�stico, exceto inform�tica e comunica��o   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio varejista de artigos de uso dom�stico n�o especificados anteriormente',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio varejista de livros, jornais, revistas e papelaria   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio varejista de discos, CDs, DVDs e fitas ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio varejista de artigos recreativos e esportivos   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio varejista de produtos farmac�uticos para uso humano e veterin�rio    ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio varejista de cosm�ticos, produtos de perfumaria e de higiene pessoal ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio varejista de artigos m�dicos e ortop�dicos  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio varejista de artigos de �ptica  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio varejista de artigos do vestu�rio e acess�rios  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio varejista de cal�ados e artigos de viagem   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio varejista de j�ias e rel�gios   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio varejista de g�s liq�efeito de petr�leo (GLP)   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio varejista de artigos usados ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio varejista de outros produtos novos n�o especificados anteriormente   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio ambulante e outros tipos de com�rcio varejista  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Incorpora��o de empreendimentos imobili�rios  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio atacadista de energia el�trica  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio a varejo e por atacado de ve�culos automotores  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Representantes comerciais e agentes do com�rcio de ve�culos automotores',1,1,getdate(),null,null)
insert into activity  values (1, 'Atividades de Correio',1,1,getdate(),null,null)
insert into activity  values (1, 'Atividades de malote e de entrega  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Hot�is e similares   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Outros tipos de alojamento n�o especificados anteriormente    ',1,1,getdate(),null,null)
insert into activity  values (1, 'Restaurantes e outros estabelecimentos de servi�os de alimenta��o e bebidas   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Servi�os ambulantes de alimenta��o ',1,1,getdate(),null,null)
insert into activity  values (1, 'Servi�os de catering, buf� e outros servi�os de comida preparada  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio de pe�as e acess�rios para ve�culos automotores ',1,1,getdate(),null,null)
insert into activity  values (1, 'Com�rcio por atacado e a varejo de motocicletas, pe�as e acess�rios    ',1,1,getdate(),null,null)
insert into activity  values (1, 'Representantes comerciais e agentes do com�rcio de motocicletas, pe�as e acess�rios    ',1,1,getdate(),null,null)
insert into activity  values (1, 'Armazenamento    ',1,1,getdate(),null,null)
insert into activity  values (1, 'Carga e descarga ',1,1,getdate(),null,null)
insert into activity  values (1, 'Atividades de exibi��o cinematogr�fica   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Atividades de grava��o de som e de edi��o de m�sica  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Atividades de r�dio  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Atividades de televis�o aberta',1,1,getdate(),null,null)
insert into activity  values (1, 'Programadoras e atividades relacionadas � televis�o por assinatura',1,1,getdate(),null,null)
insert into activity  values (1, 'Operadoras de televis�o por assinatura por cabo ',1,1,getdate(),null,null)
insert into activity  values (1, 'Operadoras de televis�o por assinatura por microondas',1,1,getdate(),null,null)
insert into activity  values (1, 'Operadoras de televis�o por assinatura por sat�lite  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Outras atividades de telecomunica��es',1,1,getdate(),null,null)
insert into activity  values (1, 'Loca��o de autom�veis sem condutor ',1,1,getdate(),null,null)
insert into activity  values (1, 'Loca��o de meios de transporte, exceto autom�veis, sem condutor   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Aluguel de equipamentos recreativos e esportivos',1,1,getdate(),null,null)
insert into activity  values (1, 'Aluguel de fitas de v�deo, DVDs e similares   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Aluguel de objetos do vestu�rio, j�ias e acess�rios  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Aluguel de objetos pessoais e dom�sticos n�o especificados anteriormente ',1,1,getdate(),null,null)
insert into activity  values (1, 'Aluguel de m�quinas e equipamentos agr�colas sem operador',1,1,getdate(),null,null)
insert into activity  values (1, 'Aluguel de m�quinas e equipamentos para constru��o sem operador   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Aluguel de m�quinas e equipamentos para escrit�rio   ',1,1,getdate(),null,null)
insert into activity  values (1, 'Aluguel de m�quinas e equipamentos n�o especificados anteriormente',1,1,getdate(),null,null)
insert into activity  values (1, 'Ag�ncias de viagens  ',1,1,getdate(),null,null)
insert into activity  values (1, 'Operadores tur�sticos',1,1,getdate(),null,null)
insert into activity  values (1, 'Servi�os de reservas e outros servi�os de turismo n�o especificados anteriormente ',1,1,getdate(),null,null)
insert into activity  values (1, 'Estacionamento de ve�culos',1,1,getdate(),null,null)
insert into activity  values (1, 'Fotoc�pias, prepara��o de documentos e outros servi�os especializados de apoio administrativo   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Envasamento e empacotamento sob contrato ',1,1,getdate(),null,null)
insert into activity  values (2, 'Edi��o de livros ',1,1,getdate(),null,null)
insert into activity  values (2, 'Edi��o de jornais',1,1,getdate(),null,null)
insert into activity  values (2, 'Edi��o de revistas   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Edi��o de cadastros, listas e outros produtos gr�ficos   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Edi��o integrada � impress�o de livros   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Edi��o integrada � impress�o de jornais  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Edi��o integrada � impress�o de revistas ',1,1,getdate(),null,null)
insert into activity  values (2, 'Edi��o integrada � impress�o de cadastros, listas e outros produtos gr�ficos  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Gera��o de energia el�trica   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Transmiss�o de energia el�trica    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Recupera��o de materiais met�licos ',1,1,getdate(),null,null)
insert into activity  values (2, 'Recupera��o de materiais pl�sticos ',1,1,getdate(),null,null)
insert into activity  values (2, 'Recupera��o de materiais n�o especificados anteriormente ',1,1,getdate(),null,null)
insert into activity  values (2, 'Descontamina��o e outros servi�os de gest�o de res�duos  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Distribui��o de energia el�trica   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Produ��o de g�s; processamento de g�s natural; distribui��o de combust�veis gasosos por redes urbanas ',1,1,getdate(),null,null)
insert into activity  values (2, 'Produ��o e distribui��o de vapor, �gua quente e ar condicionado   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Capta��o, tratamento e distribui��o de �gua   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Gest�o de redes de esgoto ',1,1,getdate(),null,null)
insert into activity  values (2, 'Atividades relacionadas a esgoto, exceto a gest�o de redes    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Constru��o de edif�cios   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Constru��o de rodovias e ferrovias ',1,1,getdate(),null,null)
insert into activity  values (2, 'Constru��o de obras-de-arte especiais',1,1,getdate(),null,null)
insert into activity  values (2, 'Obras de urbaniza��o - ruas, pra�as e cal�adas',1,1,getdate(),null,null)
insert into activity  values (2, 'Obras para gera��o e distribui��o de energia el�trica e para telecomunica��es ',1,1,getdate(),null,null)
insert into activity  values (2, 'Constru��o de redes de abastecimento de �gua, coleta de esgoto e constru��es correlatas',1,1,getdate(),null,null)
insert into activity  values (2, 'Constru��o de redes de transportes por dutos, exceto para �gua e esgoto',1,1,getdate(),null,null)
insert into activity  values (2, 'Obras portu�rias, mar�timas e fluviais   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Montagem de instala��es industriais e de estruturas met�licas ',1,1,getdate(),null,null)
insert into activity  values (2, 'Obras de engenharia civil n�o especificadas anteriormente',1,1,getdate(),null,null)
insert into activity  values (2, 'Demoli��o e prepara��o de canteiros de obras  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Perfura��es e sondagens   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Obras de terraplenagem    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Servi�os de prepara��o do terreno n�o especificados anteriormente ',1,1,getdate(),null,null)
insert into activity  values (2, 'Instala��es el�tricas',1,1,getdate(),null,null)
insert into activity  values (2, 'Instala��es hidr�ulicas, de sistemas de ventila��o e refrigera��o ',1,1,getdate(),null,null)
insert into activity  values (2, 'Obras de instala��es em constru��es n�o especificadas anteriormente    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Obras de acabamento  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Obras de funda��es   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Servi�os especializados para constru��o n�o especificados anteriormente',1,1,getdate(),null,null)
insert into activity  values (2, 'Cultivo de cereais   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Cultivo de algod�o herb�ceo e de outras fibras de lavoura tempor�ria   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Cultivo de cana-de-a��car ',1,1,getdate(),null,null)
insert into activity  values (2, 'Cultivo de fumo  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Cultivo de soja  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Cultivo de oleaginosas de lavoura tempor�ria, exceto soja',1,1,getdate(),null,null)
insert into activity  values (2, 'Cultivo de plantas de lavoura tempor�ria n�o especificadas anteriormente ',1,1,getdate(),null,null)
insert into activity  values (2, 'Horticultura',1,1,getdate(),null,null)
insert into activity  values (2, 'Cultivo de flores e plantas ornamentais  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Cultivo de laranja   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Cultivo de uva   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Cultivo de frutas de lavoura permanente, exceto laranja e uva ',1,1,getdate(),null,null)
insert into activity  values (2, 'Cultivo de caf�  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Cultivo de cacau ',1,1,getdate(),null,null)
insert into activity  values (2, 'Cultivo de plantas de lavoura permanente n�o especificadas anteriormente ',1,1,getdate(),null,null)
insert into activity  values (2, 'Produ��o de sementes certificadas  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Produ��o de mudas e outras formas de propaga��o vegetal, certificadas  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Cria��o de bovinos   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Cria��o de outros animais de grande porte',1,1,getdate(),null,null)
insert into activity  values (2, 'Cria��o de caprinos e ovinos  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Cria��o de su�nos',1,1,getdate(),null,null)
insert into activity  values (2, 'Cria��o de aves  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Cria��o de animais n�o especificados anteriormente   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Atividades de apoio � agricultura  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Atividades de apoio � pecu�ria',1,1,getdate(),null,null)
insert into activity  values (2, 'Atividades de p�s-colheita',1,1,getdate(),null,null)
insert into activity  values (2, 'Ca�a e servi�os relacionados  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Produ��o florestal - florestas plantadas ',1,1,getdate(),null,null)
insert into activity  values (2, 'Produ��o florestal - florestas nativas   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Atividades de apoio � produ��o florestal ',1,1,getdate(),null,null)
insert into activity  values (2, 'Pesca em �gua salgada',1,1,getdate(),null,null)
insert into activity  values (2, 'Pesca em �gua doce   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Aq�icultura em �gua salgada e salobra',1,1,getdate(),null,null)
insert into activity  values (2, 'Aq�icultura em �gua doce  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Extra��o de carv�o mineral',1,1,getdate(),null,null)
insert into activity  values (2, 'Extra��o de petr�leo e g�s natural ',1,1,getdate(),null,null)
insert into activity  values (2, 'Extra��o de min�rio de ferro  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Extra��o de min�rio de alum�nio    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Extra��o de min�rio de estanho',1,1,getdate(),null,null)
insert into activity  values (2, 'Extra��o de min�rio de mangan�s    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Extra��o de min�rio de metais preciosos  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Extra��o de minerais radioativos   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Extra��o de minerais met�licos n�o-ferrosos n�o especificados anteriormente   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Extra��o de pedra, areia e argila  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Extra��o de minerais para fabrica��o de adubos, fertilizantes e outros produtos qu�micos   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Extra��o e refino de sal marinho e sal-gema   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Extra��o de gemas (pedras preciosas e semipreciosas) ',1,1,getdate(),null,null)
insert into activity  values (2, 'Extra��o de minerais n�o-met�licos n�o especificados anteriormente',1,1,getdate(),null,null)
insert into activity  values (2, 'Atividades de apoio � extra��o de petr�leo e g�s natural ',1,1,getdate(),null,null)
insert into activity  values (2, 'Atividades de apoio � extra��o de minerais, exceto petr�leo e g�s natural',1,1,getdate(),null,null)
insert into activity  values (2, 'Abate de reses, exceto su�nos ',1,1,getdate(),null,null)
insert into activity  values (2, 'Abate de su�nos, aves e outros pequenos animais ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de produtos de carne    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Preserva��o do pescado e fabrica��o de produtos do pescado    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de conservas de frutas  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de conservas de legumes e outros vegetais ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de sucos de frutas, hortali�as e legumes  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de �leos vegetais em bruto, exceto �leo de milho   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de �leos vegetais refinados, exceto �leo de milho  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de margarina e outras gorduras vegetais e de �leos n�o-comest�veis de animais   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Prepara��o do leite  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de latic�nios  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de sorvetes e outros gelados comest�veis  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Beneficiamento de arroz e fabrica��o de produtos do arroz',1,1,getdate(),null,null)
insert into activity  values (2, 'Moagem de trigo e fabrica��o de derivados',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de farinha de mandioca e derivados ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de farinha de milho e derivados, exceto �leos de milho ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de amidos e f�culas de vegetais e de �leos de milho',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de alimentos para animais ',1,1,getdate(),null,null)
insert into activity  values (2, 'Moagem e fabrica��o de produtos de origem vegetal n�o especificados anteriormente ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de a��car em bruto ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de a��car refinado ',1,1,getdate(),null,null)
insert into activity  values (2, 'Torrefa��o e moagem de caf�   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de produtos � base de caf�',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de produtos de panifica��o',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de biscoitos e bolachas ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de produtos derivados do cacau, de chocolates e confeitos   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de massas aliment�cias  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de especiarias, molhos, temperos e condimentos',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de alimentos e pratos prontos ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de produtos aliment�cios n�o especificados anteriormente    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de aguardentes e outras bebidas destiladas',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de vinho  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de malte, cervejas e chopes   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de �guas envasadas ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de refrigerantes e de outras bebidas n�o-alco�licas',1,1,getdate(),null,null)
insert into activity  values (2, 'Processamento industrial do fumo   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de produtos do fumo',1,1,getdate(),null,null)
insert into activity  values (2, 'Prepara��o e fia��o de fibras de algod�o ',1,1,getdate(),null,null)
insert into activity  values (2, 'Prepara��o e fia��o de fibras t�xteis naturais, exceto algod�o',1,1,getdate(),null,null)
insert into activity  values (2, 'Fia��o de fibras artificiais e sint�ticas',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de linhas para costurar e bordar   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Tecelagem de fios de algod�o  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Tecelagem de fios de fibras t�xteis naturais, exceto algod�o  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Tecelagem de fios de fibras artificiais e sint�ticas ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de tecidos de malha',1,1,getdate(),null,null)
insert into activity  values (2, 'Acabamentos em fios, tecidos e artefatos t�xteis',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de artefatos t�xteis para uso dom�stico   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de artefatos de tape�aria ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de artefatos de cordoaria ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de tecidos especiais, inclusive artefatos ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de outros produtos t�xteis n�o especificados anteriormente  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Confec��o de roupas �ntimas   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Confec��o de pe�as do vestu�rio, exceto roupas �ntimas   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Confec��o de roupas profissionais  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de acess�rios do vestu�rio, exceto para seguran�a e prote��o',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de meias  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de artigos do vestu�rio, produzidos em malharias e tricotagens, exceto meias',1,1,getdate(),null,null)
insert into activity  values (2, 'Curtimento e outras prepara��es de couro ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de artigos para viagem, bolsas e semelhantes de qualquer material  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de artefatos de couro n�o especificados anteriormente  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de cal�ados de couro    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de t�nis de qualquer material ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de cal�ados de material sint�tico  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de cal�ados de materiais n�o especificados anteriormente    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de partes para cal�ados, de qualquer material ',1,1,getdate(),null,null)
insert into activity  values (2, 'Desdobramento de madeira  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de madeira laminada e de chapas de madeira compensada, prensada e aglomerada',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de estruturas de madeira e de artigos de carpintaria para constru��o   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de artefatos de tanoaria e de embalagens de madeira',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de artefatos de madeira, palha, corti�a, vime e material tran�ado n�o especificados anteriormente, exceto m�veis',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de celulose e outras pastas para a fabrica��o de papel ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de papel  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de cartolina e papel-cart�o   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de embalagens de papel  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de embalagens de cartolina e papel-cart�o ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de chapas e de embalagens de papel�o ondulado ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de produtos de papel, cartolina, papel-cart�o e papel�o ondulado para uso comercial e de escrit�rio    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de produtos de papel para usos dom�stico e higi�nico-sanit�rio',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de produtos de pastas celul�sicas, papel, cartolina, papel-cart�o e papel�o ondulado n�o especificados anteriormente',1,1,getdate(),null,null)
insert into activity  values (2, 'Impress�o de jornais, livros, revistas e outras publica��es peri�dicas ',1,1,getdate(),null,null)
insert into activity  values (2, 'Impress�o de material de seguran�a ',1,1,getdate(),null,null)
insert into activity  values (2, 'Impress�o de materiais para outros usos  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Servi�os de pr�-impress�o ',1,1,getdate(),null,null)
insert into activity  values (2, 'Servi�os de acabamentos gr�ficos   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Reprodu��o de materiais gravados em qualquer suporte ',1,1,getdate(),null,null)
insert into activity  values (2, 'Coquerias ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de produtos do refino de petr�leo  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de produtos derivados do petr�leo, exceto produtos do refino',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de �lcool ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de biocombust�veis, exceto �lcool  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de cloro e �lcalis ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de intermedi�rios para fertilizantes ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de adubos e fertilizantes ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de gases industriais    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de produtos qu�micos inorg�nicos n�o especificados anteriormente   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de produtos petroqu�micos b�sicos  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de intermedi�rios para plastificantes, resinas e fibras',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de produtos qu�micos org�nicos n�o especificados anteriormente',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de resinas termopl�sticas ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de resinas termofixas   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de elast�meros ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de fibras artificiais e sint�ticas ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de defensivos agr�colas ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de desinfestantes domissanit�rios  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de sab�es e detergentes sint�ticos ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de produtos de limpeza e polimento ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de cosm�ticos, produtos de perfumaria e de higiene pessoal  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de tintas, vernizes, esmaltes e lacas',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de tintas de impress�o  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de impermeabilizantes, solventes e produtos afins  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de adesivos e selantes  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de explosivos  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de aditivos de uso industrial ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de catalisadores   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de produtos qu�micos n�o especificados anteriormente   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de produtos farmoqu�micos ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de medicamentos para uso humano    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de medicamentos para uso veterin�rio ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de prepara��es farmac�uticas  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de pneum�ticos e de c�maras-de-ar  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Reforma de pneum�ticos usados ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de artefatos de borracha n�o especificados anteriormente    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de laminados planos e tubulares de material pl�stico   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de embalagens de material pl�stico ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de tubos e acess�rios de material pl�stico para uso na constru��o  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de artefatos de material pl�stico n�o especificados anteriormente  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de vidro plano e de seguran�a ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de embalagens de vidro  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de artigos de vidro',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de cimento',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de artefatos de concreto, cimento, fibrocimento, gesso e materiais semelhantes  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de produtos cer�micos refrat�rios  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de produtos cer�micos n�o-refrat�rios para uso estrutural na constru��o',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de produtos cer�micos n�o-refrat�rios n�o especificados anteriormente  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Aparelhamento e outros trabalhos em pedras    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de cal e gesso ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de produtos de minerais n�o-met�licos n�o especificados anteriormente  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Produ��o de ferro-gusa    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Produ��o de ferroligas    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Produ��o de semi-acabados de a�o   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Produ��o de laminados planos de a�o',1,1,getdate(),null,null)
insert into activity  values (2, 'Produ��o de laminados longos de a�o',1,1,getdate(),null,null)
insert into activity  values (2, 'Produ��o de relaminados, trefilados e perfilados de a�o  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Produ��o de tubos de a�o com costura ',1,1,getdate(),null,null)
insert into activity  values (2, 'Produ��o de outros tubos de ferro e a�o  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Metalurgia do alum�nio e suas ligas',1,1,getdate(),null,null)
insert into activity  values (2, 'Metalurgia dos metais preciosos    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Metalurgia do cobre  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Metalurgia dos metais n�o-ferrosos e suas ligas n�o especificados anteriormente   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fundi��o de ferro e a�o   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fundi��o de metais n�o-ferrosos e suas ligas  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de estruturas met�licas ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de esquadrias de metal  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de obras de caldeiraria pesada',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de tanques, reservat�rios met�licos e caldeiras para aquecimento central    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de caldeiras geradoras de vapor, exceto para aquecimento central e para ve�culos',1,1,getdate(),null,null)
insert into activity  values (2, 'Produ��o de forjados de a�o e de metais n�o-ferrosos e suas ligas ',1,1,getdate(),null,null)
insert into activity  values (2, 'Produ��o de artefatos estampados de metal; metalurgia do p�   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Servi�os de usinagem, solda, tratamento e revestimento em metais  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de artigos de cutelaria ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de artigos de serralheria, exceto esquadrias  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de ferramentas ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de equipamento b�lico pesado, armas e muni��es',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de embalagens met�licas ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de produtos de trefilados de metal ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de artigos de metal para uso dom�stico e pessoal   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de produtos de metal n�o especificados anteriormente   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de componentes eletr�nicos',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de equipamentos de inform�tica',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de perif�ricos para equipamentos de inform�tica    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de equipamentos transmissores de comunica��o  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de aparelhos telef�nicos e de outros equipamentos de comunica��o   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de aparelhos de recep��o, reprodu��o, grava��o e amplifica��o de �udio e v�deo  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de aparelhos e equipamentos de medida, teste e controle',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de cron�metros e rel�gios ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de aparelhos eletrom�dicos e eletroterap�uticos e equipamentos de irradia��o',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de equipamentos e instrumentos �pticos, fotogr�ficos e cinematogr�ficos',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de m�dias virgens, magn�ticas e �pticas   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de geradores, transformadores e motores el�tricos  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de pilhas, baterias e acumuladores el�tricos, exceto para ve�culos automotores  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de baterias e acumuladores para ve�culos automotores   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de aparelhos e equipamentos para distribui��o e controle de energia el�trica',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de material el�trico para instala��es em circuito de consumo',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de fios, cabos e condutores el�tricos isolados',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de l�mpadas e outros equipamentos de ilumina��o    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de fog�es, refrigeradores e m�quinas de lavar e secar para uso dom�stico    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de aparelhos eletrodom�sticos n�o especificados anteriormente ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de equipamentos e aparelhos el�tricos n�o especificados anteriormente  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de motores e turbinas, exceto para avi�es e ve�culos rodovi�rios   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de equipamentos hidr�ulicos e pneum�ticos, exceto v�lvulas  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de v�lvulas, registros e dispositivos semelhantes  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de compressores',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de equipamentos de transmiss�o para fins industriais   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de aparelhos e equipamentos para instala��es t�rmicas  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de m�quinas, equipamentos e aparelhos para transporte e eleva��o de cargas e pessoas ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de m�quinas e aparelhos de refrigera��o e ventila��o para uso industrial e comercial ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de aparelhos e equipamentos de ar condicionado',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de m�quinas e equipamentos para saneamento b�sico e ambiental ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de m�quinas e equipamentos de uso geral n�o especificados anteriormente',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de tratores agr�colas   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de equipamentos para irriga��o agr�cola   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de m�quinas e equipamentos para a agricultura e pecu�ria, exceto para irriga��o ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de m�quinas-ferramenta  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de m�quinas e equipamentos para a prospec��o e extra��o de petr�leo',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de outras m�quinas e equipamentos para uso na extra��o mineral, exceto na extra��o de petr�leo  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de tratores, exceto agr�colas ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de m�quinas e equipamentos para terraplenagem, pavimenta��o e constru��o, exceto tratores  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de m�quinas para a ind�stria metal�rgica, exceto m�quinas-ferramenta   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de m�quinas e equipamentos para as ind�strias de alimentos, bebidas e fumo  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de m�quinas e equipamentos para a ind�stria t�xtil ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de m�quinas e equipamentos para as ind�strias do vestu�rio, do couro e de cal�ados   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de m�quinas e equipamentos para as ind�strias de celulose, papel e papel�o e artefatos ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de m�quinas e equipamentos para a ind�stria do pl�stico',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de m�quinas e equipamentos para uso industrial espec�fico n�o especificados anteriormente  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de autom�veis, camionetas e utilit�rios   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de caminh�es e �nibus   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de cabines, carrocerias e reboques para ve�culos automotores',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de pe�as e acess�rios para o sistema motor de ve�culos automotores ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de pe�as e acess�rios para os sistemas de marcha e transmiss�o de ve�culos automotores ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de pe�as e acess�rios para o sistema de freios de ve�culos automotores ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de pe�as e acess�rios para o sistema de dire��o e suspens�o de ve�culos automotores  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de material el�trico e eletr�nico para ve�culos automotores, exceto baterias',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de pe�as e acess�rios para ve�culos automotores n�o especificados anteriormente ',1,1,getdate(),null,null)
insert into activity  values (2, 'Recondicionamento e recupera��o de motores para ve�culos automotores   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Constru��o de embarca��es e estruturas flutuantes    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Constru��o de embarca��es para esporte e lazer',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de locomotivas, vag�es e outros materiais rodantes ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de pe�as e acess�rios para ve�culos ferrovi�rios   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de aeronaves   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de turbinas, motores e outros componentes e pe�as para aeronaves   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de ve�culos militares de combate   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de motocicletas',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de bicicletas e triciclos n�o-motorizados ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de equipamentos de transporte n�o especificados anteriormente ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de m�veis com predomin�ncia de madeira    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de m�veis com predomin�ncia de metal ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de m�veis de outros materiais, exceto madeira e metal  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de colch�es    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Lapida��o de gemas e fabrica��o de artefatos de ourivesaria e joalheria',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de bijuterias e artefatos semelhantes',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de instrumentos musicais',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de artefatos para pesca e esporte  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de brinquedos e jogos recreativos  ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de instrumentos e materiais para uso m�dico e odontol�gico e de artigos �pticos ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de escovas, pinc�is e vassouras    ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de equipamentos e acess�rios para seguran�a e prote��o pessoal e profissional   ',1,1,getdate(),null,null)
insert into activity  values (2, 'Fabrica��o de produtos diversos n�o especificados anteriormente   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Manuten��o e repara��o de tanques, reservat�rios met�licos e caldeiras, exceto para ve�culos    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Manuten��o e repara��o de equipamentos eletr�nicos e �pticos  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Manuten��o e repara��o de m�quinas e equipamentos el�tricos   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Manuten��o e repara��o de m�quinas e equipamentos da ind�stria mec�nica',1,1,getdate(),null,null)
insert into activity  values (3, 'Manuten��o e repara��o de ve�culos ferrovi�rios ',1,1,getdate(),null,null)
insert into activity  values (3, 'Manuten��o e repara��o de aeronaves',1,1,getdate(),null,null)
insert into activity  values (3, 'Manuten��o e repara��o de embarca��es',1,1,getdate(),null,null)
insert into activity  values (3, 'Manuten��o e repara��o de equipamentos e produtos n�o especificados anteriormente ',1,1,getdate(),null,null)
insert into activity  values (3, 'Instala��o de m�quinas e equipamentos industriais    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Instala��o de equipamentos n�o especificados anteriormente    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Coleta de res�duos n�o-perigosos   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Coleta de res�duos perigosos  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Tratamento e disposi��o de res�duos n�o-perigosos    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Tratamento e disposi��o de res�duos perigosos ',1,1,getdate(),null,null)
insert into activity  values (3, 'Manuten��o e repara��o de ve�culos automotores',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de produ��o cinematogr�fica, de v�deos e de programas de televis�o ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de p�s-produ��o cinematogr�fica, de v�deos e de programas de televis�o ',1,1,getdate(),null,null)
insert into activity  values (3, 'Distribui��o cinematogr�fica, de v�deo e de programas de televis�o',1,1,getdate(),null,null)
insert into activity  values (3, 'Telecomunica��es por fio  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Telecomunica��es sem fio  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Telecomunica��es por sat�lite ',1,1,getdate(),null,null)
insert into activity  values (3, 'Concession�rias de rodovias, pontes, t�neis e servi�os relacionados    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Terminais rodovi�rios e ferrovi�rios ',1,1,getdate(),null,null)
insert into activity  values (3, 'Manuten��o e repara��o de motocicletas   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Transporte ferrovi�rio de carga    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Transporte metroferrovi�rio de passageiros    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Transporte rodovi�rio coletivo de passageiros, com itiner�rio fixo, municipal e em regi�o metropolitana    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Transporte rodovi�rio coletivo de passageiros, com itiner�rio fixo, intermunicipal, interestadual e internacional ',1,1,getdate(),null,null)
insert into activity  values (3, 'Transporte rodovi�rio de t�xi ',1,1,getdate(),null,null)
insert into activity  values (3, 'Transporte escolar   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Transporte rodovi�rio coletivo de passageiros, sob regime de fretamento, e outros transportes rodovi�rios n�o especificados anteriormente  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Transporte rodovi�rio de carga',1,1,getdate(),null,null)
insert into activity  values (3, 'Transporte dutovi�rio',1,1,getdate(),null,null)
insert into activity  values (3, 'Trens tur�sticos, telef�ricos e similares',1,1,getdate(),null,null)
insert into activity  values (3, 'Transporte mar�timo de cabotagem   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Transporte mar�timo de longo curso ',1,1,getdate(),null,null)
insert into activity  values (3, 'Transporte por navega��o interior de carga    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Transporte por navega��o interior de passageiros em linhas regulares   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Navega��o de apoio   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Transporte por navega��o de travessia',1,1,getdate(),null,null)
insert into activity  values (3, 'Transportes aquavi�rios n�o especificados anteriormente  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Transporte a�reo de passageiros regular  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Transporte a�reo de passageiros n�o-regular   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Transporte a�reo de carga ',1,1,getdate(),null,null)
insert into activity  values (3, 'Transporte espacial  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de servi�os prestados principalmente �s empresas n�o especificadas anteriormente',1,1,getdate(),null,null)
insert into activity  values (3, 'Administra��o p�blica em geral',1,1,getdate(),null,null)
insert into activity  values (3, 'Regula��o das atividades de sa�de, educa��o, servi�os culturais e outros servi�os sociais  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Regula��o das atividades econ�micas',1,1,getdate(),null,null)
insert into activity  values (3, 'Rela��es exteriores  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Defesa    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Justi�a   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Seguran�a e ordem p�blica ',1,1,getdate(),null,null)
insert into activity  values (3, 'Defesa Civil',1,1,getdate(),null,null)
insert into activity  values (3, 'Seguridade social obrigat�ria ',1,1,getdate(),null,null)
insert into activity  values (3, 'Educa��o infantil - creche',1,1,getdate(),null,null)
insert into activity  values (3, 'Educa��o infantil - pr�-escola',1,1,getdate(),null,null)
insert into activity  values (3, 'Ensino fundamental   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Ensino m�dio',1,1,getdate(),null,null)
insert into activity  values (3, 'Educa��o superior - gradua��o ',1,1,getdate(),null,null)
insert into activity  values (3, 'Educa��o superior - gradua��o e p�s-gradua��o ',1,1,getdate(),null,null)
insert into activity  values (3, 'Educa��o superior - p�s-gradua��o e extens�o  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Educa��o profissional de n�vel t�cnico   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Educa��o profissional de n�vel tecnol�gico    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de apoio � educa��o',1,1,getdate(),null,null)
insert into activity  values (3, 'Ensino de esportes   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Ensino de arte e cultura  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Ensino de idiomas',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de ensino n�o especificadas anteriormente ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de atendimento hospitalar ',1,1,getdate(),null,null)
insert into activity  values (3, 'Servi�os m�veis de atendimento a urg�ncias    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Servi�os de remo��o de pacientes, exceto os servi�os m�veis de atendimento a urg�ncias ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de aten��o ambulatorial executadas por m�dicos e odont�logos',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de servi�os de complementa��o diagn�stica e terap�utica',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de profissionais da �rea de sa�de, exceto m�dicos e odont�logos    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de apoio � gest�o de sa�de',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de aten��o � sa�de humana n�o especificadas anteriormente   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de assist�ncia a idosos, deficientes f�sicos, imunodeprimidos e convalescentes prestadas em resid�ncias coletivas e particulares',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de fornecimento de infra-estrutura de apoio e assist�ncia a paciente no domic�lio    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de assist�ncia psicossocial e � sa�de a portadores de dist�rbios ps�quicos, defici�ncia mental e depend�ncia qu�mica',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de assist�ncia social prestadas em resid�ncias coletivas e particulares',1,1,getdate(),null,null)
insert into activity  values (3, 'Servi�os de assist�ncia social sem alojamento ',1,1,getdate(),null,null)
insert into activity  values (3, 'Artes c�nicas, espet�culos e atividades complementares   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Cria��o art�stica',1,1,getdate(),null,null)
insert into activity  values (3, 'Gest�o de espa�os para artes c�nicas, espet�culos e outras atividades art�sticas  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de bibliotecas e arquivos ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de museus e de explora��o, restaura��o art�stica e conserva��o de lugares e pr�dios hist�ricos e atra��es similares ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de jardins bot�nicos, zool�gicos, parques nacionais, reservas ecol�gicas e �reas de prote��o ambiental ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de explora��o de jogos de azar e apostas  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Gest�o de instala��es de esportes  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Clubes sociais, esportivos e similares   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de condicionamento f�sico ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades esportivas n�o especificadas anteriormente',1,1,getdate(),null,null)
insert into activity  values (3, 'Parques de divers�o e parques tem�ticos  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de recrea��o e lazer n�o especificadas anteriormente   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de organiza��es associativas patronais e empresariais  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de organiza��es associativas profissionais',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de organiza��es sindicais ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de associa��es de defesa de direitos sociais  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de organiza��es religiosas',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de organiza��es pol�ticas ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de organiza��es associativas ligadas � cultura e � arte',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades associativas n�o especificadas anteriormente  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Repara��o e manuten��o de computadores e de equipamentos perif�ricos   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Repara��o e manuten��o de equipamentos de comunica��o',1,1,getdate(),null,null)
insert into activity  values (3, 'Repara��o e manuten��o de equipamentos eletroeletr�nicos de uso pessoal e dom�stico    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Repara��o e manuten��o de objetos e equipamentos pessoais e dom�sticos n�o especificados anteriormente',1,1,getdate(),null,null)
insert into activity  values (3, 'Lavanderias, tinturarias e toalheiros',1,1,getdate(),null,null)
insert into activity  values (3, 'Cabeleireiros e outras atividades de tratamento de beleza',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades funer�rias e servi�os relacionados ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de servi�os pessoais n�o especificadas anteriormente   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Servi�os dom�sticos  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Organismos internacionais e outras institui��es extraterritoriais ',1,1,getdate(),null,null)
insert into activity  values (3, 'Desenvolvimento de programas de computador sob encomenda ',1,1,getdate(),null,null)
insert into activity  values (3, 'Desenvolvimento e licenciamento de programas de computador customiz�veis ',1,1,getdate(),null,null)
insert into activity  values (3, 'Desenvolvimento e licenciamento de programas de computador n�o-customiz�veis  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Consultoria em tecnologia da informa��o  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Suporte t�cnico, manuten��o e outros servi�os em tecnologia da informa��o',1,1,getdate(),null,null)
insert into activity  values (3, 'Tratamento de dados, provedores de servi�os de aplica��o e servi�os de hospedagem na internet   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Portais, provedores de conte�do e outros servi�os de informa��o na internet   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Ag�ncias de not�cias ',1,1,getdate(),null,null)
insert into activity  values (3, 'Outras atividades de presta��o de servi�os de informa��o n�o especificadas anteriormente   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Banco Central    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Bancos comerciais',1,1,getdate(),null,null)
insert into activity  values (3, 'Bancos m�ltiplos, com carteira comercial ',1,1,getdate(),null,null)
insert into activity  values (3, 'Caixas econ�micas',1,1,getdate(),null,null)
insert into activity  values (3, 'Cr�dito cooperativo  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Bancos m�ltiplos, sem carteira comercial ',1,1,getdate(),null,null)
insert into activity  values (3, 'Bancos de investimento    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Bancos de desenvolvimento ',1,1,getdate(),null,null)
insert into activity  values (3, 'Ag�ncias de fomento  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Cr�dito imobili�rio  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Sociedades de cr�dito, financiamento e investimento - financeiras ',1,1,getdate(),null,null)
insert into activity  values (3, 'Sociedades de cr�dito ao microempreendedor    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Bancos de c�mbio e outras institui��es de intermedia��o n�o-monet�ria  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Arrendamento mercantil    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Sociedades de capitaliza��o   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Holdings de institui��es financeiras ',1,1,getdate(),null,null)
insert into activity  values (3, 'Holdings de institui��es n�o-financeiras ',1,1,getdate(),null,null)
insert into activity  values (3, 'Outras sociedades de participa��o, exceto holdings   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Fundos de investimento    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Sociedades de fomento mercantil - factoring   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Securitiza��o de cr�ditos ',1,1,getdate(),null,null)
insert into activity  values (3, 'Administra��o de cons�rcios para aquisi��o de bens e direitos ',1,1,getdate(),null,null)
insert into activity  values (3, 'Outras atividades de servi�os financeiros n�o especificadas anteriormente',1,1,getdate(),null,null)
insert into activity  values (3, 'Seguros de vida  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Seguros n�o-vida ',1,1,getdate(),null,null)
insert into activity  values (3, 'Seguros-sa�de    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Resseguros',1,1,getdate(),null,null)
insert into activity  values (3, 'Previd�ncia complementar fechada   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Previd�ncia complementar aberta    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Planos de sa�de  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Administra��o de bolsas e mercados de balc�o organizados ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de intermedi�rios em transa��es de t�tulos, valores mobili�rios e mercadorias   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Administra��o de cart�es de cr�dito',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades auxiliares dos servi�os financeiros n�o especificadas anteriormente',1,1,getdate(),null,null)
insert into activity  values (3, 'Avalia��o de riscos e perdas  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Corretores e agentes de seguros, de planos de previd�ncia complementar e de sa�de ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades auxiliares dos seguros, da previd�ncia complementar e dos planos de sa�de n�o especificadas anteriormente  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de administra��o de fundos por contrato ou comiss�o',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades imobili�rias de im�veis pr�prios   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Intermedia��o na compra, venda e aluguel de im�veis  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Gest�o e administra��o da propriedade imobili�ria    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades jur�dicas, exceto cart�rios   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Cart�rios ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de contabilidade, consultoria e auditoria cont�bil e tribut�ria    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Sedes de empresas e unidades administrativas locais  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de consultoria em gest�o empresarial ',1,1,getdate(),null,null)
insert into activity  values (3, 'Servi�os de arquitetura   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Servi�os de engenharia    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades t�cnicas relacionadas � arquitetura e engenharia   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Testes e an�lises t�cnicas',1,1,getdate(),null,null)
insert into activity  values (3, 'Pesquisa e desenvolvimento experimental em ci�ncias f�sicas e naturais ',1,1,getdate(),null,null)
insert into activity  values (3, 'Pesquisa e desenvolvimento experimental em ci�ncias sociais e humanas  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Ag�ncias de publicidade   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Agenciamento de espa�os para publicidade, exceto em ve�culos de comunica��o   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de publicidade n�o especificadas anteriormente',1,1,getdate(),null,null)
insert into activity  values (3, 'Pesquisas de mercado e de opini�o p�blica',1,1,getdate(),null,null)
insert into activity  values (3, 'Design e decora��o de interiores   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades fotogr�ficas e similares',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades profissionais, cient�ficas e t�cnicas n�o especificadas anteriormente  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades veterin�rias   ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de teleatendimento ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de organiza��o de eventos, exceto culturais e esportivos    ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de cobran�a e informa��es cadastrais ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades auxiliares dos transportes terrestres n�o especificadas anteriormente  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Gest�o de portos e terminais  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de agenciamento mar�timo',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades auxiliares dos transportes aquavi�rios n�o especificadas anteriormente ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades auxiliares dos transportes a�reos  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades relacionadas � organiza��o do transporte de carga  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de vigil�ncia e seguran�a privada  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de transporte de valores',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de monitoramento de sistemas de seguran�a ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de investiga��o particular',1,1,getdate(),null,null)
insert into activity  values (3, 'Servi�os combinados para apoio a edif�cios, exceto condom�nios prediais',1,1,getdate(),null,null)
insert into activity  values (3, 'Condom�nios prediais ',1,1,getdate(),null,null)
insert into activity  values (3, 'Limpeza em pr�dios e em domic�lios ',1,1,getdate(),null,null)
insert into activity  values (3, 'Imuniza��o e controle de pragas urbanas  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades de limpeza n�o especificadas anteriormente',1,1,getdate(),null,null)
insert into activity  values (3, 'Atividades paisag�sticas  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Servi�os combinados de escrit�rio e apoio administrativo ',1,1,getdate(),null,null)
insert into activity  values (3, 'Gest�o de ativos intang�veis n�o-financeiros  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Sele��o e agenciamento de m�o-de-obra',1,1,getdate(),null,null)
insert into activity  values (3, 'Loca��o de m�o-de-obra tempor�ria  ',1,1,getdate(),null,null)
insert into activity  values (3, 'Fornecimento e gest�o de recursos humanos para terceiros',1,1,getdate(),null,null)


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