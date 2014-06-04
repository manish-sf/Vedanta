using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Vedanta.Models;
using System.IO;
using System.Web.Security;

namespace Vedanta.Controllers
{
    public class StudentsController : Controller
    {
        //
        // GET: /Students/

        public ActionResult Index()
        {
            return View();
        }

        //
        // GET: /Students/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /Students/Create
        [Authorize(Roles = "SuperAdmin,Admin,AreaManager,CenterManager")]
        public ActionResult New(int? id)
        {
            if (Session["ClientId"] != null)
            {
                if (!Roles.IsUserInRole("CenterManager"))
                {
                    ViewData["Branches"] = Utilities.GetBranchNameList((int)Session["ClientId"]);
                    ViewData["Courses"] = Utilities.GetCourseNameList((int)Session["ClientId"]);
                    ViewData["CoursesBrands"] = Utilities.GetCourseBrandNameList((int)Session["ClientId"], null);
                    ViewData["Batches"] = Utilities.GetBatchNameList((int)Session["ClientId"]);
                }
                else
                {
                    if (Session["BranchId"] != null)
                    {
                        ViewData["Branches"] = Utilities.GetBlankBranchNameList();
                        ViewData["Courses"] = Utilities.GetCourseNameList((int)Session["ClientId"], (int)Session["BranchId"]);
                        ViewData["CoursesBrands"] = Utilities.GetCourseBrandNameList((int)Session["ClientId"], (int)Session["BranchId"]);
                        ViewData["Batches"] = Utilities.GetBatchNameList((int)Session["ClientId"], (int)Session["BranchId"]);
                    }
                    else
                    {
                        return RedirectToAction("LogOff", "Account");
                    }
                }

                if (id != null)
                {
                    NewAdmission newAdmission = new NewAdmission();
                    Students existingStudent = StudentModels.GetStudentsByStudentId((int)id);
                    if (existingStudent != null)
                    {
                        newAdmission.NewStudent = existingStudent;
                        ViewData.Model = newAdmission;
                    }
                }
                ViewData["HowToKnowAboutUs"] = Utilities.GetHowToKnowAboutUsNamesList();
                ViewData["ComputerKnoledgeLevels"] = Utilities.GetComputerKnowledgeLevelNameList();
                ViewData["ComputerInterests"] = Utilities.GetComputerInterestNameList();
                ViewData["Genders"] = Utilities.GetGenderNameList();
                ViewData["MaritalStstus"] = Utilities.GetMaritalStatusList();
                ViewData["Qualifications"] = Utilities.GetQualificationList();
                ViewData["Occupations"] = Utilities.GetOccupationNamesList();
                ViewData["FamilyIncomeSlots"] = Utilities.GetFamilyIncomeSlotList();
                ViewData["States"] = Utilities.GetStateList(Utilities.IndiaCountryCode);
                ViewData["Countries"] = Utilities.GetCountryList();
                ViewData["Nationalities"] = Utilities.GetNationalityNameList();
                ViewData["Religions"] = Utilities.GetReligionNameList();
                ViewData["PaymentModes"] = Utilities.GetPaymentModesNameList();
                ViewData["PaymentHeads"] = Utilities.GetPaymentHeadsNameList();
                ViewData["YesNo"] = Utilities.GetYesNoList();
                ViewData["Next"] = null;
                return View();
            }
            else
            {
                if (Roles.IsUserInRole("SuperAdmin"))
                    return RedirectToAction("List", "Client");
                else
                {
                    FormsAuthentication.SignOut();
                    return RedirectToAction("LogOff", "Account");
                }
            }

        }

        //
        // POST: /Students/Create

