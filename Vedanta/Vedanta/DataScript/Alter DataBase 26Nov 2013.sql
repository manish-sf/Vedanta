Alter table Batches
ADD BranchId int

Update Batches
Set BranchId=1
/****** Object:  View [dbo].[vw_BatchList]    Script Date: 11/26/2013 18:00:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_BatchList]
AS
SELECT     dbo.Batches.Id, dbo.Batches.BranchId, dbo.Batches.BatchCode, dbo.Batches.BatchName, dbo.Batches.BatchStartTime, dbo.Batches.BatchEndTime, 
                      dbo.Batches.StudentStrength, dbo.Branches.RegionalOfficeId, dbo.Branches.ZonalOfficeId, dbo.Branches.BranchCode, dbo.Branches.BranchName
FROM         dbo.Batches INNER JOIN
                      dbo.Branches ON dbo.Batches.BranchId = dbo.Branches.Id

GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[51] 4[10] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1[51] 2[12] 3) )"
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
         Begin Table = "Batches"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 223
               Right = 207
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Branches"
            Begin Extent = 
               Top = 6
               Left = 245
               Bottom = 216
               Right = 418
            End
            DisplayFlags = 280
            TopColumn = 5
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 12
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_BatchList'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_BatchList'
GO





/****** Object:  View [dbo].[vw_ExpenseHeads]    Script Date: 11/26/2013 18:00:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_ExpenseHeads]
AS
SELECT     dbo.EXPENSESHEAD.Id, dbo.EXPENSESHEAD.CODE, dbo.EXPENSESHEAD.NAME, dbo.EXPENSESHEAD.LedgerTypeId, dbo.LedgerTypes.Type AS LedgerType, 
                      dbo.EXPENSESHEAD.OP_BAL
FROM         dbo.EXPENSESHEAD LEFT OUTER JOIN
                      dbo.LedgerTypes ON dbo.EXPENSESHEAD.LedgerTypeId = dbo.LedgerTypes.Id

GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[20] 4[4] 2[4] 3) )"
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
         Begin Table = "EXPENSESHEAD"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 198
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LedgerTypes"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 95
               Right = 396
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
      Begin ColumnWidths = 9
         Width = 284
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ExpenseHeads'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ExpenseHeads'
GO




/****** Object:  View [dbo].[vw_Admissions]    Script Date: 11/26/2013 17:56:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[vw_Admissions]
AS
SELECT     A.Id, A.RollNumber, dbo.Courses.CourseCode, dbo.Courses.CourseName, dbo.Courses.Duration_In_Months, dbo.Courses.CourseFees, A.AdmissionDate, 
                      dbo.Batches.BatchCode, dbo.Batches.BatchName, A.BatchStartDate, A.BatchEndDate, A.DownPayment, A.NextPaymentDueDate, A.IsActive, 
                      A.MaximumDiscountAmount, A.RegistrationNumber, A.IsComputerKnown, dbo.ComputerKnowledgeLevels.LevelName AS ComputerKnoledgeLevel, 
                      dbo.ComputerInterests.InterestName AS ComputerInterestName, dbo.HowToKnowAboutUs.TypeName AS HowToKnowAboutUs, A.Location, 
                      dbo.Batches.BatchStartTime, dbo.Batches.BatchEndTime, A.StudentId, A.CourseId, A.NeedJobAssistance, dbo.vw_Students.ID AS Expr1, 
                      dbo.vw_Students.BranchCode, dbo.vw_Students.BranchName, dbo.vw_Students.FirstName, dbo.vw_Students.LastName, dbo.vw_Students.MiddleName, 
                      dbo.vw_Students.Qualification, dbo.vw_Students.Gender, dbo.vw_Students.DOB, dbo.vw_Students.Age, dbo.vw_Students.MaritalStatusName, 
                      dbo.vw_Students.FatherName, dbo.vw_Students.MotherName, dbo.vw_Students.Street, dbo.vw_Students.Street2, dbo.vw_Students.City, dbo.vw_Students.State, 
                      dbo.vw_Students.Country, dbo.vw_Students.Zip, dbo.vw_Students.Phone, dbo.vw_Students.Cell, dbo.vw_Students.Email, 
                      dbo.vw_Students.IsActive AS IsStudentActive, dbo.vw_Students.Mothertoungue, dbo.vw_Students.PassportNo, dbo.vw_Students.PAN, dbo.vw_Students.UIDNo, 
                      dbo.vw_Students.Occupation, dbo.vw_Students.IncomeSlot, dbo.vw_Students.BranchId, dbo.vw_Students.Nationality, dbo.vw_Students.Religion, 
                      dbo.vw_Students.NationalityId, dbo.vw_Students.ReligionId, dbo.vw_Students.StateId, dbo.vw_Students.CountryId,
                          (SELECT     SUM(Amount) AS FeeCollected
                            FROM          dbo.FeeCollections
                            WHERE      (AdmissionId = A.Id)) AS FeeCollected, dbo.Courses.TotalInstallmentAmount, dbo.vw_Students.RegionalOfficeId, dbo.vw_Students.ZonalOfficeId, 
                      dbo.Batches.Id AS BatchId
FROM         dbo.Admissions AS A INNER JOIN
                      dbo.Courses ON A.CourseId = dbo.Courses.Id INNER JOIN
                      dbo.vw_Students ON A.StudentId = dbo.vw_Students.ID LEFT OUTER JOIN
                      dbo.Batches ON A.BatchId = dbo.Batches.Id LEFT OUTER JOIN
                      dbo.ComputerInterests ON A.ComputerInterestId = dbo.ComputerInterests.Id LEFT OUTER JOIN
                      dbo.ComputerKnowledgeLevels ON A.ComputerKnowledgeLevelId = dbo.ComputerKnowledgeLevels.Id LEFT OUTER JOIN
                      dbo.HowToKnowAboutUs ON A.HowToKnowAboutUsId = dbo.HowToKnowAboutUs.Id

GO


