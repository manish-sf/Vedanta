
/****** Object:  Table [dbo].[InstallmentStructures]    Script Date: 12/12/2013 18:10:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[InstallmentStructures](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AdmissionId] [int] NULL,
	[InstallmentNo] [int] NULL,
	[Amount] [money] NULL,
	[DueDate] [datetime] NULL,
	[IsPaid] [bit] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_InstallmentStructures] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO




/****** Object:  Table [dbo].[FeeCollections]    Script Date: 12/12/2013 18:10:02 ******/
Alter Table FeeCollections
Add InstallmentStructureId int null,
LateFine money null,
TotalReceived money null;
GO

ALTER TABLE Admissions
ADD WillBePaidInInstallment bit null;
GO

/****** Object:  View [dbo].[vw_Admissions]    Script Date: 12/12/2013 13:49:43 ******/
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
                      dbo.Batches.Id AS BatchId, A.PaymentModeId, A.ManualReceiptNumber, dbo.PaymentModes.Mode AS PaymentMode, A.Description, dbo.vw_Students.Image, 
                      dbo.vw_Students.ImageType, dbo.vw_Students.LeavingDate, dbo.vw_Students.ClientId, A.WillBePaidInInstallment
FROM         dbo.Admissions AS A INNER JOIN
                      dbo.Courses ON A.CourseId = dbo.Courses.Id INNER JOIN
                      dbo.vw_Students ON A.StudentId = dbo.vw_Students.ID INNER JOIN
                      dbo.PaymentModes ON A.PaymentModeId = dbo.PaymentModes.Id LEFT OUTER JOIN
                      dbo.Batches ON A.BatchId = dbo.Batches.Id LEFT OUTER JOIN
                      dbo.ComputerInterests ON A.ComputerInterestId = dbo.ComputerInterests.Id LEFT OUTER JOIN
                      dbo.ComputerKnowledgeLevels ON A.ComputerKnowledgeLevelId = dbo.ComputerKnowledgeLevels.Id LEFT OUTER JOIN
                      dbo.HowToKnowAboutUs ON A.HowToKnowAboutUsId = dbo.HowToKnowAboutUs.Id

GO


/****** Object:  View [dbo].[vw_FeeCollections]    Script Date: 12/12/2013 15:48:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[vw_FeeCollections]
AS
SELECT     dbo.FeeCollections.Id, dbo.PaymentHeads.PaymentHead, dbo.FeeCollections.PaymentDate, dbo.PaymentModes.Mode AS PaymentMode, dbo.FeeCollections.Amount, 
                      dbo.FeeCollections.Description, dbo.FeeCollections.ManualreceiptNumber, dbo.FeeCollections.AdmissionId, dbo.vw_Admissions.RollNumber, 
                      dbo.vw_Admissions.CourseCode, dbo.vw_Admissions.CourseName, dbo.vw_Admissions.AdmissionDate, dbo.vw_Admissions.DownPayment, 
                      dbo.vw_Admissions.NextPaymentDueDate, dbo.vw_Admissions.IsActive, dbo.vw_Admissions.RegistrationNumber, dbo.vw_Admissions.BranchName, 
                      dbo.vw_Admissions.BranchCode, dbo.vw_Admissions.BranchId, dbo.vw_Branches.RegionalOfficeId, dbo.vw_Branches.ZonalOfficeId, dbo.vw_Branches.RegionName, 
                      dbo.vw_Branches.ZoneName, dbo.vw_Branches.ClientId, dbo.FeeCollections.InstallmentStructureId, dbo.InstallmentStructures.InstallmentNo, 
                      dbo.InstallmentStructures.Amount AS InstallmentAmount, dbo.InstallmentStructures.DueDate, dbo.FeeCollections.LateFine, dbo.FeeCollections.TotalReceived
FROM         dbo.FeeCollections INNER JOIN
                      dbo.vw_Admissions ON dbo.FeeCollections.AdmissionId = dbo.vw_Admissions.Id INNER JOIN
                      dbo.vw_Branches ON dbo.vw_Admissions.BranchId = dbo.vw_Branches.Id LEFT OUTER JOIN
                      dbo.InstallmentStructures ON dbo.FeeCollections.Id = dbo.InstallmentStructures.Id LEFT OUTER JOIN
                      dbo.PaymentHeads ON dbo.FeeCollections.PaymentHeadId = dbo.PaymentHeads.Id LEFT OUTER JOIN
                      dbo.PaymentModes ON dbo.FeeCollections.PaymentModeId = dbo.PaymentModes.Id

GO




/****** Object:  Trigger [dbo].[trgAddToFeeCollection]    Script Date: 12/12/2013 18:05:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[trgAddToFeeCollection]
   ON [dbo].[Admissions]
   AFTER INSERT
AS 
BEGIN
	
	INSERT INTO FeeCollections ( [AdmissionId]
      ,[PaymentHeadId]
      ,[PaymentDate]
      ,[PaymentModeId]
      ,[Amount]
      ,[Description]
      ,[ManualreceiptNumber]
      ,[InstallmentStructureId]
      ,[LateFine]
      ,[TotalReceived]
 )
 
 SELECT Id,1,AdmissionDate,PaymentModeId,DownPayment,[Description],ManualReceiptNumber,null,0,DownPayment from Inserted

END

GO



/****** Object:  View [dbo].[vw_Users_Lists]    Script Date: 12/12/2013 18:05:55 ******/
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
                      dbo.vw_ClientList.ContractEndDate, dbo.vw_ClientList.StateName, dbo.vw_ClientList.CountryName, dbo.vw_ClientList.Cell
FROM         dbo.vw_aspnet_Users INNER JOIN
                      dbo.aspnet_Membership ON dbo.vw_aspnet_Users.UserId = dbo.aspnet_Membership.UserId LEFT OUTER JOIN
                      dbo.aspnet_UsersInRoles ON dbo.aspnet_UsersInRoles.UserId = dbo.vw_aspnet_Users.UserId LEFT OUTER JOIN
                      dbo.aspnet_Roles ON dbo.aspnet_Roles.RoleId = dbo.aspnet_UsersInRoles.RoleId LEFT OUTER JOIN
                      dbo.associated_Users ON dbo.associated_Users.Membership_UserId = dbo.vw_aspnet_Users.UserId LEFT OUTER JOIN
                      dbo.vw_Employees ON dbo.vw_Employees.EmployeeId = dbo.associated_Users.EmployeeId LEFT OUTER JOIN
                      dbo.vw_ClientList ON dbo.associated_Users.ClientId = dbo.vw_ClientList.Id

GO


