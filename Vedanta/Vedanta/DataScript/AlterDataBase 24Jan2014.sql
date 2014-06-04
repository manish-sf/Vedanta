/****** Object:  View [dbo].[vw_Students]    Script Date: 01/24/2014 16:34:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[vw_Students]
AS
SELECT     dbo.Students.ID, dbo.Branches.BranchCode, dbo.Branches.BranchName, dbo.Students.FirstName, dbo.Students.LastName, dbo.Genders.Gender, dbo.Students.DOB, 
                      dbo.Students.Age, dbo.MaritalStatus.MaritalStatusName, dbo.Students.FatherName, dbo.Students.MotherName, dbo.Students.Street, dbo.Students.Street2, 
                      dbo.Students.City, dbo.States.Name AS State, dbo.Countries.Name AS Country, dbo.Students.Zip, dbo.Students.Phone, dbo.Students.Cell, dbo.Students.Email, 
                      dbo.Students.IsActive, dbo.Students.CreatedDate, dbo.Students.LastUpdated, dbo.Students.Mothertoungue, dbo.Students.PassportNo, dbo.Students.PAN, 
                      dbo.Students.UIDNo, dbo.Occupations.Name AS Occupation, dbo.FamilyIncomeSlots.IncomeSlot, dbo.Qualifications.Qualification, dbo.Students.MiddleName, 
                      dbo.Students.BranchId, dbo.Nationality.Name AS Nationality, dbo.Religions.Name AS Religion, dbo.Students.NationalityId, dbo.Students.ReligionId, 
                      dbo.Students.StateId, dbo.Students.CountryId, dbo.Branches.RegionalOfficeId, dbo.Branches.ZonalOfficeId, dbo.Students.LeavingDate, dbo.Branches.ClientId, 
                      dbo.Students.OccupationId, dbo.Students.FamilyIncomeSlotId, dbo.Students.QualificationId
FROM         dbo.Students INNER JOIN
                      dbo.Genders ON dbo.Students.Gender = dbo.Genders.Id INNER JOIN
                      dbo.Countries INNER JOIN
                      dbo.States ON dbo.Countries.Id = dbo.States.CountryId ON dbo.Students.StateId = dbo.States.Id INNER JOIN
                      dbo.Branches ON dbo.Students.BranchId = dbo.Branches.Id LEFT OUTER JOIN
                      dbo.Qualifications ON dbo.Students.QualificationId = dbo.Qualifications.Id INNER JOIN
                      dbo.MaritalStatus ON dbo.MaritalStatus.Id = dbo.Students.MaritalStatusId LEFT OUTER JOIN
                      dbo.Nationality ON dbo.Students.NationalityId = dbo.Nationality.Id LEFT OUTER JOIN
                      dbo.Religions ON dbo.Students.ReligionId = dbo.Religions.Id LEFT OUTER JOIN
                      dbo.Occupations ON dbo.Students.OccupationId = dbo.Occupations.Id LEFT OUTER JOIN
                      dbo.FamilyIncomeSlots ON dbo.Students.FamilyIncomeSlotId = dbo.FamilyIncomeSlots.Id

GO




/****** Object:  View [dbo].[vw_Student_Lists]    Script Date: 01/24/2014 16:34:57 ******/
/** This List Contains Students Corses also in which they are enrolled *****/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_Student_Lists]
AS
               
select distinct a.id
,a.[BranchCode] ,a.[BranchName],a.[FirstName],a.[MiddleName],a.[LastName],a.[Gender],a.[DOB],a.[Age]
,a.[MaritalStatusName],a.[FatherName],a.[MotherName]
,a.[Street] ,a.[Street2] ,a.[City]      ,a.[State]      ,a.[Country],a.[Zip]
,a.[Phone] ,a.[Cell] ,a.[Email] ,a.[IsActive] ,a.[CreatedDate],a.[LastUpdated]
,a.[BranchId],a.[Nationality],a.[LeavingDate],a.[ClientId],
Courses=STUFF((SELECT ',' + b.CourseCode From vw_admissions b
                                    WHERE b.StudentId= a.Id
                                     FOR XML Path('')),1,1,'')
from vw_Students a  
                

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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Student_Lists'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Student_Lists'
GO




/****** Object:  View [dbo].[vw_Student_Lists]    Script Date: 01/24/2014 16:40:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[vw_Student_Lists]
AS
               
select distinct a.id
,a.[BranchCode] ,a.[BranchName],a.[FirstName],a.[MiddleName],a.[LastName],a.[Gender],a.[DOB],a.[Age]
,a.[MaritalStatusName],a.[FatherName],a.[MotherName]
,a.[Street] ,a.[Street2] ,a.[City]      ,a.[State]      ,a.[Country],a.[Zip]
,a.[Phone] ,a.[Cell] ,a.[Email] ,a.[IsActive] ,a.[CreatedDate],a.[LastUpdated]
,a.[BranchId],a.[Nationality],a.[LeavingDate],a.[ClientId],
Courses=STUFF((SELECT ', ' + b.CourseCode From vw_admissions b
                                    WHERE b.StudentId= a.Id
                                     FOR XML Path('')),1,1,'')
from vw_Students a  
                

GO


