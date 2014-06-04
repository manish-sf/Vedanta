using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Vedanta.Models;
using System.Web.Security;

namespace Vedanta.Controllers
{
    public class ReportController : Controller
    {
        //
        // GET: /Report/
        [Authorize]
        public ActionResult Index()
        {
            if (Session["ClientId"] != null)
            {
                ClientSettings clientSetting = ClientModels.GetClientSettingsByClientId((int)Session["ClientId"]);
                ViewData["clientSetting"] = clientSetting;
                Session["clientSetting"] = clientSetting;
            }
            return View();
        }

        [Authorize(Roles = "SuperAdmin,Admin,AreaManager,CenterManager")]
        public ActionResult FeeCollection()
        {
            if (Session["ClientId"] != null)
            {
                if (Roles.IsUserInRole("CenterManager"))
                {
                    if (Session["BranchId"] == null)
                    {
                        return RedirectToAction("LogOff", "Account");
                    }
                }
                else
                    ViewData["Branches"] = Utilities.GetBranchNameList((int)Session["ClientId"]);

            }
            else
            {
                if (Roles.IsUserInRole("SuperAdmin"))
                    return RedirectToAction("List", "Client");
            }
            return View();
        }

        [HttpPost]
        public ActionResult FeeCollection(FormCollection form)
        {
            DateTime fromDate = DateTime.Now;
            DateTime toDate = DateTime.Now;
            if (!string.IsNullOrEmpty(form["DateFrom"]))
                fromDate = Convert.ToDateTime(form["DateFrom"].ToString());
            if (!string.IsNullOrEmpty(form["ToDate"]))
                toDate = Convert.ToDateTime(form["ToDate"].ToString());

            ViewData["FromDate"] = fromDate.ToString("MM/dd/yyyy");
            ViewData["ToDate"] = toDate.ToString("MM/dd/yyyy");

            int branchId = 0;
            if (form["ddlBranch"] != null && !string.IsNullOrEmpty(form["ddlBranch"]))
                branchId = Convert.ToInt32(form["ddlBranch"].ToString());
            List<vw_FeeCollections> feeCollections = new List<vw_FeeCollections>();
            if (Session["ClientId"] != null)
            {
                if (Roles.IsUserInRole("CenterManager"))
                {
                    if (Session["BranchId"] != null)
                    {
                        feeCollections = StudentModels.GetFeeCollections(fromDate, toDate, (int)Session["ClientId"], (int)Session["BranchId"], null, null, true);
                    }
                    else
                    {
                        return RedirectToAction("LogOff", "Account");
                    }
                }
                else
                {
                    if (branchId > 0)
                    {
                        ViewData["SelectedBranch"] = branchId;
                        feeCollections = StudentModels.GetFeeCollections(fromDate, toDate, (int)Session["ClientId"], branchId, null, null);
                    }
                    else
                        feeCollections = StudentModels.GetFeeCollections(fromDate, toDate, (int)Session["ClientId"], null, null, null);

                    ViewData["Branches"] = Utilities.GetBranchNameList((int)Session["ClientId"]);
                }
                ViewData.Model = feeCollections;
                List<MasterModels.CollectionSummaryBranchWise> colSummary = new List<MasterModels.CollectionSummaryBranchWise>();
                var c = from coll in feeCollections
                        group coll by new { coll.BranchId, coll.BranchName, coll.CourseCode }
                            into pls
                            select new Vedanta.Models.MasterModels.CollectionSummaryBranchWise { BranchId = (int)pls.Key.BranchId, BranchName = pls.Key.BranchName, CourseName = pls.Key.CourseCode, Amount = (decimal)(pls.Sum(p => p.Amount) ?? 0) };

                colSummary = c.ToList();
                ViewData["BranchWiseSummary"] = colSummary;

            }
            else
            {
                if (Roles.IsUserInRole("SuperAdmin"))
                    return RedirectToAction("List", "Client");
            }
            return View();
        }


        [Authorize]
        public ActionResult NewAdmission()
        {
            if (Session["ClientId"] != null)
            {
                if (Roles.IsUserInRole("CenterManager"))
                {
                    if (Session["BranchId"] == null)
                    {
                        return RedirectToAction("LogOff", "Account");
                    }
                }
                else
                    ViewData["Branches"] = Utilities.GetBranchNameList((int)Session["ClientId"]);

            }
            else
            {
                if (Roles.IsUserInRole("SuperAdmin"))
                    return RedirectToAction("List", "Client");
            }
            return View();

        }

