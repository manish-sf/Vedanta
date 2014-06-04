ALTER TABLE Employees
ADD ClientId int null;
GO

UPDATE Employees 
SET ClientId=3;
GO

ALTER TABLE ZonalOfices
ADD ClientId int;
GO

UPDATE ZonalOfices 
SET ClientId=3;

Alter Table Courses
Add ClientId int null;
GO

Update Courses
Set ClientId=3;
GO


/****** Object:  View [dbo].[vw_Courses]    Script Date: 12/05/2013 19:00:50 ******/
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
                      dbo.Courses.ClientId
FROM         dbo.Courses LEFT OUTER JOIN
                      dbo.vw_CourseBrands ON dbo.Courses.CourseBrandId = dbo.vw_CourseBrands.Id

GO