        [HttpPost]
        public ActionResult New(string Submit, string chkFeeOneTime, NewAdmission newAdmission, HttpPostedFileBase agentPhoto)
        {


            if (Session["ClientId"] != null)
            {
                ViewData["HowToKnowAboutUs"] = Utilities.GetHowToKnowAboutUsNamesList();
                ViewData["ComputerKnoledgeLevels"] = Utilities.GetComputerKnowledgeLevelNameList();
                ViewData["ComputerInterests"] = Utilities.GetComputerInterestNameList();
                ViewData["Genders"] = Utilities.GetGenderNameList();
                ViewData["MaritalStstus"] = Utilities.GetMaritalStatusList();
                ViewData["Qualifications"] = Utilities.GetQualificationList();
                ViewData["Occupations"] = Utilities.GetOccupationNamesList();
                ViewData["FamilyIncomeSlots"] = Utilities.GetFamilyIncomeSlotList();
                ViewData["States"] = Utilities.GetStateList(Utilities.IndiaCountryCode);
                ViewData["Countries"] = Utilities.GetCountryList();
                ViewData["Nationalities"] = Utilities.GetNationalityNameList();
                ViewData["Religions"] = Utilities.GetReligionNameList();
                ViewData["PaymentModes"] = Utilities.GetPaymentModesNameList();
                ViewData["PaymentHeads"] = Utilities.GetPaymentHeadsNameList();
                ViewData["YesNo"] = Utilities.GetYesNoList();
                ViewData["Next"] = null;

                if (!Roles.IsUserInRole("CenterManager"))
                {
                    ViewData["Branches"] = Utilities.GetBranchNameList((int)Session["ClientId"]);
                    ViewData["Courses"] = Utilities.GetCourseNameList((int)Session["ClientId"]);
                    ViewData["CoursesBrands"] = Utilities.GetCourseBrandNameList((int)Session["ClientId"], null);
                    ViewData["Batches"] = Utilities.GetBatchNameList((int)Session["ClientId"]);
                }
                else
                {
                    if (Session["BranchId"] != null)
                    {
                        ViewData["Branches"] = Utilities.GetBlankBranchNameList();
                        ViewData["Courses"] = Utilities.GetCourseNameList((int)Session["ClientId"], (int)Session["BranchId"]);
                        ViewData["CoursesBrands"] = Utilities.GetCourseBrandNameList((int)Session["ClientId"], (int)Session["BranchId"]);
                        ViewData["Batches"] = Utilities.GetBatchNameList((int)Session["ClientId"], (int)Session["BranchId"]);
                    }
                    else
                    {
                        return RedirectToAction("LogOff", "Account");
                    }
                }
                switch (Submit.ToLower())
                {
                    case "next>>":
                        if (!ModelState.IsValid)
                        {
                            ViewData["Next"] = null;
                            ApplicationMessages msg = new ApplicationMessages("Invalid entry.", MessageType.Error);
                            ViewData["Message"] = msg;
                            return View();
                        }
                        ViewData.Model = newAdmission;
                        ViewData["Next"] = true;
                        break;
                    case "submit":
                        if (Session["BranchId"] != null)
                            newAdmission.NewStudent.BranchId = (int)Session["BranchId"];

                        if (ModelState.ContainsKey("NewStudent.BranchId"))
                            ModelState["NewStudent.BranchId"].Errors.Clear();
                        var errors = ModelState.Values.SelectMany(v => v.Errors);
                        if (!ModelState.IsValid || newAdmission.NewAdm == null)
                        {
                            // ViewData["Next"] = null;
                            ApplicationMessages msg = new ApplicationMessages("Invalid entry.", MessageType.Error);
                            ViewData["Message"] = msg;
                            return View();
                        }

                        if (agentPhoto != null)
                        {
                            if (agentPhoto.ContentLength > 0)
                            {
                                Int32 length = agentPhoto.ContentLength;
                                byte[] tempImage = new byte[length];
                                agentPhoto.InputStream.Read(tempImage, 0, length);
                                newAdmission.NewStudent.Image = tempImage;// file.InputStream;
                                newAdmission.NewStudent.ImageType = agentPhoto.ContentType;
                            }
                        }

                        int result = StudentModels.ProocessNewStudentAddmission(newAdmission.NewStudent, newAdmission.NewAdm, newAdmission.NewFees);
                        if (result > 0)
                        {
                            Session["CurrentAdmId"] = newAdmission.NewAdm.Id;
                            return RedirectToAction("AdmReceipt");
                            // ApplicationMessages msg = new ApplicationMessages("Admission completed  successfully.", MessageType.Success);
                            // ViewData["Message"] = msg;
                            // return View();
                        }
                        else if (result == -2)
                        {
                            ApplicationMessages msg = new ApplicationMessages("Student Record Entered but failed to take Admission of student.", MessageType.Error);
                            ViewData["Message"] = msg;
                            return View();
                        }
                        else
                        {
                            ApplicationMessages msg = new ApplicationMessages("Student Record not entered.", MessageType.Faild);
                            ViewData["Message"] = msg;
                            return View();
                        }
                }
                return View();
            }
            else
            {
                if (Roles.IsUserInRole("SuperAdmin"))
                    return RedirectToAction("List", "Client");
                else
                {
                    FormsAuthentication.SignOut();
                    return RedirectToAction("LogOff", "Account");
                }
            }

        }