        [HttpPost]
        public ActionResult NewAdmission(FormCollection form, string searchText)
        {
            DateTime fromDate = DateTime.Now;
            DateTime toDate = DateTime.Now;
            if (!string.IsNullOrEmpty(form["DateFrom"]))
                fromDate = Convert.ToDateTime(form["DateFrom"].ToString());
            if (!string.IsNullOrEmpty(form["ToDate"]))
                toDate = Convert.ToDateTime(form["ToDate"].ToString());

            ViewData["FromDate"] = fromDate.ToString("MM/dd/yyyy");
            ViewData["ToDate"] = toDate.ToString("MM/dd/yyyy");
            int branchId = 0;
            if (form["ddlBranch"] != null && !string.IsNullOrEmpty(form["ddlBranch"]))
                branchId = Convert.ToInt32(form["ddlBranch"].ToString());

            List<vw_Admissions> students = new List<vw_Admissions>();
            if (Session["ClientId"] != null)
            {
                if (Roles.IsUserInRole("CenterManager"))
                {
                    if (Session["BranchId"] != null)
                    {
                        students = StudentModels.GetNewAdmissionList(fromDate, toDate, (int)Session["ClientId"], (int)Session["BranchId"], null, null);
                    }
                    else
                    {
                        return RedirectToAction("LogOff", "Account");
                    }
                }
                else
                {
                    if (branchId > 0)
                    {
                        ViewData["SelectedBranch"] = branchId;
                        students = StudentModels.GetNewAdmissionList(fromDate, toDate, (int)Session["ClientId"], branchId, null, null);
                    }
                    else
                        students = StudentModels.GetNewAdmissionList(fromDate, toDate, (int)Session["ClientId"], null, null, null);

                    ViewData["Branches"] = Utilities.GetBranchNameList((int)Session["ClientId"]);
                }
                ViewData.Model = students;
                List<MasterModels.NewAdmissionSummaryBranchWise> colSummary = new List<MasterModels.NewAdmissionSummaryBranchWise>();
                var c = from coll in students
                        group coll by new { coll.BranchId, coll.BranchName, coll.CourseCode }
                            into pls
                            select new Vedanta.Models.MasterModels.NewAdmissionSummaryBranchWise { BranchId = (int)pls.Key.BranchId, BranchName = pls.Key.BranchName, CourseName = pls.Key.CourseCode, AdmCount = pls.Count(), Amount = (decimal)(pls.Sum(p => p.DownPayment) ?? 0) };

                colSummary = c.ToList();
                ViewData["BranchWiseSummary"] = colSummary;

            }
            else
            {
                if (Roles.IsUserInRole("SuperAdmin"))
                    return RedirectToAction("List", "Client");
            }
            return View();
        }

        [Authorize]
        public ActionResult IncomeReport()
        {
            if (Session["ClientId"] != null)
            {
                if (Roles.IsUserInRole("CenterManager"))
                {
                    if (Session["BranchId"] == null)
                    {
                        return RedirectToAction("LogOff", "Account");
                    }
                }
                else
                    ViewData["Branches"] = Utilities.GetBranchNameList((int)Session["ClientId"]);

            }
            else
            {
                if (Roles.IsUserInRole("SuperAdmin"))
                    return RedirectToAction("List", "Client");
            }
            return View();
        }

