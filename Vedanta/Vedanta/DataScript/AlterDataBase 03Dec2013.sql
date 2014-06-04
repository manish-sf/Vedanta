ALTER TABLE associated_users
Add ClientId int,
BranchId int;
GO

update associated_users
SET ClientId=1, BranchId=1

Go

/****** Object:  View [dbo].[vw_AssetList]    Script Date: 12/03/2013 16:54:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[vw_AssetList]
AS
SELECT     dbo.Assets.Id, dbo.Assets.Code, dbo.Assets.Name, dbo.Assets.Quantity, dbo.Assets.PurchasedDate, dbo.Assets.LastRepaireDate, dbo.Assets.LastAuditDate, 
                      dbo.Assets.IsWorking, dbo.Branches.BranchName, dbo.Assets.BranchId, dbo.Branches.RegionalOfficeId, dbo.Branches.ZonalOfficeId, dbo.Branches.BranchCode, 
                      dbo.Branches.ClientId
FROM         dbo.Assets INNER JOIN
                      dbo.Branches ON dbo.Assets.BranchId = dbo.Branches.Id

GO



/****** Object:  View [dbo].[vw_BatchList]    Script Date: 12/03/2013 16:54:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[vw_BatchList]
AS
SELECT     dbo.Batches.Id, dbo.Batches.BranchId, dbo.Batches.BatchCode, dbo.Batches.BatchName, dbo.Batches.BatchStartTime, dbo.Batches.BatchEndTime, 
                      dbo.Batches.StudentStrength, dbo.Branches.RegionalOfficeId, dbo.Branches.ZonalOfficeId, dbo.Branches.BranchCode, dbo.Branches.BranchName, 
                      dbo.Branches.ClientId
FROM         dbo.Batches INNER JOIN
                      dbo.Branches ON dbo.Batches.BranchId = dbo.Branches.Id

GO


/****** Object:  View [dbo].[vw_Users_Lists]    Script Date: 12/03/2013 16:55:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[vw_Users_Lists]
AS
SELECT     dbo.vw_aspnet_Users.UserId, dbo.vw_aspnet_Users.UserName, dbo.vw_aspnet_Users.LoweredUserName, dbo.vw_aspnet_Users.MobileAlias, 
                      dbo.vw_aspnet_Users.IsAnonymous, dbo.vw_aspnet_Users.LastActivityDate, dbo.aspnet_UsersInRoles.RoleId, dbo.aspnet_Roles.RoleName, 
                      dbo.aspnet_Roles.LoweredRoleName, dbo.aspnet_Roles.Description, dbo.associated_Users.EmployeeId, dbo.vw_Employees.FirstName, 
                      dbo.vw_Employees.MiddleName, dbo.vw_Employees.LastName, dbo.vw_Employees.RankName, dbo.vw_Employees.BranchId, dbo.vw_Employees.BranchName, 
                      dbo.vw_Employees.RegionName, dbo.vw_Employees.ZoneName, dbo.vw_Employees.RegionId, dbo.vw_Employees.ZoneId, dbo.vw_Employees.IsRegionActive, 
                      dbo.vw_Employees.IsZoneActive, dbo.vw_Employees.EmployeesRankId, dbo.vw_aspnet_Users.ApplicationId, dbo.aspnet_Membership.Email, 
                      dbo.aspnet_Membership.LoweredEmail, dbo.aspnet_Membership.IsApproved, dbo.aspnet_Membership.IsLockedOut, dbo.aspnet_Membership.CreateDate, 
                      dbo.aspnet_Membership.LastLoginDate, dbo.aspnet_Membership.FailedPasswordAttemptCount, dbo.aspnet_Membership.LastPasswordChangedDate, 
                      dbo.aspnet_Membership.LastLockoutDate, dbo.associated_Users.ClientId
FROM         dbo.vw_aspnet_Users INNER JOIN
                      dbo.aspnet_Membership ON dbo.vw_aspnet_Users.UserId = dbo.aspnet_Membership.UserId LEFT OUTER JOIN
                      dbo.aspnet_UsersInRoles ON dbo.aspnet_UsersInRoles.UserId = dbo.vw_aspnet_Users.UserId LEFT OUTER JOIN
                      dbo.aspnet_Roles ON dbo.aspnet_Roles.RoleId = dbo.aspnet_UsersInRoles.RoleId LEFT OUTER JOIN
                      dbo.associated_Users ON dbo.associated_Users.Membership_UserId = dbo.vw_aspnet_Users.UserId LEFT OUTER JOIN
                      dbo.vw_Employees ON dbo.vw_Employees.EmployeeId = dbo.associated_Users.EmployeeId

GO

/****** Object:  View [dbo].[vw_Employees]    Script Date: 12/03/2013 16:57:25 ******/
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
                      dbo.Branches.ClientId
FROM         dbo.Employees INNER JOIN
                      dbo.Genders ON dbo.Employees.Gender = dbo.Genders.Id INNER JOIN
                      dbo.MaritalStatus ON dbo.Employees.MaritalStatusId = dbo.MaritalStatus.Id INNER JOIN
                      dbo.EmployeeRanks ON dbo.Employees.EmployeesRankId = dbo.EmployeeRanks.Id INNER JOIN
                      dbo.States ON dbo.Employees.StateId = dbo.States.Id INNER JOIN
                      dbo.Countries ON dbo.States.CountryId = dbo.Countries.Id LEFT OUTER JOIN
                      dbo.Branches ON dbo.Employees.BranchId = dbo.Branches.Id INNER JOIN
                      dbo.Qualifications ON dbo.Employees.QualificationId = dbo.Qualifications.Id INNER JOIN
                      dbo.RegionalOffices ON dbo.Employees.RegionId = dbo.RegionalOffices.Id INNER JOIN
                      dbo.ZonalOfices ON dbo.Employees.ZoneId = dbo.ZonalOfices.Id

GO