        //
        // GET: /Students/Edit/5

        public ActionResult Edit(int id)
        {
            if (Session["ClientId"] != null)
            {
                //ViewData["HowToKnowAboutUs"] = Utilities.GetHowToKnowAboutUsNamesList();
                //ViewData["ComputerKnoledgeLevels"] = Utilities.GetComputerKnowledgeLevelNameList();
                // ViewData["ComputerInterests"] = Utilities.GetComputerInterestNameList();
                ViewData["Genders"] = Utilities.GetGenderNameList();
                ViewData["MaritalStstus"] = Utilities.GetMaritalStatusList();
                ViewData["Qualifications"] = Utilities.GetQualificationList();
                ViewData["Occupations"] = Utilities.GetOccupationNamesList();
                ViewData["FamilyIncomeSlots"] = Utilities.GetFamilyIncomeSlotList();
                ViewData["States"] = Utilities.GetStateList(Utilities.IndiaCountryCode);
                ViewData["Countries"] = Utilities.GetCountryList();
                ViewData["Nationalities"] = Utilities.GetNationalityNameList();
                ViewData["Religions"] = Utilities.GetReligionNameList();
                //ViewData["PaymentModes"] = Utilities.GetPaymentModesNameList();
                //ViewData["PaymentHeads"] = Utilities.GetPaymentHeadsNameList();
                ViewData["YesNo"] = Utilities.GetYesNoList();

                if (!Roles.IsUserInRole("CenterManager"))
                {
                    ViewData["Branchs"] = Utilities.GetBranchNameList((int)Session["ClientId"]);

                }
                else
                {
                    if (Session["BranchId"] != null)
                    {
                        ViewData["Branches"] = Utilities.GetBlankBranchNameList();
                    }
                    else
                    {
                        return RedirectToAction("LogOff", "Account");
                    }
                }
                ViewData.Model = StudentModels.GetStudentsByStudentId(id);
                return View();
            }
            else
            {
                if (Roles.IsUserInRole("SuperAdmin"))
                    return RedirectToAction("List", "Client");
                else
                {
                    FormsAuthentication.SignOut();
                    return RedirectToAction("LogOff", "Account");
                }
            }


        }

        //
        // POST: /Students/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection, Students student, HttpPostedFileBase agentPhoto)
        {


            if (Session["ClientId"] != null)
            {
                ViewData["Genders"] = Utilities.GetGenderNameList();
                ViewData["MaritalStstus"] = Utilities.GetMaritalStatusList();
                ViewData["Qualifications"] = Utilities.GetQualificationList();
                ViewData["Occupations"] = Utilities.GetOccupationNamesList();
                ViewData["FamilyIncomeSlots"] = Utilities.GetFamilyIncomeSlotList();
                ViewData["States"] = Utilities.GetStateList(Utilities.IndiaCountryCode);
                ViewData["Countries"] = Utilities.GetCountryList();
                ViewData["Nationalities"] = Utilities.GetNationalityNameList();
                ViewData["Religions"] = Utilities.GetReligionNameList();
                //ViewData["PaymentModes"] = Utilities.GetPaymentModesNameList();
                //ViewData["PaymentHeads"] = Utilities.GetPaymentHeadsNameList();
                ViewData["YesNo"] = Utilities.GetYesNoList();

                if (!Roles.IsUserInRole("CenterManager"))
                {
                    ViewData["Branchs"] = Utilities.GetBranchNameList((int)Session["ClientId"]);

                }
                else
                {
                    if (Session["BranchId"] != null)
                    {
                        ViewData["Branches"] = Utilities.GetBlankBranchNameList();
                    }
                    else
                    {
                        return RedirectToAction("LogOff", "Account");
                    }
                }
                if (Session["BranchId"] != null)
                    student.BranchId = (int)Session["BranchId"];

                if (ModelState.ContainsKey("BranchId"))
                    ModelState["BranchId"].Errors.Clear();
                var errors = ModelState.Values.SelectMany(v => v.Errors);
                if (!ModelState.IsValid)
                {
                    ViewData["Next"] = null;
                    ApplicationMessages msg = new ApplicationMessages("Invalid entry.", MessageType.Error);
                    ViewData["Message"] = msg;
                    return View();
                }


                if (agentPhoto != null)
                {
                    if (agentPhoto.ContentLength > 0)
                    {
                        Int32 length = agentPhoto.ContentLength;
                        byte[] tempImage = new byte[length];
                        agentPhoto.InputStream.Read(tempImage, 0, length);
                        student.Image = tempImage;// file.InputStream;
                        student.ImageType = agentPhoto.ContentType;
                    }
                }
                int result = StudentModels.UpdateStudentDetails(student);
                if (result > 0)
                {

                    ApplicationMessages msg = new ApplicationMessages("Student Details updated successfully.", MessageType.Success);
                    ViewData["Message"] = msg;
                    // return View();
                }
                else
                {
                    ApplicationMessages msg = new ApplicationMessages("Failed to update Student Details.", MessageType.Error);
                    ViewData["Message"] = msg;
                    // return View();
                }
            }
            else
            {
                if (Roles.IsUserInRole("SuperAdmin"))
                    return RedirectToAction("List", "Client");
                else
                {
                    FormsAuthentication.SignOut();
                    return RedirectToAction("LogOff", "Account");
                }
            }

            //ViewData["HowToKnowAboutUs"] = Utilities.GetHowToKnowAboutUsNamesList();
            //ViewData["ComputerKnoledgeLevels"] = Utilities.GetComputerKnowledgeLevelNameList();
            // ViewData["ComputerInterests"] = Utilities.GetComputerInterestNameList();

            return View();
        }