        [HttpPost]
        public ActionResult IncomeReport(string Submit, FormCollection form)
        {
            DateTime fromDate = DateTime.Now;
            DateTime toDate = DateTime.Now;
            if (!string.IsNullOrEmpty(form["DateFrom"]))
                fromDate = Convert.ToDateTime(form["DateFrom"].ToString());
            if (!string.IsNullOrEmpty(form["ToDate"]))
                toDate = Convert.ToDateTime(form["ToDate"].ToString());

            ViewData["FromDate"] = fromDate.ToString("MM/dd/yyyy");
            ViewData["ToDate"] = toDate.ToString("MM/dd/yyyy");

            int branchId = 0;
            if (form["ddlBranch"] != null && !string.IsNullOrEmpty(form["ddlBranch"]))
                branchId = Convert.ToInt32(form["ddlBranch"].ToString());

            int paymentType = (int)PaymentTypes.Income;
            List<vw_PaymentList> payments = new List<vw_PaymentList>();
            if (Session["ClientId"] != null)
            {
                switch (Submit.ToLower())
                {
                    case "search":
                        if (Roles.IsUserInRole("CenterManager"))
                        {
                            if (Session["BranchId"] != null)
                            {
                                payments = MasterModels.GetPaymentList((int)Session["ClientId"], (int)Session["BranchId"], paymentType, fromDate, toDate, true);
                            }
                            else
                                return RedirectToAction("LogOff", "Account");

                        }
                        else
                        {
                            if (branchId > 0)
                            {
                                ViewData["SelectedBranch"] = branchId;
                                payments = MasterModels.GetPaymentList((int)Session["ClientId"], branchId, paymentType, fromDate, toDate);
                            }
                            else
                                payments = MasterModels.GetPaymentList((int)Session["ClientId"], paymentType, fromDate, toDate);

                            ViewData["Branches"] = Utilities.GetBranchNameList((int)Session["ClientId"]);
                        }
                        break;
                    case "advance search":
                        string strExpenseHead = form["txtexpHead"];
                        string strPaidTo = form["txtpaidTo"];
                        string strNarration = form["txtNarration"];
                        string strRemarks = form["txtRemarks"];
                        DateTime fromAdvSearchDate = DateTime.Now;
                        DateTime toAdvSearchDate = DateTime.Now;
                        if (!string.IsNullOrEmpty(form["txtAdSearchDateFrom"]))
                            fromAdvSearchDate = Convert.ToDateTime(form["txtAdSearchDateFrom"].ToString());
                        if (!string.IsNullOrEmpty(form["txtAdSearchDateTo"]))
                            toAdvSearchDate = Convert.ToDateTime(form["txtAdSearchDateTo"].ToString());
                        if (Roles.IsUserInRole("CenterManager"))
                        {
                            if (Session["BranchId"] != null)
                            {
                                payments = MasterModels.SearchPaymentList((int)Session["ClientId"], (int)Session["BranchId"], paymentType, fromAdvSearchDate, toAdvSearchDate, strExpenseHead, strPaidTo, strNarration, strRemarks, true);
                            }
                            else
                                return RedirectToAction("LogOff", "Account");

                        }
                        else
                        {
                            if (branchId > 0)
                            {
                                ViewData["SelectedBranch"] = branchId;
                                payments = MasterModels.SearchPaymentList((int)Session["ClientId"], (int)Session["BranchId"], paymentType, fromAdvSearchDate, toAdvSearchDate, strExpenseHead, strPaidTo, strNarration, strRemarks);
                            }
                            else
                                payments = MasterModels.SearchPaymentList((int)Session["ClientId"], paymentType, fromAdvSearchDate, toAdvSearchDate, strExpenseHead, strPaidTo, strNarration, strRemarks);

                            ViewData["Branches"] = Utilities.GetBranchNameList((int)Session["ClientId"]);
                        }
                        break;
                }
                ViewData.Model = payments;
            }
            else
            {
                if (Roles.IsUserInRole("SuperAdmin"))
                    return RedirectToAction("List", "Client");
            }
            //if (Request.IsAjaxRequest())
            //{
            //    return PartialView("PaymentListUserControl", payments);
            //}

            return View();
        }


        [Authorize]
        public ActionResult ExpenseReport()
        {
            if (Session["ClientId"] != null)
            {
                if (Roles.IsUserInRole("CenterManager"))
                {
                    if (Session["BranchId"] == null)
                    {
                        return RedirectToAction("LogOff", "Account");
                    }
                }
                else
                    ViewData["Branches"] = Utilities.GetBranchNameList((int)Session["ClientId"]);
            }
            else
            {
                if (Roles.IsUserInRole("SuperAdmin"))
                    return RedirectToAction("List", "Client");
            }
            return View();
        }

