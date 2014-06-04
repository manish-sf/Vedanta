/****** Object:  Table [dbo].[CourseBrands]    Script Date: 12/04/2013 17:50:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CourseBrands](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NULL,
	[Name] [nvarchar](100) NULL,
	[BoardUniversityName] [nvarchar](100) NULL,
	[RepresentativeName] [nvarchar](50) NULL,
	[Street1] [nvarchar](100) NULL,
	[Street2] [nvarchar](100) NULL,
	[City] [nvarchar](50) NULL,
	[StateId] [int] NULL,
	[ZIP] [nvarchar](7) NULL,
 CONSTRAINT [PK_CourseBrands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


ALTER TABLE COURSES
ADD CourseBrandId int null;
GO

/****** Object:  View [dbo].[vw_CourseBrands]    Script Date: 12/04/2013 18:03:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_CourseBrands]
AS
SELECT     dbo.CourseBrands.Id, dbo.CourseBrands.BranchId, dbo.CourseBrands.Name, dbo.CourseBrands.BoardUniversityName, dbo.CourseBrands.RepresentativeName, 
                      dbo.CourseBrands.Street1, dbo.CourseBrands.Street2, dbo.CourseBrands.City, dbo.CourseBrands.StateId, dbo.CourseBrands.ZIP, dbo.Branches.RegionalOfficeId, 
                      dbo.Branches.ZonalOfficeId, dbo.Branches.BranchCode, dbo.Branches.BranchName, dbo.States.Name AS StateName, dbo.Countries.Name AS CountryName, 
                      dbo.Branches.ClientId
FROM         dbo.CourseBrands INNER JOIN
                      dbo.Branches ON dbo.Branches.Id = dbo.CourseBrands.BranchId INNER JOIN
                      dbo.States ON dbo.CourseBrands.StateId = dbo.States.Id INNER JOIN
                      dbo.Countries ON dbo.States.CountryId = dbo.Countries.Id

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
         Configuration = "(H (1 [50] 2 [25] 3))"
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
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "CourseBrands"
            Begin Extent = 
               Top = 15
               Left = 41
               Bottom = 208
               Right = 233
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "Branches"
            Begin Extent = 
               Top = 16
               Left = 349
               Bottom = 216
               Right = 522
            End
            DisplayFlags = 280
            TopColumn = 13
         End
         Begin Table = "States"
            Begin Extent = 
               Top = 0
               Left = 595
               Bottom = 147
               Right = 755
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Countries"
            Begin Extent = 
               Top = 53
               Left = 829
               Bottom = 157
               Right = 989
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
   End
   Begin CriteriaPane = 
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_CourseBrands'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_CourseBrands'
GO



/****** Object:  View [dbo].[vw_Courses]    Script Date: 12/04/2013 18:03:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_Courses]
AS
SELECT     dbo.Courses.Id, dbo.Courses.CourseCode, dbo.Courses.CourseName, dbo.Courses.Duration_In_Months, dbo.Courses.FastTrackDuration, dbo.Courses.CourseFees, 
                      dbo.Courses.MinimumDownPayment, dbo.Courses.MaximumDiscountAmount, dbo.Courses.MaximumNumberOfInstallments, dbo.Courses.InstallmentAmount, 
                      dbo.Courses.TotalInstallmentAmount, dbo.Courses.CourseBrandId, dbo.vw_CourseBrands.Name AS CourseBrandName, dbo.vw_CourseBrands.BoardUniversityName,
                       dbo.vw_CourseBrands.ClientId, dbo.vw_CourseBrands.BranchId, dbo.vw_CourseBrands.RegionalOfficeId, dbo.vw_CourseBrands.ZonalOfficeId, 
                      dbo.vw_CourseBrands.BranchName
FROM         dbo.Courses LEFT OUTER JOIN
                      dbo.vw_CourseBrands ON dbo.Courses.CourseBrandId = dbo.vw_CourseBrands.Id

GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[15] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
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
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Courses"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 216
               Right = 278
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "vw_CourseBrands"
            Begin Extent = 
               Top = 6
               Left = 316
               Bottom = 186
               Right = 508
            End
            DisplayFlags = 280
            TopColumn = 9
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 10
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
      End
   End
   Begin CriteriaPane = 
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Courses'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Courses'
GO