        //
        // GET: /Students/Delete/5

        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /Students/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        public ActionResult StudentImageLoader(int id)
        {
            byte[] studentPhoto = StudentModels.GetStudentPhoto(id);

            if (studentPhoto != null)
                return File(studentPhoto, "image/jpg");
            return null;
        }

        [Authorize(Roles = "SuperAdmin,Admin,AreaManager,CenterManager")]
        public ActionResult List(int? id)
        {
            if (Roles.IsUserInRole("SuperAdmin"))
            {
                if (id != null)
                    ViewData.Model = StudentModels.GetStudentsList((int)id, null);
                else
                    ViewData.Model = StudentModels.GetStudentsList();
            }
            if (Session["ClientId"] != null)
            {
                int clientId = (int)Session["ClientId"];
                if (Roles.IsUserInRole("CenterManager"))
                {
                    if (Session["BranchId"] != null)
                        ViewData.Model = StudentModels.GetStudentsList((int)Session["BranchId"], clientId);
                }
                else
                    ViewData.Model = StudentModels.GetClientStudentsList((int)clientId);
            }

            return View();
        }

        [HttpPost]
        public ActionResult List(string searchText)
        {
            List<vw_Student_Lists> students = new List<vw_Student_Lists>();
            if (Session["ClientId"] != null)
            {
                if (Roles.IsUserInRole("CenterManager") && Session["BranchId"] != null)
                    students = StudentModels.GetStudentsList(searchText, (int)Session["ClientId"], (int)Session["BranchId"]);
                else
                    students = StudentModels.GetStudentsList(searchText, (int)Session["ClientId"], null);
            }
            else
            {
                if (Roles.IsUserInRole("SuperAdmin"))
                    students = StudentModels.GetStudentsList(searchText, null, null);
            }

            if (Request.IsAjaxRequest())
            {
                return PartialView("StudentListUserControl", students);
            }
            return View();
        }