        [HttpPost]
        public ActionResult ExpenseReport(string Submit, FormCollection form)
        {
            DateTime fromDate = DateTime.Now;
            DateTime toDate = DateTime.Now;
            if (!string.IsNullOrEmpty(form["DateFrom"]))
                fromDate = Convert.ToDateTime(form["DateFrom"].ToString());
            if (!string.IsNullOrEmpty(form["ToDate"]))
                toDate = Convert.ToDateTime(form["ToDate"].ToString());

            ViewData["FromDate"] = fromDate.ToString("MM/dd/yyyy");
            ViewData["ToDate"] = toDate.ToString("MM/dd/yyyy");

            int branchId = 0;
            if (form["ddlBranch"] != null && !string.IsNullOrEmpty(form["ddlBranch"]))
                branchId = Convert.ToInt32(form["ddlBranch"].ToString());

            int paymentType = (int)PaymentTypes.Expense;
            List<vw_PaymentList> payments = new List<vw_PaymentList>();
            if (Session["ClientId"] != null)
            {
                switch (Submit.ToLower())
                {
                    case "search":

                        if (Roles.IsUserInRole("CenterManager"))
                        {
                            if (Session["BranchId"] != null)
                            {
                                payments = MasterModels.GetPaymentList((int)Session["ClientId"], (int)Session["BranchId"], paymentType, fromDate, toDate, true);
                            }
                            else
                                return RedirectToAction("LogOff", "Account");

                        }
                        else
                        {
                            if (branchId > 0)
                            {
                                ViewData["SelectedBranch"] = branchId;
                                payments = MasterModels.GetPaymentList((int)Session["ClientId"], branchId, paymentType, fromDate, toDate);
                            }
                            else
                                payments = MasterModels.GetPaymentList((int)Session["ClientId"], paymentType, fromDate, toDate);

                            ViewData["Branches"] = Utilities.GetBranchNameList((int)Session["ClientId"]);
                        }
                        break;

                    case "advance search":
                        string strExpenseHead = form["txtexpHead"];
                        string strPaidTo = form["txtpaidTo"];
                        string strNarration = form["txtNarration"];
                        string strRemarks = form["txtRemarks"];
                        DateTime fromAdvSearchDate = DateTime.Now;
                        DateTime toAdvSearchDate = DateTime.Now;
                        if (!string.IsNullOrEmpty(form["txtAdSearchDateFrom"]))
                            fromAdvSearchDate = Convert.ToDateTime(form["txtAdSearchDateFrom"].ToString());
                        if (!string.IsNullOrEmpty(form["txtAdSearchDateTo"]))
                            toAdvSearchDate = Convert.ToDateTime(form["txtAdSearchDateTo"].ToString());
                        if (Roles.IsUserInRole("CenterManager"))
                        {
                            if (Session["BranchId"] != null)
                            {
                                payments = MasterModels.SearchPaymentList((int)Session["ClientId"], (int)Session["BranchId"], paymentType, fromAdvSearchDate, toAdvSearchDate, strExpenseHead, strPaidTo, strNarration, strRemarks, true);
                            }
                            else
                                return RedirectToAction("LogOff", "Account");

                        }
                        else
                        {
                            if (branchId > 0)
                            {
                                ViewData["SelectedBranch"] = branchId;
                                payments = MasterModels.SearchPaymentList((int)Session["ClientId"], (int)Session["BranchId"], paymentType, fromAdvSearchDate, toAdvSearchDate, strExpenseHead, strPaidTo, strNarration, strRemarks);
                            }
                            else
                                payments = MasterModels.SearchPaymentList((int)Session["ClientId"], paymentType, fromAdvSearchDate, toAdvSearchDate, strExpenseHead, strPaidTo, strNarration, strRemarks);

                            ViewData["Branches"] = Utilities.GetBranchNameList((int)Session["ClientId"]);
                        }
                        break;
                }
                ViewData.Model = payments;
            }
            else
            {
                if (Roles.IsUserInRole("SuperAdmin"))
                    return RedirectToAction("List", "Client");
            }
            //if (Request.IsAjaxRequest())
            //{
            //    return PartialView("PaymentListUserControl", payments);
            //}

            return View();
        }


        [HttpPost]
        public int DeletePayment(int id)
        {
            int result = MasterModels.DeletePaymentsById(id);
            return result;
        }

