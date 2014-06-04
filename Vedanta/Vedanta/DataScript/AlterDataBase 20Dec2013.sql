Alter Table Assets
Add WarrantyExpiryDate datetime null,
AMC_Reporesntative nvarchar(75) null,
AMC_Address nvarchar(150) null,
AMC_Phone nvarchar(50) null,
AMC_Email nvarchar(100) null

GO

/****** Object:  View [dbo].[vw_AssetList]    Script Date: 12/20/2013 16:58:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[vw_AssetList]
AS
SELECT     dbo.Assets.Id, dbo.Assets.Code, dbo.Assets.Name, dbo.Assets.Quantity, dbo.Assets.PurchasedDate, dbo.Assets.LastRepaireDate, dbo.Assets.LastAuditDate, 
                      dbo.Assets.IsWorking, dbo.Branches.BranchName, dbo.Assets.BranchId, dbo.Branches.RegionalOfficeId, dbo.Branches.ZonalOfficeId, dbo.Branches.BranchCode, 
                      dbo.Branches.ClientId, dbo.Assets.WarrantyExpiryDate, dbo.Assets.AMC_Reporesntative, dbo.Assets.AMC_Address, dbo.Assets.AMC_Phone, 
                      dbo.Assets.AMC_Email
FROM         dbo.Assets INNER JOIN
                      dbo.Branches ON dbo.Assets.BranchId = dbo.Branches.Id

GO