        [Authorize(Roles = "SuperAdmin,Admin,AreaManager,CenterManager")]
        public ActionResult EditAdmission(int id)
        {
            if (Session["ClientId"] != null)
            {
                if (!Roles.IsUserInRole("CenterManager"))
                {
                    ViewData["Branchs"] = Utilities.GetBranchNameList((int)Session["ClientId"]);
                    ViewData["Courses"] = Utilities.GetCourseNameList((int)Session["ClientId"]);
                    ViewData["CoursesBrands"] = Utilities.GetCourseBrandNameList((int)Session["ClientId"], null);
                    ViewData["Batches"] = Utilities.GetBatchNameList((int)Session["ClientId"]);
                }
                else
                {
                    if (Session["BranchId"] != null)
                    {
                        ViewData["Branches"] = Utilities.GetBlankBranchNameList();
                        ViewData["Courses"] = Utilities.GetCourseNameList((int)Session["ClientId"], (int)Session["BranchId"]);
                        ViewData["CoursesBrands"] = Utilities.GetCourseBrandNameList((int)Session["ClientId"], (int)Session["BranchId"]);
                        ViewData["Batches"] = Utilities.GetBatchNameList((int)Session["ClientId"], (int)Session["BranchId"]);
                    }
                    else
                    {
                        return RedirectToAction("LogOff", "Account");
                    }
                }

                ViewData.Model = StudentModels.GetAdmissionById(id);
                ViewData["StudentDetails"] = StudentModels.GetAdmissionDetailsById(id);

            }
            else
            {
                if (Roles.IsUserInRole("SuperAdmin"))
                    return RedirectToAction("List", "Client");
            }
            ViewData["HowToKnowAboutUs"] = Utilities.GetHowToKnowAboutUsNamesList();
            ViewData["ComputerKnoledgeLevels"] = Utilities.GetComputerKnowledgeLevelNameList();
            ViewData["ComputerInterests"] = Utilities.GetComputerInterestNameList();
            ViewData["PaymentModes"] = Utilities.GetPaymentModesNameList();
            ViewData["PaymentHeads"] = Utilities.GetPaymentHeadsNameList();
            ViewData["YesNo"] = Utilities.GetYesNoList();
            ViewData["Next"] = null;

            return View();
        }

        [HttpPost]
        public ActionResult EditAdmission(FormCollection form, Admissions admission)
        {

            ViewData["HowToKnowAboutUs"] = Utilities.GetHowToKnowAboutUsNamesList();
            ViewData["ComputerKnoledgeLevels"] = Utilities.GetComputerKnowledgeLevelNameList();
            ViewData["ComputerInterests"] = Utilities.GetComputerInterestNameList();
            ViewData["PaymentModes"] = Utilities.GetPaymentModesNameList();
            ViewData["PaymentHeads"] = Utilities.GetPaymentHeadsNameList();
            ViewData["YesNo"] = Utilities.GetYesNoList();
            ViewData["Next"] = null;

            if (Session["ClientId"] != null)
            {
                if (!Roles.IsUserInRole("CenterManager"))
                {
                    ViewData["Branchs"] = Utilities.GetBranchNameList((int)Session["ClientId"]);
                    ViewData["Courses"] = Utilities.GetCourseNameList((int)Session["ClientId"]);
                    ViewData["CoursesBrands"] = Utilities.GetCourseBrandNameList((int)Session["ClientId"], null);
                    ViewData["Batches"] = Utilities.GetBatchNameList((int)Session["ClientId"]);
                }
                else
                {
                    if (Session["BranchId"] != null)
                    {
                        ViewData["Branches"] = Utilities.GetBlankBranchNameList();
                        ViewData["Courses"] = Utilities.GetCourseNameList((int)Session["ClientId"], (int)Session["BranchId"]);
                        ViewData["CoursesBrands"] = Utilities.GetCourseBrandNameList((int)Session["ClientId"], (int)Session["BranchId"]);
                        ViewData["Batches"] = Utilities.GetBatchNameList((int)Session["ClientId"], (int)Session["BranchId"]);
                    }
                    else
                    {
                        return RedirectToAction("LogOff", "Account");
                    }
                }

                if (!ModelState.IsValid)
                {
                    ViewData["Next"] = null;
                    ApplicationMessages msg = new ApplicationMessages("Invalid entry.", MessageType.Error);
                    ViewData["Message"] = msg;
                    return View();
                }


                int result = StudentModels.UpdateAdmissionDetails(admission);
                if (result > 0)
                {

                    ApplicationMessages msg = new ApplicationMessages("Admission Details updated successfully.", MessageType.Success);
                    ViewData["Message"] = msg;
                    // return View();
                }
                else
                {
                    ApplicationMessages msg = new ApplicationMessages("Failed to update Admission details.", MessageType.Error);
                    ViewData["Message"] = msg;
                    // return View();
                }


            }
            else
            {
                if (Roles.IsUserInRole("SuperAdmin"))
                    return RedirectToAction("List", "Client");
            }


            return View();
        }


        [Authorize]
        public ActionResult Fees()
        {
            ViewData["PaymentHeads"] = Utilities.GetPaymentHeadsNameList();
            ViewData["PaymentModes"] = Utilities.GetPaymentModesNameList();
            return View();
        }