        [Authorize]
        public ActionResult AccountSummary()
        {
            if (Session["ClientId"] != null)
            {
                if (Roles.IsUserInRole("CenterManager"))
                {
                    if (Session["BranchId"] == null)
                    {
                        return RedirectToAction("LogOff", "Account");
                    }
                }
                else
                    ViewData["Branches"] = Utilities.GetBranchNameList((int)Session["ClientId"]);

            }
            else
            {
                if (Roles.IsUserInRole("SuperAdmin"))
                    return RedirectToAction("List", "Client");
            }
            return View();
        }

        [HttpPost]
        public ActionResult AccountSummary(FormCollection form)
        {
            DateTime fromDate = DateTime.Now;
            DateTime toDate = DateTime.Now;
            if (!string.IsNullOrEmpty(form["DateFrom"]))
                fromDate = Convert.ToDateTime(form["DateFrom"].ToString());
            if (!string.IsNullOrEmpty(form["ToDate"]))
                toDate = Convert.ToDateTime(form["ToDate"].ToString());

            ViewData["FromDate"] = fromDate.ToString("MM/dd/yyyy");
            ViewData["ToDate"] = toDate.ToString("MM/dd/yyyy");
            int paymentType = (int)PaymentTypes.Expense;
            int branchId = 0;
            if (form["ddlBranch"] != null && !string.IsNullOrEmpty(form["ddlBranch"]))
                branchId = Convert.ToInt32(form["ddlBranch"].ToString());

            if (Session["ClientId"] != null)
            {
                List<vw_PaymentList> expenseList = new List<vw_PaymentList>();
                List<vw_PaymentList> incomeList = new List<vw_PaymentList>();
                List<vw_FeeCollections> feeColList = new List<vw_FeeCollections>();

                if (Roles.IsUserInRole("CenterManager"))
                {
                    if (Session["BranchId"] != null)
                    {
                        expenseList = MasterModels.GetPaymentList((int)Session["ClientId"], (int)Session["BranchId"], paymentType, fromDate, toDate, true);
                        incomeList = MasterModels.GetPaymentList((int)Session["ClientId"], (int)Session["BranchId"], (int)PaymentTypes.Income, fromDate, toDate, true);
                        feeColList = StudentModels.GetFeeCollections(fromDate, toDate, (int)Session["ClientId"], (int)Session["BranchId"], null, null, true);
                    }
                    else
                        return RedirectToAction("LogOff", "Account");
                }
                else
                {
                    ViewData["Branches"] = Utilities.GetBranchNameList((int)Session["ClientId"]);
                    if (branchId > 0)
                    {
                        ViewData["SelectedBranch"] = branchId;
                        expenseList = MasterModels.GetPaymentList((int)Session["ClientId"], branchId, paymentType, fromDate, toDate);
                        incomeList = MasterModels.GetPaymentList((int)Session["ClientId"], branchId, (int)PaymentTypes.Income, fromDate, toDate);
                        feeColList = StudentModels.GetFeeCollections(fromDate, toDate, (int)Session["ClientId"], branchId, null, null);
                    }
                    else
                    {
                        expenseList = MasterModels.GetPaymentList((int)Session["ClientId"], paymentType, fromDate, toDate);
                        incomeList = MasterModels.GetPaymentList((int)Session["ClientId"], (int)PaymentTypes.Income, fromDate, toDate);
                        feeColList = StudentModels.GetFeeCollections(fromDate, toDate, (int)Session["ClientId"], null, null, null);
                    }
                }

                //Creating ExpenseSummaryHeadWise 
                List<MasterModels.ExpenseSummaryGroupByHeads> expSummaryHeadWise = new List<MasterModels.ExpenseSummaryGroupByHeads>();
                var e = from pl in expenseList
                        group pl by new { pl.ExpenseHeadId, pl.ExpenseHeadName }
                            into pls
                            select new Vedanta.Models.MasterModels.ExpenseSummaryGroupByHeads { ExpenseHeadId = pls.Key.ExpenseHeadId, ExpenseHead = pls.Key.ExpenseHeadName, Amount = pls.Sum(p => p.Amounts) };
                expSummaryHeadWise = e.ToList();
                //Creating incomeummaryHeadWise
                List<MasterModels.ExpenseSummaryGroupByHeads> incSummaryHeadWise = new List<MasterModels.ExpenseSummaryGroupByHeads>();
                var i = from pl in incomeList
                        group pl by new { pl.ExpenseHeadId, pl.ExpenseHeadName }
                            into pls
                            select new Vedanta.Models.MasterModels.ExpenseSummaryGroupByHeads { ExpenseHeadId = pls.Key.ExpenseHeadId, ExpenseHead = pls.Key.ExpenseHeadName, Amount = pls.Sum(p => p.Amounts) };
                incSummaryHeadWise = i.ToList();


                //creating FeeCollections 
                List<MasterModels.ExpenseSummaryGroupByHeads> feeCollectionSummaryHeadWise = new List<MasterModels.ExpenseSummaryGroupByHeads>();
                var fees = from pl in feeColList
                           group pl by new { pl.PaymentHeadId, pl.PaymentHead }
                               into pls
                               select new Vedanta.Models.MasterModels.ExpenseSummaryGroupByHeads { ExpenseHeadId = pls.Key.PaymentHeadId, ExpenseHead = pls.Key.PaymentHead, Amount = pls.Sum(p => p.TotalReceived ?? 0) };
                feeCollectionSummaryHeadWise = fees.ToList();
                ViewData["expSummary"] = expSummaryHeadWise;
                ViewData["incSummary"] = incSummaryHeadWise;
                ViewData["CollectionSummary"] = feeCollectionSummaryHeadWise;

            }
            else
            {
                if (Roles.IsUserInRole("SuperAdmin"))
                    return RedirectToAction("List", "Client");
            }
            return View();
        }

