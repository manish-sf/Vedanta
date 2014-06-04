

/****** Object:  View [dbo].[vw_Users_Lists]    Script Date: 12/10/2013 18:01:58 ******/
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
                      dbo.aspnet_Membership.LastLockoutDate, dbo.associated_Users.ClientId, dbo.vw_ClientList.Name, dbo.vw_ClientList.Lane, dbo.vw_ClientList.Street, 
                      dbo.vw_ClientList.City, dbo.vw_ClientList.Zip, dbo.vw_ClientList.Email AS ClientEmail, dbo.vw_ClientList.Website, dbo.vw_ClientList.ContractStartDate, 
                      dbo.vw_ClientList.ContractEndDate, dbo.vw_ClientList.StateName, dbo.vw_ClientList.CountryName
FROM         dbo.vw_aspnet_Users INNER JOIN
                      dbo.aspnet_Membership ON dbo.vw_aspnet_Users.UserId = dbo.aspnet_Membership.UserId LEFT OUTER JOIN
                      dbo.aspnet_UsersInRoles ON dbo.aspnet_UsersInRoles.UserId = dbo.vw_aspnet_Users.UserId LEFT OUTER JOIN
                      dbo.aspnet_Roles ON dbo.aspnet_Roles.RoleId = dbo.aspnet_UsersInRoles.RoleId LEFT OUTER JOIN
                      dbo.associated_Users ON dbo.associated_Users.Membership_UserId = dbo.vw_aspnet_Users.UserId LEFT OUTER JOIN
                      dbo.vw_Employees ON dbo.vw_Employees.EmployeeId = dbo.associated_Users.EmployeeId LEFT OUTER JOIN
                      dbo.vw_ClientList ON dbo.associated_Users.ClientId = dbo.vw_ClientList.Id

GO


