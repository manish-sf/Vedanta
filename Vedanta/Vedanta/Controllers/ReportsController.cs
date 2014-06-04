using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Vedanta.Models;
using System.Collections;
namespace Vedanta.Controllers
{
    public class ReportsController : Controller
    {
        //
        // GET: /Reports/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult FeeCollection()
        {
            ViewData["Zones"] = Utilities.GetZoneNameList();
            ViewData["Regions"] = Utilities.GetRegionNameList(null);
            ViewData["Branches"] = Utilities.GetBranchNameList();
            ViewData.Model = StudentModels.GetFeeCollections(null, null, null);
            return View();
        }

        public ActionResult NewAdmission()
        {
            ViewData["Zones"] = Utilities.GetZoneNameList();
            ViewData["Regions"] = Utilities.GetRegionNameList(null);
            ViewData["Branches"] = Utilities.GetBranchNameList();
            ViewData.Model = StudentModels.GetNewAdmissionList();
            return View();
        }

        [HttpPost]
        public ActionResult NewAdmission(string searchText)
        {
            if (Request.IsAjaxRequest())
            {
                return PartialView("StudentListUserControl", StudentModels.GetStudentsList(searchText));
            }
            return View();
        }

        public ActionResult IncomeReport()
        {
            int paymentType = (int)PaymentTypes.Income;
            ViewData.Model = MasterModels.GetPaymentList(paymentType);
            return View();
        }

        [HttpPost]
        public ActionResult IncomeReport(string searchText)
        {
            int paymentType = (int)PaymentTypes.Income;
            if (Request.IsAjaxRequest())
            {
                return PartialView("PaymentListUserControl", MasterModels.GetPaymentList(paymentType));
            }
            return View();
        }

        public ActionResult ExpenseReport()
        {
            int paymentType = (int)PaymentTypes.Expense;
            ViewData.Model = MasterModels.GetPaymentList(paymentType);
            return View();
        }

        [HttpPost]
        public ActionResult ExpenseReport(string searchText)
        {
            int paymentType = (int)PaymentTypes.Expense;
            if (Request.IsAjaxRequest())
            {
                return PartialView("PaymentListUserControl", MasterModels.GetPaymentList(paymentType));
            }
            return View();
        }

        public ActionResult Batchs(string branch)
        {
            ViewData.Model = CourseModels.GetBatchList();
            return View();
        }

        public ActionResult Ledgers()
        {
            ViewData.Model = MasterModels.GetLedgerMasterList();
            return View();
        }

    }
}
