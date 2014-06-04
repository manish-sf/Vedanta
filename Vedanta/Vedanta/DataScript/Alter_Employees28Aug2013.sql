/* File: Alter_Employees28Aug2013
** Desc: Added Branch and removed AreaId, schoolleavingreasonId
** Author: Manish Singh
*/   

USE [Vedanta]
GO

/****** Object:  Table [dbo].[Employees]    Script Date: 08/28/2013 18:47:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employees]') AND type in (N'U'))
DROP TABLE [dbo].[Employees]
GO

USE [Vedanta]
GO

/****** Object:  Table [dbo].[Employees]    Script Date: 08/28/2013 18:47:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Employees](
	[EmployeeId] [nvarchar](50) NOT NULL,
	[BranchId] [int] NULL,
	[EmployeesRankId] [int] NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[DOB] [datetime] NOT NULL,
	[MaritalStatusId] [int] NOT NULL,
	[Gender] [int] NOT NULL,
	[QualificationId] [int] NULL,
	[FatherName] [nvarchar](100) NULL,
	[MotherName] [nvarchar](100) NULL,
	[Street] [nvarchar](100) NULL,
	[Street2] [nvarchar](100) NULL,
	[City] [nvarchar](50) NULL,
	[StateId] [int] NULL,
	[Zip] [nvarchar](50) NULL,
	[CountryId] [int] NULL,
	[Phone] [nvarchar](15) NULL,
	[Mobile] [nvarchar](15) NULL,
	[Email] [nvarchar](100) NULL,
	[Image] [image] NULL,
	[ImageType] [nvarchar](4) NULL,
	[LeavingDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[LastUpdated] [datetime] NULL,
	[PassportNo] [nvarchar](50) NULL,
	[PAN] [nvarchar](50) NULL,
	[UIDNo] [nvarchar](50) NULL,
 CONSTRAINT [PK_Employees_1] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO


USE [Vedanta]
GO

/****** Object:  View [dbo].[vw_Employees]    Script Date: 08/28/2013 18:47:35 ******/
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
                      dbo.Employees.BranchId, dbo.Employees.EmployeesRankId, dbo.Qualifications.Qualification
FROM         dbo.Employees INNER JOIN
                      dbo.Genders ON dbo.Employees.Gender = dbo.Genders.Id INNER JOIN
                      dbo.MaritalStatus ON dbo.Employees.MaritalStatusId = dbo.MaritalStatus.Id INNER JOIN
                      dbo.EmployeeRanks ON dbo.Employees.EmployeesRankId = dbo.EmployeeRanks.Id INNER JOIN
                      dbo.States ON dbo.Employees.StateId = dbo.States.Id INNER JOIN
                      dbo.Countries ON dbo.States.CountryId = dbo.Countries.Id INNER JOIN
                      dbo.Branches ON dbo.Employees.BranchId = dbo.Branches.Id INNER JOIN
                      dbo.Qualifications ON dbo.Employees.QualificationId = dbo.Qualifications.Id

GO


