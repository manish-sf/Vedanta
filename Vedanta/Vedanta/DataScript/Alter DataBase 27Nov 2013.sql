/****** Object:  Table [dbo].[Admissions]    Script Date: 11/27/2013 14:51:15 ******/
Alter table Admissions
Add PaymentModeId	int	,
ManualReceiptNumber	nvarchar(50),
[Description] nvarchar(50)	

update Admissions
SET PaymentModeId=1

/****** Object:  View [dbo].[vw_Admissions]    Script Date: 11/27/2013 14:51:15 ******/
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
                      dbo.Batches.Id AS BatchId, A.PaymentModeId, A.ManualReceiptNumber, dbo.PaymentModes.Mode AS PaymentMode, A.Description
FROM         dbo.Admissions AS A INNER JOIN
                      dbo.Courses ON A.CourseId = dbo.Courses.Id INNER JOIN
                      dbo.vw_Students ON A.StudentId = dbo.vw_Students.ID INNER JOIN
                      dbo.PaymentModes ON A.PaymentModeId = dbo.PaymentModes.Id LEFT OUTER JOIN
                      dbo.Batches ON A.BatchId = dbo.Batches.Id LEFT OUTER JOIN
                      dbo.ComputerInterests ON A.ComputerInterestId = dbo.ComputerInterests.Id LEFT OUTER JOIN
                      dbo.ComputerKnowledgeLevels ON A.ComputerKnowledgeLevelId = dbo.ComputerKnowledgeLevels.Id LEFT OUTER JOIN
                      dbo.HowToKnowAboutUs ON A.HowToKnowAboutUsId = dbo.HowToKnowAboutUs.Id

GO



