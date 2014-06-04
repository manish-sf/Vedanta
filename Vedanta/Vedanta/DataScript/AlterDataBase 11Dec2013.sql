
/****** Object:  View [dbo].[vw_CourseBrands]    Script Date: 12/11/2013 18:37:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[vw_CourseBrands]
AS
SELECT     dbo.CourseBrands.Id, dbo.CourseBrands.BranchId, dbo.CourseBrands.Name, dbo.CourseBrands.BoardUniversityName, dbo.CourseBrands.RepresentativeName, 
                      dbo.CourseBrands.Street1, dbo.CourseBrands.Street2, dbo.CourseBrands.City, dbo.CourseBrands.StateId, dbo.CourseBrands.ZIP, dbo.Branches.RegionalOfficeId, 
                      dbo.Branches.ZonalOfficeId, dbo.Branches.BranchCode, dbo.Branches.BranchName, dbo.States.Name AS StateName, dbo.Countries.Name AS CountryName, 
                      dbo.Branches.ClientId
FROM         dbo.CourseBrands INNER JOIN
                      dbo.Branches ON dbo.Branches.Id = dbo.CourseBrands.BranchId LEFT OUTER JOIN
                      dbo.States ON dbo.CourseBrands.StateId = dbo.States.Id LEFT OUTER JOIN
                      dbo.Countries ON dbo.States.CountryId = dbo.Countries.Id

GO



/****** Object:  View [dbo].[vw_Employees]    Script Date: 12/11/2013 18:43:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[vw_Employees]
AS
SELECT     dbo.Employees.EmployeeId, dbo.Employees.FirstName, dbo.Employees.MiddleName, dbo.Employees.LastName, dbo.Employees.DOB, 
                      dbo.MaritalStatus.MaritalStatusName, dbo.Genders.Gender, dbo.EmployeeRanks.RankName, dbo.Employees.FatherName, dbo.Employees.MotherName, 
                      dbo.Employees.Street, dbo.Employees.Street2, dbo.Employees.City, dbo.States.Name AS State, dbo.Countries.Name AS Country, dbo.Employees.Zip, 
                      dbo.Employees.Phone, dbo.Employees.Mobile, dbo.Employees.Email, dbo.Employees.IsActive, dbo.Employees.LeavingDate, dbo.Employees.CreatedDate, 
                      dbo.Employees.LastUpdated, dbo.Employees.PassportNo, dbo.Employees.PAN, dbo.Employees.UIDNo, dbo.Branches.BranchCode, dbo.Branches.BranchName, 
                      dbo.Employees.BranchId, dbo.Employees.EmployeesRankId, dbo.Qualifications.Qualification, dbo.RegionalOffices.RegionName, dbo.ZonalOfices.ZoneName, 
                      dbo.RegionalOffices.IsActive AS IsRegionActive, dbo.ZonalOfices.IsActive AS IsZoneActive, dbo.Employees.RegionId, dbo.Employees.ZoneId, 
                      dbo.Employees.ClientId
FROM         dbo.Employees INNER JOIN
                      dbo.Genders ON dbo.Employees.Gender = dbo.Genders.Id INNER JOIN
                      dbo.MaritalStatus ON dbo.Employees.MaritalStatusId = dbo.MaritalStatus.Id INNER JOIN
                      dbo.EmployeeRanks ON dbo.Employees.EmployeesRankId = dbo.EmployeeRanks.Id INNER JOIN
                      dbo.States ON dbo.Employees.StateId = dbo.States.Id INNER JOIN
                      dbo.Countries ON dbo.States.CountryId = dbo.Countries.Id LEFT OUTER JOIN
                      dbo.Branches ON dbo.Employees.BranchId = dbo.Branches.Id INNER JOIN
                      dbo.Qualifications ON dbo.Employees.QualificationId = dbo.Qualifications.Id LEFT OUTER JOIN
                      dbo.RegionalOffices ON dbo.Employees.RegionId = dbo.RegionalOffices.Id LEFT OUTER JOIN
                      dbo.ZonalOfices ON dbo.Employees.ZoneId = dbo.ZonalOfices.Id

GO