        [HttpPost]
        public ActionResult Fees(string Submit, FormCollection form, FeeCollections newFees)
        {
            ViewData["PaymentHeads"] = Utilities.GetPaymentHeadsNameList();
            ViewData["PaymentModes"] = Utilities.GetPaymentModesNameList();
            decimal? paidFeesAmount = 0;
            string regNumber = string.Empty; decimal? courseFee = 0;
            if (!string.IsNullOrEmpty(form["txtReg_Number"]))
            {
                regNumber = form["txtReg_Number"].ToString();
                ViewData["RegistrationNumber"] = regNumber;
                List<vw_FeeCollections> feeCollected = null;
                feeCollected = StudentModels.GetStudentsPaidFeesByReg_Number(regNumber);
                if (feeCollected != null && feeCollected.Count() > 0)
                {
                    ViewData["CollectedFees"] = feeCollected;
                    paidFeesAmount = feeCollected.Sum(f => f.Amount);
                }
                vw_Admissions admDeatails = StudentModels.GetAdmissionDetailsByReg_Number(regNumber);
                if (admDeatails != null)
                {
                    courseFee = admDeatails.CourseFees ?? 0;
                    ViewData["StudentDetails"] = admDeatails;
                }
                else
                {
                    ApplicationMessages msg = new ApplicationMessages("Invalid Registration Number.", MessageType.Error);
                    ViewData["Message"] = msg;
                    return View();
                }

                if (!string.IsNullOrEmpty(Submit))
                {
                    switch (Submit.ToLower())
                    {
                        case "search":
                            ModelState.Clear();
                            break;

                        case "submit":

                            if (!ModelState.IsValid)
                            {
                                ApplicationMessages msg = new ApplicationMessages("Invalid entry.", MessageType.Error);
                                ViewData["Message"] = msg;
                                return View();
                            }


                            if (courseFee >= paidFeesAmount + (newFees != null ? newFees.Amount : 0))
                            {
                                if (admDeatails != null)
                                {
                                    newFees.AdmissionId = admDeatails.Id;
                                    if (newFees.Amount != null && newFees.Amount > 0)
                                    {
                                        newFees.TotalReceived = newFees.Amount;
                                        int result = StudentModels.PayStudentFees(newFees);
                                        if (result > 0)
                                        {
                                            Session["CurrentFeeId"] = newFees.Id;
                                            return RedirectToAction("FeeReceipt");
                                            // ApplicationMessages msg = new ApplicationMessages("Fees paid successfully.", MessageType.Success);
                                            // ViewData["Message"] = msg;
                                            // ViewData["CollectedFees"] = StudentModels.GetStudentsPaidFeesByReg_Number(regNumber);
                                        }
                                        else
                                        {
                                            ApplicationMessages msg = new ApplicationMessages("Failed to Pay Fees. Please try again.", MessageType.Error);
                                            ViewData["Message"] = msg;
                                        }
                                    }
                                    else
                                    {
                                        ApplicationMessages msg = new ApplicationMessages("Fee Amount can not be zero or negative.", MessageType.Error);
                                        ViewData["Message"] = msg;
                                    }
                                }
                                else
                                {
                                    ApplicationMessages msg = new ApplicationMessages("Failed to Pay Fees. Please try again.", MessageType.Error);
                                    ViewData["Message"] = msg;
                                }
                            }
                            else
                            {
                                ApplicationMessages msg = new ApplicationMessages("Fee Amount can not exceed Total Installment Amount.", MessageType.Error);
                                ViewData["Message"] = msg;
                            }
                            break;
                    }
                }
                return View();
            }
            else
            {
                ApplicationMessages msg = new ApplicationMessages("Invalid Registration Number.", MessageType.Error);
                ViewData["Message"] = msg;
                return View();
            }
        }

        public ActionResult EditFees(int id)
        {
            ViewData["PaymentHeads"] = Utilities.GetPaymentHeadsNameList();
            ViewData["PaymentModes"] = Utilities.GetPaymentModesNameList();

            FeeCollections feeColl = StudentModels.GetFeesCollectionById(id);
            ViewData.Model = feeColl;
            if (feeColl != null)
            {
                vw_Admissions admDeatails = StudentModels.GetAdmissionDetailsById(feeColl.AdmissionId);
                if (admDeatails != null)
                {
                    ViewData["StudentDetails"] = admDeatails;
                }
            }
            return View();
        }

