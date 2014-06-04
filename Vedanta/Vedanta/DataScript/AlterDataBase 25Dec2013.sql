

/****** Object:  View [dbo].[vw_ClientList]    Script Date: 12/25/2013 10:42:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[vw_ClientList]
AS
SELECT     dbo.Clients.Id, dbo.Clients.Name, dbo.Clients.AdminstratorId, dbo.Clients.Lane, dbo.Clients.Street, dbo.Clients.City, dbo.Clients.Zip, dbo.Clients.Phone1, 
                      dbo.Clients.Phone2, dbo.Clients.Cell, dbo.Clients.Email, dbo.Clients.Website, dbo.Clients.ContractStartDate, dbo.Clients.ContractEndDate, 
                      dbo.Clients.NoOfSchoolsPermitted, dbo.Clients.NoOfUsers, dbo.Clients.CreateDate, dbo.Clients.LastUpdated, dbo.Clients.UpdatedBy, dbo.Clients.StateId, 
                      dbo.States.Name AS StateName, dbo.States.Code AS StateCode, dbo.Clients.CountryId, dbo.Countries.Name AS CountryName, dbo.Countries.Code AS CountryCode, 
                      dbo.Clients.BusinessTypeId, dbo.BusinessTypes.Name AS BusinessName
FROM         dbo.Clients INNER JOIN
                      dbo.States ON dbo.Clients.StateId = dbo.States.Id INNER JOIN
                      dbo.Countries ON dbo.States.CountryId = dbo.Countries.Id INNER JOIN
                      dbo.BusinessTypes ON dbo.Clients.BusinessTypeId = dbo.BusinessTypes.Id

GO




/****** Object:  View [dbo].[vw_Courses]    Script Date: 12/25/2013 10:43:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[vw_Courses]
AS
SELECT     dbo.Courses.Id, dbo.Courses.CourseCode, dbo.Courses.CourseName, dbo.Courses.Duration_In_Months, dbo.Courses.FastTrackDuration, dbo.Courses.CourseFees, 
                      dbo.Courses.MinimumDownPayment, dbo.Courses.MaximumDiscountAmount, dbo.Courses.MaximumNumberOfInstallments, dbo.Courses.InstallmentAmount, 
                      dbo.Courses.TotalInstallmentAmount, dbo.Courses.CourseBrandId, dbo.vw_CourseBrands.Name AS CourseBrandName, dbo.vw_CourseBrands.BoardUniversityName,
                       dbo.vw_CourseBrands.BranchId, dbo.vw_CourseBrands.RegionalOfficeId, dbo.vw_CourseBrands.ZonalOfficeId, dbo.vw_CourseBrands.BranchName, 
                      dbo.Courses.ClientId,.vw_ClientList.Name 
FROM         dbo.Courses LEFT OUTER JOIN
                      dbo.vw_CourseBrands ON dbo.Courses.CourseBrandId = dbo.vw_CourseBrands.Id INNER JOIN
                      dbo.vw_ClientList ON dbo.vw_ClientList.Id = dbo.Courses.ClientId

GO


