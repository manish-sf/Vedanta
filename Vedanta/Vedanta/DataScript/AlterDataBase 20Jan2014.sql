

/****** Object:  View [dbo].[vw_FeeCollections]    Script Date: 01/20/2014 13:19:15 ******/
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
                      dbo.InstallmentStructures.Amount AS InstallmentAmount, dbo.InstallmentStructures.DueDate, dbo.FeeCollections.LateFine, dbo.FeeCollections.TotalReceived, 
                      dbo.FeeCollections.PaymentHeadId, dbo.FeeCollections.PaymentModeId, dbo.vw_Branches.BranchTypeId, dbo.vw_Branches.BranchType
FROM         dbo.FeeCollections INNER JOIN
                      dbo.vw_Admissions ON dbo.FeeCollections.AdmissionId = dbo.vw_Admissions.Id INNER JOIN
                      dbo.vw_Branches ON dbo.vw_Admissions.BranchId = dbo.vw_Branches.Id LEFT OUTER JOIN
                      dbo.InstallmentStructures ON dbo.FeeCollections.Id = dbo.InstallmentStructures.Id LEFT OUTER JOIN
                      dbo.PaymentHeads ON dbo.FeeCollections.PaymentHeadId = dbo.PaymentHeads.Id LEFT OUTER JOIN
                      dbo.PaymentModes ON dbo.FeeCollections.PaymentModeId = dbo.PaymentModes.Id

GO


