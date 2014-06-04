
/****** Object:  Table [dbo].[BranchTypes]    Script Date: 01/16/2014 14:52:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[BranchTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_BranchTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

INSERT INTO BranchTypes values('Branch')
INSERT INTO BranchTypes values('Frenchises'); 
GO


ALTER Table Branches
ADD BranchTypeId int null
Go


/****** Object:  View [dbo].[vw_Branches]    Script Date: 01/16/2014 14:54:30 ******/
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
                      dbo.Branches.RegionalOfficeId, dbo.Branches.ZonalOfficeId, dbo.Branches.ClientId, dbo.Branches.ContentType, dbo.BranchTypes.Id AS BranchTypeId, 
                      dbo.BranchTypes.Type AS BranchType
FROM         dbo.Branches LEFT OUTER JOIN
                      dbo.BranchTypes ON dbo.Branches.BranchTypeId = dbo.BranchTypes.Id INNER JOIN
                      dbo.States ON dbo.Branches.StateId = dbo.States.Id INNER JOIN
                      dbo.Countries ON dbo.States.CountryId = dbo.Countries.Id LEFT OUTER JOIN
                      dbo.RegionalOffices ON dbo.Branches.RegionalOfficeId = dbo.RegionalOffices.Id LEFT OUTER JOIN
                      dbo.ZonalOfices ON dbo.RegionalOffices.ZonalOfficeId = dbo.ZonalOfices.Id

GO




