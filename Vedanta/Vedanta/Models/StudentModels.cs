using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace Vedanta.Models
{
    [MetadataType(typeof(StudentsMetaData))]
    public partial class Students
    {
        public class StudentsMetaData
        {
            [Required]
            [DataType(DataType.Text)]
            [DisplayName("Branch")]
            public string BranchId { get; set; }


            [Required]
            [DataType(DataType.Text)]
            [DisplayName("First Name")]
            public string FirstName { get; set; }


            [DataType(DataType.Text)]
            [DisplayName("Middle Name")]
            public string MiddleName { get; set; }


            [DataType(DataType.Text)]
            [DisplayName("Last Name")]
            public string LastName { get; set; }

            [Required]
            [DataType(DataType.Text)]
            [DisplayName("Gender")]
            public string Gender { get; set; }

            [Required]
            [DataType(DataType.Text)]
            [DisplayName("Marital Status")]
            public string MaritalStatusId { get; set; }


            [DataType(DataType.Date)]
            [DisplayName("Date Of Birth")]
            public string DOB { get; set; }


            [DataType(DataType.Text)]
            [DisplayName("Father/Guardian Name")]
            public string FatherName { get; set; }

            [DataType(DataType.Text)]
            [DisplayName("Mother Name")]
            public string MotherName { get; set; }

            [Required]
            [DataType(DataType.Text)]
            [DisplayName("Street Address")]
            public string Street { get; set; }


            [DataType(DataType.Text)]
            [DisplayName("Address Line 2")]
            public string Street2 { get; set; }

            [Required]
            [DataType(DataType.Text)]
            [DisplayName("City")]
            public string City { get; set; }

            [Required]
            [DataType(DataType.Text)]
            [DisplayName("State")]
            public string StateId { get; set; }


            [DataType(DataType.Text)]
            [DisplayName("Country")]
            public string CountryId { get; set; }

            [DataType(DataType.Text)]
            [DisplayName("Zip Code")]
            public string Zip { get; set; }


            [DataType(DataType.Text)]
            [DisplayName("Phone")]
            public string Phone { get; set; }


            [DataType(DataType.Text)]
            [DisplayName("Mobile")]
            public string Cell { get; set; }

            [DataType(DataType.Text)]
            [DisplayName("Email")]
            public string Email { get; set; }


            [DataType(DataType.Text)]
            [DisplayName("PAN")]
            public string PAN { get; set; }

            [DataType(DataType.Text)]
            [DisplayName("Passport No.")]
            public string PassportNo { get; set; }

            [DataType(DataType.Text)]
            [DisplayName("Aadhar Number")]
            public string UIDNo { get; set; }

            [Required]
            [DataType(DataType.Text)]
            [DisplayName("Highest Qualification")]
            public string QualificationId { get; set; }

            [DataType(DataType.Text)]
            [DisplayName("Nationality")]
            public string NationalityId { get; set; }

            [DataType(DataType.Text)]
            [DisplayName("Religion")]
            public string ReligionId { get; set; }

            [DataType(DataType.Text)]
            [DisplayName("Mothertoungue")]
            public string Mothertoungue { get; set; }

            [DataType(DataType.Text)]
            [DisplayName("Family Income Per Month")]
            public string FamilyIncomeSlotId { get; set; }

            [DataType(DataType.Text)]
            [DisplayName("Occupation")]
            public string OccupationId { get; set; }
        }
    }

    [MetadataType(typeof(AdmissionsMetaData))]
    public partial class Admissions
    {
        public class AdmissionsMetaData
        {
            [Required]
            [DataType(DataType.Text)]
            [DisplayName("Registration Number")]
            public string RegistrationNumber { get; set; }

            [Required]
            [DataType(DataType.Text)]
            [DisplayName("Course")]
            public string CourseId { get; set; }

            [DataType(DataType.Text)]
            [DisplayName("Batch")]
            public string BatchId { get; set; }

            [Required]
            [DataType(DataType.Text)]
            [DisplayName("Admission Date")]
            public string AdmissionDate { get; set; }

            [Required]
            [DataType(DataType.Text)]
            [DisplayName("Roll Number")]
            public string RollNumber { get; set; }

            [DataType(DataType.Text)]
            [DisplayName("Batch Start Date")]
            public string BatchStartDate { get; set; }

            [Required]
            [DataType(DataType.Text)]
            [DisplayName("Down Payment")]
            public string DownPayment { get; set; }

            [Required]
            [DataType(DataType.Text)]
            [DisplayName("Discount Amount")]
            public string MaximumDiscountAmount { get; set; }

            [DataType(DataType.Text)]
            [DisplayName("Next Installment Date")]
            public string NextPaymentDueDate { get; set; }

            [DataType(DataType.Text)]
            [DisplayName("Do You Know Computer")]
            public string IsComputerKnown { get; set; }

            [DataType(DataType.Text)]
            [DisplayName("Computer Knowledge Level")]
            public string ComputerKnowledgeLevelId { get; set; }

            [DataType(DataType.Text)]
            [DisplayName("Interested in computer for")]
            public string ComputerInterestId { get; set; }

            [DataType(DataType.Text)]
            [DisplayName("How to know about us")]
            public string HowToKnowAboutUsId { get; set; }

            [DataType(DataType.Text)]
            [DisplayName("Need Job Assistance")]
            public string NeedJobAssistance { get; set; }

            [DataType(DataType.Text)]
            [DisplayName("Remarks")]
            public string Location { get; set; }

            [Required]
            [DataType(DataType.Text)]
            [DisplayName("Payment Mode")]
            public string PaymentModeId { get; set; }

            [DataType(DataType.Text)]
            [DisplayName("Cheque/DD Details")]
            public string Description { get; set; }

            [Required]
            [DataType(DataType.Text)]
            [DisplayName("Manual Receipt Number")]
            public string ManualReceiptNumber { get; set; }
        }
    }

    [MetadataType(typeof(FeeCollectionsMetaData))]
    public partial class FeeCollections
    {
        public class FeeCollectionsMetaData
        {
            [Required]
            [DataType(DataType.Currency)]
            [DisplayName("Amount")]
            public string Amount { get; set; }

            [Required]
            [DataType(DataType.Text)]
            [DisplayName("Payment Date")]
            public string PaymentDate { get; set; }

            [Required]
            [DataType(DataType.Text)]
            [DisplayName("Payment Head")]
            public string PaymentHeadId { get; set; }

            [Required]
            [DataType(DataType.Text)]
            [DisplayName("Payment Mode")]
            public string PaymentModeId { get; set; }

            [DataType(DataType.Text)]
            [DisplayName("Cheque/DD Details")]
            public string Description { get; set; }

            [Required]
            [DataType(DataType.Text)]
            [DisplayName("Manual Receipt Number")]
            public string ManualreceiptNumber { get; set; }
        }
    }

    public class NewAdmission
    {
        Students _newStudent;

        public Students NewStudent
        {
            get { return _newStudent; }
            set { _newStudent = value; }
        }
        Admissions _newAdm;

        public Admissions NewAdm
        {
            get { return _newAdm; }
            set { _newAdm = value; }
        }

        FeeCollections _newFees;

        public FeeCollections NewFees
        {
            get { return _newFees; }
            set { _newFees = value; }
        }
    }

    public class FeeReceipts
    {
        vw_Admissions admissionDetails;

        public vw_Admissions AdmissionDetails
        {
            get { return admissionDetails; }
            set { admissionDetails = value; }
        }
        vw_FeeCollections feeCollectionDetails;

        public vw_FeeCollections FeeCollectionDetails
        {
            get { return feeCollectionDetails; }
            set { feeCollectionDetails = value; }
        }
    }



    public class StudentModels
    {
        public static byte[] GetStudentPhoto(int studentId)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                var q = from student in ve.Students
                        where student.ID == studentId
                        select student.Image;

                byte[] cover = q.First();

                return cover;
            }
        }

        public static int ProocessNewStudentAddmission(Students newStudent, Admissions newAdmission, FeeCollections newFeeCollection)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                Students oldStudent = ve.Students.FirstOrDefault(st => st.ID == newStudent.ID);

                int newStudentId = 0; int oldStudentId = 0;
                //Add A New Student Record in DataBase if that student does not exists
                if (oldStudent == null)
                {

                    newStudent.CreatedDate = DateTime.Now.Date;
                    ve.AddToStudents(newStudent);
                    ve.SaveChanges();
                    newStudentId = newStudent.ID;
                }
                else
                {
                    oldStudentId = oldStudent.ID;
                }

                //If Student is already enrolled with us then no need to add new record for same student 
                if (newStudentId == 0 && oldStudentId > 0)
                    newStudentId = oldStudentId;

                if (newStudentId > 0)
                {
                    newAdmission.StudentId = newStudentId;

                    Admissions oldAdmission = ve.Admissions.FirstOrDefault(ad => ad.StudentId == newStudentId && ad.CourseId == newAdmission.CourseId);
                    if (oldAdmission == null)
                    {
                        ve.AddToAdmissions(newAdmission);
                        int admResult = ve.SaveChanges();
                        return admResult;
                        //if (admResult > 0)   //Admission of Student done successfully.
                        //{
                        //    newFeeCollection.AdmissionId = newAdmission.Id;
                        //    ve.AddToFeeCollections(newFeeCollection);
                        //    return ve.SaveChanges(); //Admission Fee Paid successfully.
                        //}
                        //else
                        //    return -2;
                    }
                    else
                    {
                        return -2; //Student Record Entered but failed to take Admission of student.
                    }
                }
                else
                    return -1; //Student Record not entered;
            }
        }

        public static int UpdateStudentDetails(Students newStudent)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                Students oldStudent = ve.Students.FirstOrDefault(st => st.ID == newStudent.ID);

                if (oldStudent == null)
                    return -1;//Student record not found.

                //Updating Student Details
                //oldStudent.Age = newStudent.Age;
                //oldStudent.Cell = newStudent.Cell;
                //oldStudent.City = newStudent.City;
                //oldStudent.CountryId = newStudent.CountryId;
                //oldStudent.DOB = newStudent.DOB;
                //oldStudent.Email = newStudent.Email;
                //oldStudent.FamilyIncomeSlotId = newStudent.FamilyIncomeSlotId;
                //oldStudent.FatherName = newStudent.FatherName;
                //oldStudent.FirstName = newStudent.FirstName;
                //oldStudent.Gender = newStudent.Gender;
                //oldStudent.LastName = newStudent.LastName;
                //oldStudent.MaritalStatusId = newStudent.MaritalStatusId;
                //oldStudent.MiddleName = newStudent.MiddleName;
                //oldStudent.MotherName = newStudent.MotherName;
                //oldStudent.Mothertoungue = newStudent.Mothertoungue;
                //oldStudent.Nationality = newStudent.Nationality;
                //oldStudent.OccupationId = newStudent.OccupationId;
                //oldStudent.PAN = newStudent.PAN;
                //oldStudent.PassportNo = newStudent.PassportNo;
                //oldStudent.Phone = newStudent.Phone;
                //oldStudent.QualificationId = newStudent.QualificationId;
                //oldStudent.Religion = newStudent.Religion;
                //oldStudent.StateId = newStudent.StateId;
                //oldStudent.Street = newStudent.Street;
                //oldStudent.Street2 = newStudent.Street2;
                //oldStudent.UIDNo = newStudent.UIDNo;
                //oldStudent.Zip = newStudent.Zip;

                var updatedStudents = ve.ApplyCurrentValues(oldStudent.GetType().Name, newStudent);
                return ve.SaveChanges();
                //return 1;
                //return ve.AcceptAllChanges(oldStudent.GetType().Name, newStudent);
            }
        }

        public static int UpdateAdmissionDetails(Admissions newAdmission)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                Admissions oldAdmission = ve.Admissions.FirstOrDefault(st => st.Id == newAdmission.Id);
                if (oldAdmission == null)
                    return -1;//Admission record not found.

                FeeCollections fee = ve.FeeCollections.FirstOrDefault(fe => fe.AdmissionId == newAdmission.Id && fe.ManualreceiptNumber.Equals(oldAdmission.ManualReceiptNumber, StringComparison.OrdinalIgnoreCase));
                if (fee != null)
                {
                    fee.Amount = newAdmission.DownPayment;
                    fee.Description = newAdmission.Description;
                    fee.TotalReceived = newAdmission.DownPayment;
                    fee.PaymentDate = newAdmission.AdmissionDate;
                    fee.PaymentHeadId = 1;
                    fee.PaymentModeId = newAdmission.PaymentModeId;
                }
                newAdmission.StudentId = oldAdmission.StudentId;
                var updatedAdmission = ve.ApplyCurrentValues(oldAdmission.GetType().Name, newAdmission);
                return ve.SaveChanges();
            }
        }

        public static int UpdateFeeCollection(FeeCollections newFee)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                FeeCollections oldFee = ve.FeeCollections.FirstOrDefault(st => st.Id == newFee.Id);

                if (oldFee == null)
                    return -1;//Admission record not found.
                newFee.AdmissionId = oldFee.AdmissionId;
                var updatedFee = ve.ApplyCurrentValues(oldFee.GetType().Name, newFee);
                return ve.SaveChanges();
            }
        }


        public static List<vw_Student_Lists> GetStudentsList()
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                return (from stds in ve.vw_Student_Lists
                        select stds).ToList();

            }
        }


        public static List<vw_Student_Lists> GetStudentsList(int branchId, int? clientId)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                if (clientId != null)
                    return (from stds in ve.vw_Student_Lists
                            where stds.BranchId == branchId && stds.ClientId == (int)clientId
                            select stds).ToList();
                else
                    return (from stds in ve.vw_Student_Lists
                            where stds.BranchId == branchId
                            select stds).ToList();

            }
        }

        public static List<vw_Student_Lists> GetClientStudentsList(int clientId)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                return (from stds in ve.vw_Student_Lists
                        where stds.ClientId == clientId
                        select stds).ToList();

            }
        }

        public static List<vw_Admissions> GetStudentsListByBatchId(int batchId)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                return (from stds in ve.vw_Admissions
                        where stds.BatchId == batchId
                        select stds).ToList();
            }
        }

        public static List<vw_Admissions> GetStudentsListByCourseId(int courseId)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                return (from stds in ve.vw_Admissions
                        where stds.CourseId == courseId
                        select stds).ToList();
            }
        }

        public static List<vw_Student_Lists> GetStudentsList(string searchText, int? clientId, int? branchId)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                List<vw_Student_Lists> evar = new List<vw_Student_Lists>();

                if (clientId == null && branchId == null)
                    evar = (from empls in ve.vw_Student_Lists
                            where (
                              empls.FirstName.StartsWith(searchText)
                             || empls.LastName.StartsWith(searchText)
                             || empls.City.StartsWith(searchText)
                             || empls.BranchName.StartsWith(searchText)
                             || empls.BranchCode.StartsWith(searchText)
                             || empls.BranchName.StartsWith(searchText)
                             || empls.BranchCode.StartsWith(searchText)
                             || empls.Courses.Contains(searchText)
                             || empls.State.StartsWith(searchText)
                             )
                            select empls).ToList();
                else
                {
                    if (branchId == null)
                        evar = (from empls in ve.vw_Student_Lists
                                where empls.ClientId == clientId && (
                             empls.FirstName.StartsWith(searchText)
                                 || empls.LastName.StartsWith(searchText)
                                 || empls.City.StartsWith(searchText)
                                 || empls.BranchName.StartsWith(searchText)
                                 || empls.BranchCode.StartsWith(searchText)
                                 || empls.BranchName.StartsWith(searchText)
                                 || empls.BranchCode.StartsWith(searchText)
                                 || empls.Courses.Contains(searchText)
                                 || empls.State.StartsWith(searchText)
                                 )
                                select empls).ToList();
                    else
                        evar = (from empls in ve.vw_Student_Lists
                                where empls.ClientId == clientId && empls.BranchId == branchId && (
                             empls.FirstName.StartsWith(searchText)
                                 || empls.LastName.StartsWith(searchText)
                                 || empls.City.StartsWith(searchText)
                                 || empls.BranchName.StartsWith(searchText)
                                 || empls.BranchCode.StartsWith(searchText)
                                 || empls.BranchName.StartsWith(searchText)
                                 || empls.BranchCode.StartsWith(searchText)
                                 || empls.Courses.Contains(searchText)
                                 || empls.State.StartsWith(searchText)
                                 )
                                select empls).ToList();

                }

                return evar;
            }
        }

        public class SearchedStudents
        {
            int _id;

            public int Id
            {
                get { return _id; }
                set { _id = value; }
            }
            string _name;

            public string Name
            {
                get { return _name; }
                set { _name = value; }
            }

            string _fatherName;

            public string FatherName
            {
                get { return _fatherName; }
                set { _fatherName = value; }
            }
            string _motherName;

            public string MotherName
            {
                get { return _motherName; }
                set { _motherName = value; }
            }


            string _city;

            public string City
            {
                get { return _city; }
                set { _city = value; }
            }
            string _state;

            public string State
            {
                get { return _state; }
                set { _state = value; }
            }
            string _branch;

            public string Branch
            {
                get { return _branch; }
                set { _branch = value; }
            }

            string _courseName;

            public string CourseName
            {
                get { return _courseName; }
                set { _courseName = value; }
            }

            string _registrationNumber;

            public string RegistrationNumber
            {
                get { return _registrationNumber; }
                set { _registrationNumber = value; }
            }
        }

        public static List<SearchedStudents> GetSearchedStudentsList(string searchText)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                List<SearchedStudents> empAll =
                    (from empls in ve.vw_Admissions
                     where (
                  empls.RegistrationNumber.StartsWith(searchText)
                      || empls.FirstName.StartsWith(searchText)
                      || empls.LastName.StartsWith(searchText)
                      || empls.City.StartsWith(searchText)
                      || empls.BranchName.StartsWith(searchText)
                      || empls.BranchCode.StartsWith(searchText)
                      || empls.BranchName.StartsWith(searchText)
                      || empls.BranchCode.StartsWith(searchText)
                      || empls.CourseCode.StartsWith(searchText)
                      || empls.CourseName.StartsWith(searchText)
                      || empls.State.StartsWith(searchText)
                      )
                     select new SearchedStudents
                     {
                         Name = (empls.FirstName + " " + (empls.MiddleName ?? string.Empty) + " " + (empls.LastName ?? string.Empty)),
                         City = empls.City,
                         State = empls.State,
                         Branch = empls.BranchName,
                         CourseName = empls.CourseName,
                         FatherName = empls.FatherName,
                         RegistrationNumber = empls.RegistrationNumber,
                         MotherName = empls.MotherName,
                         Id = empls.Id

                     }).ToList();

                return empAll;
            }
        }

        public static bool RegistrationExists(string RegNumber, int clientId)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                var a = ve.vw_Admissions.FirstOrDefault(st => RegNumber.Equals(st.RegistrationNumber) && st.ClientId == clientId);
                if (a != null)
                    return true;
                else
                    return false;
            }
        }

        public static Students GetStudentsByStudentId(int studentId)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                return ve.Students.FirstOrDefault(st => st.ID == studentId);
            }
        }

        public static vw_Students GetStudentDetailsByStudentId(int studentId)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                return ve.vw_Students.FirstOrDefault(st => st.ID == studentId);
            }
        }

        public static Admissions GetAdmissionById(int id)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                return ve.Admissions.FirstOrDefault(st => st.Id == id);
            }
        }

        public static vw_Admissions GetAdmissionDetailsById(int admissionId)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                return ve.vw_Admissions.FirstOrDefault(st => st.Id == admissionId);
            }
        }

        public static vw_Admissions GetAdmissionDetailsByReg_Number(string regNumber)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                return ve.vw_Admissions.FirstOrDefault(st => regNumber.Equals(st.RegistrationNumber));
            }
        }

        public static List<vw_FeeCollections> GetStudentsPaidFeesByAdmissionId(int admissionId)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                return (from stds in ve.vw_FeeCollections
                        where stds.AdmissionId == admissionId
                        select stds).ToList();
            }
        }


        public static List<vw_FeeCollections> GetStudentsPaidFeesByReg_Number(string regNumber)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                if (!string.IsNullOrEmpty(regNumber))
                    return (from stds in ve.vw_FeeCollections
                            where stds.RegistrationNumber.Equals(regNumber)
                            select stds).ToList();
                else
                    return ve.vw_FeeCollections.ToList();
            }
        }

        public static List<vw_FeeCollections> GetFeeCollections(int clientId, int? branchId, int? regionId, int? zoneId, bool isBranchSession = false)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                bool canSeeFrenchisesRecord = false;
                ClientSettings clientSettings = ve.ClientSettings.FirstOrDefault(cs => cs.ClientId == clientId);
                if (clientSettings != null)
                    canSeeFrenchisesRecord = clientSettings.CanSeeFrenchisesAccount ?? true;

                List<vw_FeeCollections> feeCols = new List<vw_FeeCollections>();

                //if (canSeeFrenchisesRecord == true)
                feeCols = ve.vw_FeeCollections.Where(fc => fc.ClientId == clientId).ToList();
                //else
                //    feeCols = ve.vw_FeeCollections.Where(fc => fc.ClientId == clientId && (fc.BranchId == null || (fc.BranchId != null && fc.BranchTypeId == 1))).ToList();


                //if (isBranchSession == true || canSeeFrenchisesRecord == true)

                if (zoneId == null)
                {
                    if (regionId == null)
                    {
                        if (branchId == null)
                        {
                            return feeCols.Where(cs => cs.BranchId == null).ToList();
                        }
                        if (isBranchSession == true || canSeeFrenchisesRecord)
                            return feeCols.Where(fc => fc.BranchId == (int)branchId).ToList();
                        else
                            return feeCols.Where(fc => fc.BranchId == (int)branchId && fc.BranchTypeId == 1).ToList();
                    }
                    else
                    {
                        if (branchId != null)
                        {
                            if (isBranchSession == true || canSeeFrenchisesRecord)
                            {
                                return feeCols.Where(fc => fc.BranchId == (int)branchId && fc.RegionalOfficeId == (int)regionId).ToList();
                            }
                            else return feeCols.Where(fc => fc.BranchId == (int)branchId && fc.BranchTypeId == 1 && fc.RegionalOfficeId == (int)regionId).ToList();
                        }
                        return feeCols.Where(fc => fc.RegionalOfficeId == (int)regionId).ToList();
                    }

                }
                else
                {
                    if (regionId != null)
                    {
                        if (branchId != null)
                        {
                            if (isBranchSession == true || canSeeFrenchisesRecord)
                                return feeCols.Where(fc => fc.BranchId == (int)branchId && fc.RegionalOfficeId == (int)regionId).ToList();
                            else
                                return feeCols.Where(fc => fc.BranchId == (int)branchId && fc.BranchTypeId == 1 && fc.RegionalOfficeId == (int)regionId).ToList();
                        }

                        return feeCols.Where(fc => fc.RegionalOfficeId == (int)regionId).ToList();
                    }
                    else
                    {
                        return feeCols.Where(fc => fc.ZonalOfficeId == (int)zoneId).ToList();
                    }
                }
            }
        }

        public static List<vw_FeeCollections> GetFeeCollections(DateTime fromDate, DateTime toDate, int clientId, int? branchId, int? regionId, int? zoneId, bool isBranchSession = false)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                bool canSeeFrenchisesRecord = false;
                ClientSettings clientSettings = ve.ClientSettings.FirstOrDefault(cs => cs.ClientId == clientId);
                if (clientSettings != null)
                    canSeeFrenchisesRecord = clientSettings.CanSeeFrenchisesAccount ?? true;

                List<vw_FeeCollections> feeCols = new List<vw_FeeCollections>();

                // if (canSeeFrenchisesRecord == true)
                feeCols = ve.vw_FeeCollections.Where(fc => fc.ClientId == clientId && fc.PaymentDate.Value >= fromDate.Date && fc.PaymentDate.Value <= toDate.Date).ToList();
                // else
                //   feeCols = ve.vw_FeeCollections.Where(fc => fc.ClientId == clientId && fc.PaymentDate.Value >= fromDate.Date && fc.PaymentDate.Value <= toDate.Date && (fc.BranchId == null || (fc.BranchId != null && fc.BranchTypeId == 1))).ToList();


                if (zoneId == null)
                {
                    if (regionId == null)
                    {
                        if (branchId == null)
                        {
                            return feeCols.Where(cs => cs.BranchId == null).ToList();
                        }
                        else
                        {
                            if (isBranchSession == true || canSeeFrenchisesRecord == true)
                                return feeCols.Where(fc => fc.BranchId == (int)branchId).ToList();
                            else
                                return feeCols.Where(fc => fc.BranchId == (int)branchId && fc.BranchTypeId == 1).ToList();
                        }
                    }
                    else
                    {
                        if (branchId != null)
                        {
                            if (isBranchSession == true || canSeeFrenchisesRecord == true)
                            {
                                return feeCols.Where(fc => fc.BranchId == (int)branchId && fc.RegionalOfficeId == (int)regionId).ToList();
                            }
                            else return feeCols.Where(fc => fc.BranchId == (int)branchId && fc.BranchTypeId == 1 && fc.RegionalOfficeId == (int)regionId).ToList();
                        }
                        return feeCols.Where(fc => fc.RegionalOfficeId == (int)regionId).ToList();
                    }

                }
                else
                {
                    if (regionId != null)
                    {
                        if (branchId != null)
                        {
                            if (isBranchSession == true || canSeeFrenchisesRecord == true)
                                return feeCols.Where(fc => fc.BranchId == (int)branchId && fc.RegionalOfficeId == (int)regionId).ToList();
                            else
                                return feeCols.Where(fc => fc.BranchId == (int)branchId && fc.BranchTypeId == 1 && fc.RegionalOfficeId == (int)regionId).ToList();
                        }

                        return feeCols.Where(fc => fc.RegionalOfficeId == (int)regionId).ToList();
                    }
                    else
                    {
                        return feeCols.Where(fc => fc.ZonalOfficeId == (int)zoneId).ToList();
                    }
                }
            }
        }

        /// <summary>
        /// Returns All Admission
        /// </summary>
        /// <returns></returns>
        public static List<vw_Admissions> GetNewAdmissionList()
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                return ve.vw_Admissions.ToList();
            }
        }


        public static List<vw_Admissions> GetNewAdmissionListByBatchId(int batchId)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                return ve.vw_Admissions.Where(ad => ad.BatchId == batchId && (ad.IsActive == true || ad.IsActive == null)).ToList();
            }
        }


        /// <summary>
        /// returns New Admissions for a given date Range ,zones,regions and branch id
        /// </summary>
        /// <param name="fromDate"></param>
        /// <param name="toDate"></param>
        /// <param name="zoneId"></param>
        /// <param name="regionId"></param>
        /// <param name="branchId"></param>
        /// <returns></returns>
        public static List<vw_Admissions> GetNewAdmissionList(DateTime fromDate, DateTime toDate, int clientId, int? branchId, int? regionId, int? zoneId)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {

                List<vw_Admissions> admLists = ve.vw_Admissions.Where(fc => fc.ClientId == clientId && fc.AdmissionDate.Value >= fromDate.Date && fc.AdmissionDate.Value <= toDate.Date).ToList();

                if (zoneId == null)
                {
                    if (regionId == null)
                    {
                        if (branchId == null)
                        {
                            return admLists;
                        }
                        return admLists.Where(fc => fc.BranchId == (int)branchId).ToList();
                    }
                    else
                    {
                        if (branchId != null)
                        {
                            return admLists.Where(fc => fc.BranchId == (int)branchId && fc.RegionalOfficeId == (int)regionId).ToList();
                        }
                        return admLists.Where(fc => fc.RegionalOfficeId == (int)regionId).ToList();
                    }

                }
                else
                {
                    if (regionId != null)
                    {
                        if (branchId != null)
                        {
                            return admLists.Where(fc => fc.BranchId == (int)branchId && fc.RegionalOfficeId == (int)regionId && fc.ZonalOfficeId == zoneId).ToList();
                        }
                        return admLists.Where(fc => fc.RegionalOfficeId == (int)regionId && fc.ZonalOfficeId == zoneId).ToList();
                    }
                    else
                    {
                        if (branchId != null)
                        {
                            return admLists.Where(fc => fc.BranchId == (int)branchId && fc.ZonalOfficeId == zoneId).ToList();
                        }
                        return admLists.Where(fc => fc.ZonalOfficeId == (int)zoneId).ToList();
                    }
                }
            }
        }

        public static int PayStudentFees(FeeCollections newFees)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                ve.AddToFeeCollections(newFees);
                return ve.SaveChanges();
            }
        }

        public static vw_FeeCollections GetFeePaidDetailsById(int Id)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                return ve.vw_FeeCollections.FirstOrDefault(fc => fc.Id == Id);
            }
        }

        public static FeeCollections GetFeesCollectionById(int id)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                return ve.FeeCollections.FirstOrDefault(st => st.Id == id);
            }
        }
    }
}