        [Authorize]
        public ActionResult Batchs(string branch)
        {
            if (Session["ClientId"] != null)
            {
                if (!Roles.IsUserInRole("CenterManager"))
                    ViewData.Model = CourseModels.GetBatchList((int)Session["ClientId"]);
                else
                    if (Session["BranchId"] != null)
                    {
                        ViewData.Model = CourseModels.GetBatchList((int)Session["ClientId"], (int)Session["BranchId"]);
                    }
            }
            else
            {
                if (Roles.IsUserInRole("SuperAdmin"))
                    ViewData.Model = CourseModels.GetBatchList();
            }
            ViewData["BatchOfStudents"] = null;
            return View();
        }

        [HttpPost]
        public ActionResult HeadWiseExpenseList(int headId, char paymentTypes, int branchId, DateTime fromDate, DateTime toDate)
        {
            int paymentType = 0;
            if (paymentTypes == 'E')
                paymentType = (int)PaymentTypes.Expense;
            else
                paymentType = (int)PaymentTypes.Income;

            List<vw_PaymentList> payments = new List<vw_PaymentList>();
            if (Session["ClientId"] != null)
            {
                if (Roles.IsUserInRole("CenterManager"))
                {
                    if (Session["BranchId"] != null)
                    {
                        payments = MasterModels.GetHeadWisePaymentList((int)Session["ClientId"], (int)Session["BranchId"], paymentType, headId, fromDate, toDate, true);
                    }
                }
                else
                {
                    if (branchId > 0)
                    {
                        payments = MasterModels.GetHeadWisePaymentList((int)Session["ClientId"], branchId, paymentType, headId, fromDate, toDate);
                    }
                    else
                        payments = MasterModels.GetHeadWisePaymentList((int)Session["ClientId"], paymentType, headId, fromDate, toDate);
                }
                ViewData["BatchOfStudents"] = payments;
                if (Request.IsAjaxRequest())
                {
                    return PartialView("PaymentListUserControl", payments);
                }
                ViewData["BatchOfStudents"] = payments;
            }
            return View(); ;
        }

        [HttpPost]
        public ActionResult Batchs(int id)
        {
            List<vw_Admissions> students = new List<vw_Admissions>();
            students = StudentModels.GetNewAdmissionListByBatchId(id);
            if (Request.IsAjaxRequest())
            {
                return PartialView("NewAdmissionUserControl", students);
            }
            ViewData["BatchOfStudents"] = students;
            return View();
        }

        [Authorize]
        public ActionResult Ledgers()
        {
            ViewData.Model = MasterModels.GetLedgerMasterList();
            return View();
        }

    }
}