        [HttpPost]
        public ActionResult EditFees(FormCollection form, FeeCollections newFees)
        {
            ViewData["PaymentHeads"] = Utilities.GetPaymentHeadsNameList();
            ViewData["PaymentModes"] = Utilities.GetPaymentModesNameList();

            decimal? paidFeesAmount = 0; decimal? courseFee = 0; string regNumber = string.Empty;
            if (!ModelState.IsValid)
            {
                ApplicationMessages msg = new ApplicationMessages("Invalid entry.", MessageType.Error);
                ViewData["Message"] = msg;
                return View();
            }
            ViewData.Model = newFees;
            vw_Admissions admDeatails = StudentModels.GetAdmissionDetailsById(newFees.AdmissionId);
            if (admDeatails != null)
            {
                regNumber = admDeatails.RegistrationNumber;
                courseFee = admDeatails.CourseFees ?? 0;
                ViewData["StudentDetails"] = admDeatails;
                List<vw_FeeCollections> feeCollected = null;
                feeCollected = StudentModels.GetStudentsPaidFeesByReg_Number(regNumber);
                List<vw_FeeCollections> exceptThisFeelist = feeCollected.Where(fe => fe.Id != newFees.Id).ToList();
                if (exceptThisFeelist != null && exceptThisFeelist.Count() > 0)
                {
                    //ViewData["CollectedFees"] = feeCollected;
                    paidFeesAmount = exceptThisFeelist.Sum(f => f.Amount);
                }

                if (courseFee >= paidFeesAmount + (newFees != null ? newFees.Amount : 0))
                {
                    if (admDeatails != null)
                    {
                        //newFees.AdmissionId = admDeatails.Id;
                        if (newFees.Amount != null && newFees.Amount > 0)
                        {
                            newFees.TotalReceived = newFees.Amount;
                            int result = StudentModels.UpdateFeeCollection(newFees);
                            if (result > 0)
                            {
                                Session["CurrentFeeId"] = newFees.Id;
                                // return RedirectToAction("FeeReceipt");
                                ApplicationMessages msg = new ApplicationMessages("Fees saved successfully.", MessageType.Success);
                                ViewData["Message"] = msg;
                                //ViewData["CollectedFees"] = StudentModels.GetStudentsPaidFeesByReg_Number(regNumber);
                            }
                            else
                            {
                                ApplicationMessages msg = new ApplicationMessages("Failed to save Fees. Please try again.", MessageType.Error);
                                ViewData["Message"] = msg;
                            }
                        }
                        else
                        {
                            ApplicationMessages msg = new ApplicationMessages("Fee Amount can not be zero or negative.", MessageType.Error);
                            ViewData["Message"] = msg;
                        }
                    }
                    else
                    {
                        ApplicationMessages msg = new ApplicationMessages("Failed to save Fees. Please try again.", MessageType.Error);
                        ViewData["Message"] = msg;
                    }
                }
                else
                {
                    ApplicationMessages msg = new ApplicationMessages("Fee Amount can not exceed Total Installment Amount.", MessageType.Error);
                    ViewData["Message"] = msg;
                }

                return View();
            }
            else
            {
                ApplicationMessages msg = new ApplicationMessages("Invalid Enquiry", MessageType.Error);
                ViewData["Message"] = msg;
                return View();
            }







        }

        [Authorize]
        public ActionResult FeeReceipt()
        {
            if (Session["CurrentFeeId"] != null)
            {
                int id = (int)Session["CurrentFeeId"];
                FeeReceipts newFeeReceipts = new FeeReceipts();
                newFeeReceipts.FeeCollectionDetails = StudentModels.GetFeePaidDetailsById(id);
                if (newFeeReceipts.FeeCollectionDetails != null)
                {
                    newFeeReceipts.AdmissionDetails = StudentModels.GetAdmissionDetailsById(newFeeReceipts.FeeCollectionDetails.AdmissionId);
                    ViewData.Model = newFeeReceipts;
                }
            }
            return View();
        }

        [Authorize]
        public ActionResult AdmReceipt()
        {
            if (Session["CurrentAdmId"] != null)
            {
                int id = (int)Session["CurrentAdmId"];
                ViewData.Model = StudentModels.GetAdmissionDetailsById(id);
                if (Session["BranchId"] != null)
                {
                    ViewData["BranchName"] = BranchModels.GetBranchDetailsById((int)Session["BranchId"]);
                }
            }
            return View();
        }

        [HttpPost]
        public JsonResult StudentsByBatches(int id)
        {
            List<vw_Admissions> adms = StudentModels.GetNewAdmissionListByBatchId(id);
            return Json(adms);
        }

       
    }
}
