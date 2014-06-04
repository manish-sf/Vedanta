Alter Table ClientSettings
Add CanSeeFrenchisesAccount bit null;
GO


/****** Object:  View [dbo].[vw_PaymentList]    Script Date: 01/17/2014 19:09:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[vw_PaymentList]
AS
SELECT     dbo.Payments.Id, dbo.Payments.BranchId, dbo.Branches.BranchName, dbo.Payments.Date, dbo.Payments.PaidTo, dbo.PaymentModes.Mode AS PaymentMode, 
                      dbo.EXPENSESHEAD.CODE AS ExpenseHeadCode, dbo.EXPENSESHEAD.NAME AS ExpenseHeadName, dbo.LedgerTypes.Type AS LedgerType, 
                      dbo.Payments.Amounts, dbo.Payments.Narration, dbo.EXPENSESHEAD.LedgerTypeId, dbo.Payments.VoucherNo, dbo.Payments.CHQ_NO, dbo.Payments.CHQ_DATE, 
                      dbo.Payments.BANK, dbo.Payments.Remarks, dbo.Branches.ClientId, dbo.Payments.ExpenseHeadId, dbo.Branches.BranchTypeId
FROM         dbo.Payments INNER JOIN
                      dbo.PaymentModes ON dbo.PaymentModes.Id = dbo.Payments.PaymentModeId INNER JOIN
                      dbo.EXPENSESHEAD ON dbo.Payments.ExpenseHeadId = dbo.EXPENSESHEAD.Id INNER JOIN
                      dbo.LedgerTypes ON dbo.EXPENSESHEAD.LedgerTypeId = dbo.LedgerTypes.Id INNER JOIN
                      dbo.Branches ON dbo.Payments.BranchId = dbo.Branches.Id

GO

