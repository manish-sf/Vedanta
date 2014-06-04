ALTER TABLE BRANCHES
ADD Logo image null,
ContentType nvarchar(50)
GO


/****** Object:  View [dbo].[vw_Branches]    Script Date: 12/31/2013 17:42:40 ******/
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
                      dbo.Branches.RegionalOfficeId, dbo.Branches.ZonalOfficeId, dbo.Branches.ClientId, dbo.Branches.ContentType
FROM         dbo.Branches INNER JOIN
                      dbo.States ON dbo.Branches.StateId = dbo.States.Id INNER JOIN
                      dbo.Countries ON dbo.States.CountryId = dbo.Countries.Id LEFT OUTER JOIN
                      dbo.RegionalOffices ON dbo.Branches.RegionalOfficeId = dbo.RegionalOffices.Id LEFT OUTER JOIN
                      dbo.ZonalOfices ON dbo.RegionalOffices.ZonalOfficeId = dbo.ZonalOfices.Id

GO





/****** Object:  View [dbo].[vw_Courses]    Script Date: 12/31/2013 14:29:48 ******/
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