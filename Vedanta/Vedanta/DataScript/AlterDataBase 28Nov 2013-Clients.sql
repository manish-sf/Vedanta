
/****** Object:  Table [dbo].[SchoolSettings]    Script Date: 11/28/2013 11:50:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BranchSettings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NULL,
	[IsBusServiceAvailable] [bit] NULL,
	[IsHostelServiceAvailable] [bit] NULL,
	[IsDebtorCreditotsServiceAvailable] [bit] NULL,
	[MaximumNumberOfUsersPerBranch] [int] NOT NULL,
	[MaximumNumberOfCourseBrandsPerBranch] [int] NOT NULL,
	[IsCerificateServiceAvailable] [bit] NULL,
	[IsEnquiryServiceAvailable] [bit] NULL,
	[IsDemoClassServiceAvailable] [bit] NULL,
	[IsJobServiceAvailable] [bit] NULL,
	[IsAssetServiceAvailable] [bit] NULL,
	[IsOfficeExpenseServiceAvailable] [bit] NULL,
	[IsStudyMaterialServiceAvailable] [bit] NULL,
 CONSTRAINT [PK_SchoolSettings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Debtors]    Script Date: 11/28/2013 11:50:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Debtors](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SchoolId] [int] NOT NULL,
	[DebtorsCode] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[RepresentativeName] [nvarchar](50) NULL,
	[CompanyName] [nvarchar](50) NULL,
	[Street] [nvarchar](50) NULL,
	[Street2] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[StateId] [int] NULL,
	[CountryId] [int] NULL,
	[Zip] [nvarchar](7) NULL,
	[Phone] [nvarchar](15) NULL,
	[Mobile] [nvarchar](15) NULL,
	[RepresaentativePhone] [nvarchar](15) NULL,
	[RepresentativeMobile] [nvarchar](15) NULL,
	[Fax] [nvarchar](15) NULL,
	[CompanyEmail] [nvarchar](50) NULL,
	[RepresentativeEmail] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[LastUpdated] [datetime] NULL,
 CONSTRAINT [PK_Debtors] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DebtorBills]    Script Date: 11/28/2013 11:50:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DebtorBills](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DebtorId] [int] NOT NULL,
	[BillInvoiceNumber] [nvarchar](50) NOT NULL,
	[BillDate] [datetime] NOT NULL,
	[DateOfBillSubmmission] [datetime] NOT NULL,
	[BillDueDate] [datetime] NOT NULL,
	[Amount] [money] NOT NULL,
	[MinimumPayableAmount] [money] NOT NULL,
 CONSTRAINT [PK_DebtorBills] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Creditors]    Script Date: 11/28/2013 11:50:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Creditors](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SchoolId] [int] NOT NULL,
	[CreditorCode] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[RepresentativeName] [nvarchar](50) NULL,
	[CompanyName] [nvarchar](50) NULL,
	[Street] [nvarchar](50) NULL,
	[Street2] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[StateId] [int] NULL,
	[CountryId] [int] NULL,
	[Zip] [nvarchar](7) NULL,
	[Phone] [nvarchar](15) NULL,
	[Mobile] [nvarchar](15) NULL,
	[RepresaentativePhone] [nvarchar](15) NULL,
	[RepresentativeMobile] [nvarchar](15) NULL,
	[Fax] [nvarchar](15) NULL,
	[CompanyEmail] [nvarchar](50) NULL,
	[RepresentativeEmail] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[LastUpdated] [datetime] NULL,
 CONSTRAINT [PK_Creditors] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CreditorBills]    Script Date: 11/28/2013 11:50:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CreditorBills](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreditorId] [int] NOT NULL,
	[BillInvoiceNumber] [nvarchar](50) NOT NULL,
	[BillDate] [datetime] NOT NULL,
	[DateOfBillSubmmission] [datetime] NOT NULL,
	[BillDueDate] [datetime] NOT NULL,
	[Amount] [money] NOT NULL,
	[MinimumPayableAmount] [money] NOT NULL,
 CONSTRAINT [PK_CreditorBills] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseMaterials]    Script Date: 11/28/2013 11:50:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseMaterials](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CourseId] [int] NULL,
	[ItemCode] [nvarchar](25) NOT NULL,
	[ItemName] [nvarchar](100) NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_CourseMaterials] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientSettings]    Script Date: 11/28/2013 11:50:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientSettings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClientId] [int] NULL,
	[IsBusServiceAvailable] [bit] NULL,
	[IsHostelServiceAvailable] [bit] NULL,
	[IsDebtorCreditotsServiceAvailable] [bit] NULL,
	[MaximumNumberOfUsersPerSchool] [int] NOT NULL,
	[MaximumNumberOfCourseBrandsPerSchool] [int] NOT NULL,
	[IsCerificateServiceAvailable] [bit] NULL,
	[IsEnquiryServiceAvailable] [bit] NULL,
	[IsDemoClassServiceAvailable] [bit] NULL,
	[IsJobServiceAvailable] [bit] NULL,
	[IsAssetServiceAvailable] [bit] NULL,
	[IsOfficeExpenseServiceAvailable] [bit] NULL,
	[IsStudyMaterialServiceAvailable] [bit] NULL,
 CONSTRAINT [PK_ClientSettings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 11/28/2013 11:50:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AdminstratorId] [int] NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Lane] [nvarchar](50) NULL,
	[Street] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[StateId] [int] NULL,
	[CountryId] [int] NULL,
	[Zip] [nvarchar](10) NULL,
	[Phone1] [nvarchar](50) NULL,
	[Phone2] [nvarchar](50) NULL,
	[Cell] [nvarchar](20) NULL,
	[Email] [nvarchar](50) NULL,
	[Website] [nvarchar](50) NULL,
	[ContractStartDate] [datetime] NULL,
	[ContractEndDate] [datetime] NULL,
	[BusinessTypeId] [int] NULL,
	[NoOfSchoolsPermitted] [int] NOT NULL,
	[NoOfUsers] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
	[LastUpdated] [datetime] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[BusinessTypes]    Script Date: 11/28/2013 11:56:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[BusinessTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_BusinessTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

INSERT INTO [dbo].[BusinessTypes] values('Institute');
INSERT INTO [dbo].[BusinessTypes] values('School');

/****** Object:  Table [dbo].[ClientRepresentatives]    Script Date: 11/28/2013 11:50:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientRepresentatives](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClientId] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NULL,
	[Lane] [nvarchar](50) NULL,
	[Street] [nvarchar](50) NULL,
	[City] [nvarchar](50) NOT NULL,
	[CountryId] [int] NULL,
	[StateId] [int] NOT NULL,
	[Zip] [nvarchar](10) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Extension] [nvarchar](10) NULL,
	[Cell] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[LasteUpdatedDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
 CONSTRAINT [PK_ClientRepresentatives] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  View [dbo].[vw_ClientList]    Script Date: 11/28/2013 11:50:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_ClientList]
AS
SELECT     dbo.Clients.Id, dbo.Clients.Name, dbo.Clients.AdminstratorId, dbo.Clients.Lane, dbo.Clients.Street, dbo.Clients.City, dbo.Clients.Zip, 
                      dbo.Clients.Phone1, dbo.Clients.Phone2, dbo.Clients.Cell, dbo.Clients.Email, dbo.Clients.Website, dbo.Clients.ContractStartDate, 
                      dbo.Clients.ContractEndDate, dbo.Clients.NoOfSchoolsPermitted, dbo.Clients.NoOfUsers, dbo.Clients.CreateDate, dbo.Clients.LastUpdated, 
                      dbo.Clients.UpdatedBy, dbo.Clients.StateId, dbo.States.Name AS StateName, dbo.States.Code AS StateCode, dbo.Clients.CountryId, 
                      dbo.Countries.Name AS CountryName, dbo.Countries.Code AS CountryCode, dbo.Clients.BusinessTypeId, 
                      dbo.BusinessTypes.Name AS BusinessName
FROM         dbo.Clients INNER JOIN
                      dbo.States ON dbo.Clients.StateId = dbo.States.Id INNER JOIN
                      dbo.Countries ON dbo.States.CountryId = dbo.Countries.Id INNER JOIN
                      dbo.BusinessTypes ON dbo.Clients.BusinessTypeId = dbo.BusinessTypes.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1[46] 2[25] 3) )"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 2
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Clients"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 293
               Right = 241
            End
            DisplayFlags = 280
            TopColumn = 7
         End
         Begin Table = "States"
            Begin Extent = 
               Top = 1
               Left = 539
               Bottom = 116
               Right = 691
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Countries"
            Begin Extent = 
               Top = 7
               Left = 743
               Bottom = 107
               Right = 895
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "BusinessTypes"
            Begin Extent = 
               Top = 58
               Left = 340
               Bottom = 143
               Right = 492
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 26
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 150' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ClientList'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'0
      End
   End
   Begin CriteriaPane = 
      PaneHidden = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ClientList'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ClientList'
GO

Alter table Branches
Add ClientId int
GO
update Branches
set ClientId=1



/****** Object:  View [dbo].[vw_Branches]    Script Date: 11/28/2013 16:08:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[vw_Branches]
AS
SELECT     dbo.Branches.Id, dbo.Branches.BranchCode, dbo.Branches.BranchName, dbo.Branches.Address1, dbo.Branches.Address2, dbo.Branches.City, 
                      dbo.States.Name AS State, dbo.Countries.Name AS Country, dbo.Branches.PIN, dbo.Branches.Phones, dbo.Branches.Fax, dbo.Branches.Email, 
                      dbo.Branches.Remarks, dbo.Branches.CreatedDate, dbo.Branches.CreatedBy, dbo.Branches.LastUpdatedDate, dbo.Branches.LastUpdatedBy, dbo.Branches.IsActive, 
                      dbo.Branches.ClosingDate, dbo.RegionalOffices.RegionName, dbo.ZonalOfices.ZoneName, dbo.RegionalOffices.IsActive AS IsRegionalOfficeActive, 
                      dbo.ZonalOfices.IsActive AS IsZonalOfficeActive, dbo.RegionalOffices.Website AS RegionalWebsite, dbo.ZonalOfices.Website AS ZonalWebSite, 
                      dbo.Branches.RegionalOfficeId, dbo.Branches.ZonalOfficeId, dbo.Branches.ClientId
FROM         dbo.Branches INNER JOIN
                      dbo.States ON dbo.Branches.StateId = dbo.States.Id INNER JOIN
                      dbo.Countries ON dbo.States.CountryId = dbo.Countries.Id INNER JOIN
                      dbo.RegionalOffices ON dbo.Branches.RegionalOfficeId = dbo.RegionalOffices.Id INNER JOIN
                      dbo.ZonalOfices ON dbo.RegionalOffices.ZonalOfficeId = dbo.ZonalOfices.Id

GO
