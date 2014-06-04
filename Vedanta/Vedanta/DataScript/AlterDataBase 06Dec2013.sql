Alter Table ExpensesHead
ADD ClientId int null;
go

Update ExpensesHead
Set ClientId=3;


/****** Object:  View [dbo].[vw_ExpenseHeads]    Script Date: 12/06/2013 16:21:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[vw_ExpenseHeads]
AS
SELECT     dbo.EXPENSESHEAD.Id, dbo.EXPENSESHEAD.CODE, dbo.EXPENSESHEAD.NAME, dbo.EXPENSESHEAD.LedgerTypeId, dbo.LedgerTypes.Type AS LedgerType, 
                      dbo.EXPENSESHEAD.OP_BAL, dbo.EXPENSESHEAD.ClientId
FROM         dbo.EXPENSESHEAD LEFT OUTER JOIN
                      dbo.LedgerTypes ON dbo.EXPENSESHEAD.LedgerTypeId = dbo.LedgerTypes.Id

GO


/****** Object:  View [dbo].[vw_FeeCollections]    Script Date: 12/06/2013 16:22:28 ******/
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
                      dbo.vw_Branches.ZoneName, dbo.vw_Branches.ClientId
FROM         dbo.FeeCollections INNER JOIN
                      dbo.vw_Admissions ON dbo.FeeCollections.AdmissionId = dbo.vw_Admissions.Id INNER JOIN
                      dbo.vw_Branches ON dbo.vw_Admissions.BranchId = dbo.vw_Branches.Id LEFT OUTER JOIN
                      dbo.PaymentHeads ON dbo.FeeCollections.PaymentHeadId = dbo.PaymentHeads.Id LEFT OUTER JOIN
                      dbo.PaymentModes ON dbo.FeeCollections.PaymentModeId = dbo.PaymentModes.Id

GO


/****** Object:  View [dbo].[vw_PaymentList]    Script Date: 12/06/2013 16:23:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[vw_PaymentList]
AS
SELECT     dbo.Payments.Id, dbo.Payments.BranchId, dbo.Branches.BranchName, dbo.Payments.Date, dbo.Payments.PaidTo, dbo.PaymentModes.Mode AS PaymentMode, 
                      dbo.EXPENSESHEAD.CODE AS ExpenseHeadCode, dbo.EXPENSESHEAD.NAME AS ExpenseHeadName, dbo.LedgerTypes.Type AS LedgerType, 
                      dbo.Payments.Amounts, dbo.Payments.Narration, dbo.EXPENSESHEAD.LedgerTypeId, dbo.Payments.VoucherNo, dbo.Payments.CHQ_NO, dbo.Payments.CHQ_DATE, 
                      dbo.Payments.BANK, dbo.Payments.Remarks, dbo.Branches.ClientId
FROM         dbo.Payments INNER JOIN
                      dbo.PaymentModes ON dbo.PaymentModes.Id = dbo.Payments.PaymentModeId INNER JOIN
                      dbo.EXPENSESHEAD ON dbo.Payments.ExpenseHeadId = dbo.EXPENSESHEAD.Id INNER JOIN
                      dbo.LedgerTypes ON dbo.EXPENSESHEAD.LedgerTypeId = dbo.LedgerTypes.Id INNER JOIN
                      dbo.Branches ON dbo.Payments.BranchId = dbo.Branches.Id

GO


/****** Object:  View [dbo].[vw_Students]    Script Date: 12/06/2013 16:23:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[vw_Students]
AS
SELECT     dbo.Students.ID, dbo.Branches.BranchCode, dbo.Branches.BranchName, dbo.Students.FirstName, dbo.Students.LastName, dbo.Genders.Gender, dbo.Students.DOB, 
                      dbo.Students.Age, dbo.MaritalStatus.MaritalStatusName, dbo.Students.FatherName, dbo.Students.MotherName, dbo.Students.Street, dbo.Students.Street2, 
                      dbo.Students.City, dbo.States.Name AS State, dbo.Countries.Name AS Country, dbo.Students.Zip, dbo.Students.Phone, dbo.Students.Cell, dbo.Students.Email, 
                      dbo.Students.IsActive, dbo.Students.CreatedDate, dbo.Students.LastUpdated, dbo.Students.Mothertoungue, dbo.Students.PassportNo, dbo.Students.PAN, 
                      dbo.Students.UIDNo, dbo.Occupations.Name AS Occupation, dbo.FamilyIncomeSlots.IncomeSlot, dbo.Qualifications.Qualification, dbo.Students.MiddleName, 
                      dbo.Students.BranchId, dbo.Nationality.Name AS Nationality, dbo.Religions.Name AS Religion, dbo.Students.NationalityId, dbo.Students.ReligionId, 
                      dbo.Students.StateId, dbo.Students.CountryId, dbo.Branches.RegionalOfficeId, dbo.Branches.ZonalOfficeId, dbo.Students.Image, dbo.Students.ImageType, 
                      dbo.Students.LeavingDate, dbo.Branches.ClientId
FROM         dbo.Students INNER JOIN
                      dbo.Genders ON dbo.Students.Gender = dbo.Genders.Id INNER JOIN
                      dbo.Countries INNER JOIN
                      dbo.States ON dbo.Countries.Id = dbo.States.CountryId ON dbo.Students.StateId = dbo.States.Id INNER JOIN
                      dbo.Branches ON dbo.Students.BranchId = dbo.Branches.Id LEFT OUTER JOIN
                      dbo.Qualifications ON dbo.Students.QualificationId = dbo.Qualifications.Id INNER JOIN
                      dbo.MaritalStatus ON dbo.MaritalStatus.Id = dbo.Students.MaritalStatusId LEFT OUTER JOIN
                      dbo.Nationality ON dbo.Students.NationalityId = dbo.Nationality.Id LEFT OUTER JOIN
                      dbo.Religions ON dbo.Students.ReligionId = dbo.Religions.Id LEFT OUTER JOIN
                      dbo.Occupations ON dbo.Students.OccupationId = dbo.Occupations.Id LEFT OUTER JOIN
                      dbo.FamilyIncomeSlots ON dbo.Students.FamilyIncomeSlotId = dbo.FamilyIncomeSlots.Id

GO





/****** Object:  View [dbo].[vw_Admissions]    Script Date: 12/06/2013 16:23:25 ******/
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
                      dbo.vw_Students.ImageType, dbo.vw_Students.LeavingDate, dbo.vw_Students.ClientId
FROM         dbo.Admissions AS A INNER JOIN
                      dbo.Courses ON A.CourseId = dbo.Courses.Id INNER JOIN
                      dbo.vw_Students ON A.StudentId = dbo.vw_Students.ID INNER JOIN
                      dbo.PaymentModes ON A.PaymentModeId = dbo.PaymentModes.Id LEFT OUTER JOIN
                      dbo.Batches ON A.BatchId = dbo.Batches.Id LEFT OUTER JOIN
                      dbo.ComputerInterests ON A.ComputerInterestId = dbo.ComputerInterests.Id LEFT OUTER JOIN
                      dbo.ComputerKnowledgeLevels ON A.ComputerKnowledgeLevelId = dbo.ComputerKnowledgeLevels.Id LEFT OUTER JOIN
                      dbo.HowToKnowAboutUs ON A.HowToKnowAboutUsId = dbo.HowToKnowAboutUs.Id

GO


