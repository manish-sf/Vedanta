using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Vedanta.Models;
using System.Web.Security;
namespace Vedanta.Controllers
{
    public class AdminController : Controller
    {
        [Authorize]
        public ActionResult Expense()
        {
            int paymentType = (int)PaymentTypes.Expense;
            if (Session["ClientId"] != null)
            {
                ViewData["ExpenseHeads"] = Utilities.GetExpenseHeadNameList((int)Session["ClientId"], paymentType);
                if (!Roles.IsUserInRole("CenterManager"))
                {
                    if (Session["RegionId"] != null)
                        ViewData["Branches"] = Utilities.GetBranchNameList((int)Session["ClientId"], (int)Session["RegionId"]);
                    else
                        ViewData["Branches"] = Utilities.GetBranchNameList((int)Session["ClientId"]);
                }
                else
                {
                    if (Session["BranchId"] != null)
                        ViewData["Branches"] = null;// Utilities.GetBlankBranchNameList();
                    else
                        return RedirectToAction("LogOff", "Account");
                }
            }
            else
            {
                if (Roles.IsUserInRole("SuperAdmin"))
                    return RedirectToAction("List", "Client");
            }
            ViewData["PaymentModes"] = Utilities.GetPaymentModesNameList();
            //ViewData["Branchs"] = Utilities.GetBranchNameList();
            return View();
        }

        [HttpPost]
        public ActionResult Expense(string Submit, FormCollection form, Payments expense)
        {
            int paymentType = (int)PaymentTypes.Expense;
            if (Session["ClientId"] != null)
            {
                ViewData["ExpenseHeads"] = Utilities.GetExpenseHeadNameList((int)Session["ClientId"], paymentType);
                if (!Roles.IsUserInRole("CenterManager"))
                {
                    if (Session["RegionId"] != null)
                        ViewData["Branches"] = Utilities.GetBranchNameList((int)Session["ClientId"], (int)Session["RegionId"]);
                    else
                        ViewData["Branches"] = Utilities.GetBranchNameList((int)Session["ClientId"]);
                }
                else
                {
                    if (Session["BranchId"] != null)
                    {
                        expense.BranchId = (int)Session["BranchId"];
                        ViewData["Branches"] = null;// Utilities.GetBlankBranchNameList();
                    }
                    else
                        return RedirectToAction("LogOff", "Account");
                }

                ViewData["PaymentModes"] = Utilities.GetPaymentModesNameList();
                //ViewData["Branchs"] = Utilities.GetBranchNameList();
                if (!string.IsNullOrEmpty(Submit))
                {
                    string submitButton = string.Empty;
                    submitButton = Submit;
                    switch (submitButton.ToLower())
                    {
                        case "save expense":

                            if (!ModelState.IsValid)
                            {
                                ApplicationMessages msg = new ApplicationMessages("Missing entries. Please check and try again.", MessageType.Error);
                                ViewData["Message"] = msg;
                                return View();
                            }
                            if (expense.Date != null && expense.Amounts > 0)
                            {
                                int result = MasterModels.CreatePayment(expense);
                                if (result > 0)
                                {

                                    // ViewData["ExpenseList"] = MasterModels.GetPaymentList((int)Session["ClientId"], paymentType).OrderByDescending(pl => pl.Id).Take(10).ToList();
                                    ApplicationMessages msg = new ApplicationMessages("Expense Record Added successfully.", MessageType.Success);
                                    ViewData["Message"] = msg;
                                }
                                if (result == -1)
                                {

                                    // ViewData["ExpenseList"] = MasterModels.GetPaymentList((int)Session["ClientId"], paymentType).OrderByDescending(pl => pl.Id).Take(10).ToList();
                                    ApplicationMessages msg = new ApplicationMessages("Voucher Number and Date already found for expense, please modify and try again", MessageType.Information);
                                    ViewData["Message"] = msg;
                                }
                                if (result == 0)
                                {


                                    ApplicationMessages msg = new ApplicationMessages("failed to add expense, please try again", MessageType.Information);
                                    ViewData["Message"] = msg;
                                }

                                if (!Roles.IsUserInRole("CenterManager"))
                                {
                                    ViewData["ExpenseList"] = MasterModels.GetPaymentList((int)Session["ClientId"], paymentType).OrderByDescending(pl => pl.Id).Take(10).ToList();
                                }
                                else
                                {
                                    if (Session["BranchId"] != null)
                                    {
                                        ViewData["ExpenseList"] = MasterModels.GetPaymentList((int)Session["ClientId"], (int)Session["BranchId"], paymentType, true).OrderByDescending(pl => pl.Id).Take(10).ToList();
                                    }
                                    else
                                    {
                                        RedirectToAction("LogOff", "Account");
                                    }
                                }
                            }
                            else
                            {
                                ApplicationMessages msg = new ApplicationMessages("Missing entries. Please check and try again.", MessageType.Error);
                                ViewData["Message"] = msg;
                                return View();
                            }
                            break;

                        case "search..":
                            ViewData["ExpenseList"] = null;
                            if (!string.IsNullOrEmpty(form["txtDateFrom"]) && !string.IsNullOrEmpty(form["txtDateTo"]))
                            {
                                DateTime fromDate = DateTime.MinValue;
                                if (!DateTime.TryParse(form["txtDateFrom"], out fromDate))
                                    fromDate = DateTime.MinValue;

                                DateTime toDate = DateTime.MinValue;
                                if (!DateTime.TryParse(form["txtDateTo"], out toDate))
                                    toDate = DateTime.MinValue;

                                if (fromDate.Date != DateTime.MinValue.Date)
                                {
                                    if (!Roles.IsUserInRole("CenterManager"))
                                    {
                                        ViewData["ExpenseList"] = MasterModels.GetPaymentList((int)Session["ClientId"], paymentType, fromDate, toDate);
                                    }
                                    else
                                    {
                                        if (Session["BranchId"] != null)
                                        {
                                            ViewData["ExpenseList"] = MasterModels.GetPaymentList((int)Session["ClientId"], (int)Session["BranchId"], paymentType, fromDate, toDate, true);
                                        }
                                        else
                                        {
                                            RedirectToAction("LogOff", "Account");
                                        }
                                    }

                                    ViewData["SearchedDateFrom"] = form["txtDateFrom"];
                                    ViewData["SearchedDateTo"] = form["txtDateTo"];
                                }
                            }
                            else
                            {
                                ApplicationMessages msg = new ApplicationMessages("Missing entries. Please check and try again.", MessageType.Error);
                                ViewData["Message"] = msg;
                                return View();
                            }
                            break;
                    }
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
        public ActionResult EditExpense(int id)
        {
            if (Session["ClientId"] != null)
            {
                int paymentType = 0;
                ViewData.Model = MasterModels.GetPaymentDetailsById(id, out paymentType);
                ViewData["ExpenseHeads"] = Utilities.GetExpenseHeadNameList((int)Session["ClientId"], paymentType);
                if (paymentType > 0)
                {
                    switch (paymentType)
                    {
                        case 1:
                            Session["LedgerType"] = "Expense";
                            break;
                        case 2:
                            Session["LedgerType"] = "Income";
                            break;

                    }
                }
                if (!Roles.IsUserInRole("CenterManager"))
                {
                    if (Session["RegionId"] != null)
                        ViewData["Branches"] = Utilities.GetBranchNameList((int)Session["ClientId"], (int)Session["RegionId"]);
                    else
                        ViewData["Branches"] = Utilities.GetBranchNameList((int)Session["ClientId"]);
                }
                else
                {
                    if (Session["BranchId"] != null)
                        ViewData["Branches"] = null;// Utilities.GetBlankBranchNameList();
                    else
                        return RedirectToAction("LogOff", "Account");
                }

            }
            else
            {
                if (Roles.IsUserInRole("SuperAdmin"))
                    return RedirectToAction("List", "Client");
            }
            ViewData["PaymentModes"] = Utilities.GetPaymentModesNameList();
            return View();
        }

        [HttpPost]
        public ActionResult EditExpense(int id, FormCollection form, Payments payment)
        {

            // int paymentType = (int)PaymentTypes.Expense;
            if (Session["ClientId"] != null)
            {
                //ViewData["ExpenseHeads"] = Utilities.GetExpenseHeadNameList((int)Session["ClientId"], paymentType);
                if (!Roles.IsUserInRole("CenterManager"))
                {
                    if (Session["RegionId"] != null)
                        ViewData["Branches"] = Utilities.GetBranchNameList((int)Session["ClientId"], (int)Session["RegionId"]);
                    else
                        ViewData["Branches"] = Utilities.GetBranchNameList((int)Session["ClientId"]);
                }
                else
                {
                    if (Session["BranchId"] != null)
                    {
                        payment.BranchId = (int)Session["BranchId"];
                        ViewData["Branches"] = null;// Utilities.GetBlankBranchNameList();
                    }
                    else
                        return RedirectToAction("LogOff", "Account");
                }
                if (!ModelState.IsValid)
                {
                    ApplicationMessages msg = new ApplicationMessages("Missing entries. Please check and try again.", MessageType.Error);
                    ViewData["Message"] = msg;
                    return View();
                }
                if (payment.Date != null && payment.Amounts > 0)
                {
                    int result = MasterModels.EditPayment(payment);
                    if (result > 0)
                    {

                        // ViewData["ExpenseList"] = MasterModels.GetPaymentList((int)Session["ClientId"], paymentType).OrderByDescending(pl => pl.Id).Take(10).ToList();
                        ApplicationMessages msg = new ApplicationMessages("Record updated successfully.", MessageType.Success);
                        ViewData["Message"] = msg;
                    }
                    if (result == -1)
                    {

                        // ViewData["ExpenseList"] = MasterModels.GetPaymentList((int)Session["ClientId"], paymentType).OrderByDescending(pl => pl.Id).Take(10).ToList();
                        ApplicationMessages msg = new ApplicationMessages("Same Voucher Number and Date already found, please modify and try again", MessageType.Information);
                        ViewData["Message"] = msg;
                    }
                    if (result == 0)
                    {
                        ApplicationMessages msg = new ApplicationMessages("failed to update record, please try again", MessageType.Information);
                        ViewData["Message"] = msg;
                    }
                }
                else
                {
                    ApplicationMessages msg = new ApplicationMessages("Missing entries. Please check and try again.", MessageType.Error);
                    ViewData["Message"] = msg;
                    return View();
                }
                //ViewData.Model = MasterModels.GetPaymentDetailsById(id);
                int paymentType = 0;
                ViewData.Model = MasterModels.GetPaymentDetailsById(id, out paymentType);
                ViewData["ExpenseHeads"] = Utilities.GetExpenseHeadNameList((int)Session["ClientId"], paymentType);
            }
            else
            {
                if (Roles.IsUserInRole("SuperAdmin"))
                    return RedirectToAction("List", "Client");
            }
            ViewData["PaymentModes"] = Utilities.GetPaymentModesNameList();
            return View();
        }

        [Authorize]
        public ActionResult Income()
        {
            int paymentType = (int)PaymentTypes.Income;
            if (Session["ClientId"] != null)
            {
                ViewData["ExpenseHeads"] = Utilities.GetExpenseHeadNameList((int)Session["ClientId"], paymentType);
                if (!Roles.IsUserInRole("CenterManager"))
                {
                    if (Session["RegionId"] != null)
                        ViewData["Branches"] = Utilities.GetBranchNameList((int)Session["ClientId"], (int)Session["RegionId"]);
                    else
                        ViewData["Branches"] = Utilities.GetBranchNameList((int)Session["ClientId"]);
                }
                else
                {
                    if (Session["BranchId"] != null)
                        ViewData["Branches"] = null;// Utilities.GetBlankBranchNameList();
                    else
                        return RedirectToAction("LogOff", "Account");
                }
            }
            else
            {
                if (Roles.IsUserInRole("SuperAdmin"))
                    return RedirectToAction("List", "Client");
            }

            ViewData["PaymentModes"] = Utilities.GetPaymentModesNameList();
            //ViewData["Branchs"] = Utilities.GetBranchNameList();
            return View();
        }

        [HttpPost]
        public ActionResult Income(string Submit, FormCollection form, Payments income)
        {
            int paymentType = (int)PaymentTypes.Income;
            if (Session["ClientId"] != null)
            {
                ViewData["ExpenseHeads"] = Utilities.GetExpenseHeadNameList((int)Session["ClientId"], paymentType);
                if (!Roles.IsUserInRole("CenterManager"))
                {
                    if (Session["RegionId"] != null)
                        ViewData["Branches"] = Utilities.GetBranchNameList((int)Session["ClientId"], (int)Session["RegionId"]);
                    else
                        ViewData["Branches"] = Utilities.GetBranchNameList((int)Session["ClientId"]);
                }
                else
                {
                    if (Session["BranchId"] != null)
                    {
                        income.BranchId = (int)Session["BranchId"];
                        ViewData["Branches"] = null;// Utilities.GetBlankBranchNameList();
                    }
                    else
                        return RedirectToAction("LogOff", "Account");
                }

                ViewData["PaymentModes"] = Utilities.GetPaymentModesNameList();
                //ViewData["Branchs"] = Utilities.GetBranchNameList();

                if (!string.IsNullOrEmpty(Submit))
                {
                    string submitButton = string.Empty;
                    submitButton = Submit;
                    switch (submitButton.ToLower())
                    {
                        case "save income":
                            if (!ModelState.IsValid)
                            {
                                ApplicationMessages msg = new ApplicationMessages("Missing entries. Please check and try again.", MessageType.Error);
                                ViewData["Message"] = msg;
                                return View();
                            }
                            if (income.Amounts > 0 && income.Date != null)
                            {
                                if (MasterModels.CreatePayment(income) > 0)
                                {
                                    if (!Roles.IsUserInRole("CenterManager"))
                                    {
                                        ViewData["ExpenseList"] = MasterModels.GetPaymentList((int)Session["ClientId"], paymentType).OrderByDescending(pl => pl.Id).Take(10).ToList();
                                    }
                                    else
                                    {
                                        if (Session["BranchId"] != null)
                                        {
                                            ViewData["ExpenseList"] = MasterModels.GetPaymentList((int)Session["ClientId"], (int)Session["BranchId"], paymentType, true).OrderByDescending(pl => pl.Id).Take(10).ToList();
                                        }
                                        else
                                        {
                                            RedirectToAction("LogOff", "Account");
                                        }
                                    }

                                    ApplicationMessages msg = new ApplicationMessages("Income Record Added successfully.", MessageType.Success);
                                    ViewData["Message"] = msg;
                                }
                            }
                            else
                            {
                                ApplicationMessages msg = new ApplicationMessages("Missing entries. Please check and try again.", MessageType.Error);
                                ViewData["Message"] = msg;
                                return View();
                            }
                            break;

                        case "search..":
                            ViewData["ExpenseList"] = null;
                            if (!string.IsNullOrEmpty(form["txtDateFrom"]) && !string.IsNullOrEmpty(form["txtDateTo"]))
                            {
                                DateTime fromDate = DateTime.MinValue;
                                if (!DateTime.TryParse(form["txtDateFrom"], out fromDate))
                                    fromDate = DateTime.MinValue;

                                DateTime toDate = DateTime.MinValue;
                                if (!DateTime.TryParse(form["txtDateTo"], out toDate))
                                    toDate = DateTime.MinValue;

                                if (fromDate.Date != DateTime.MinValue.Date)
                                {
                                    if (!Roles.IsUserInRole("CenterManager"))
                                    {
                                        ViewData["ExpenseList"] = MasterModels.GetPaymentList((int)Session["ClientId"], paymentType, fromDate, toDate);
                                    }
                                    else
                                    {
                                        if (Session["BranchId"] != null)
                                        {
                                            ViewData["ExpenseList"] = MasterModels.GetPaymentList((int)Session["ClientId"], (int)Session["BranchId"], paymentType, fromDate, toDate, true);
                                        }
                                        else
                                        {
                                            RedirectToAction("LogOff", "Account");
                                        }
                                    }
                                    // ViewData["ExpenseList"] = MasterModels.GetPaymentList((int)Session["ClientId"], paymentType, fromDate, toDate);
                                    ViewData["SearchedDateFrom"] = form["txtDateFrom"];
                                    ViewData["SearchedDateTo"] = form["txtDateTo"];
                                }
                            }
                            else
                            {
                                ApplicationMessages msg = new ApplicationMessages("Missing entries. Please check and try again.", MessageType.Error);
                                ViewData["Message"] = msg;
                                return View();
                            }

                            break;
                    }
                }
            }
            else
            {
                if (Roles.IsUserInRole("SuperAdmin"))
                    return RedirectToAction("List", "Client");
            }
            return View();
        }

        [Authorize(Roles = "SuperAdmin,Admin")]
        public ActionResult Ledgers()
        {
            ViewData["LedgerTypes"] = Utilities.GetLedgerNameList(0);
            return View();
        }

        //POST: Home/Ledgers
        [HttpPost]
        public ActionResult Ledgers(FormCollection form, EXPENSESHEAD ledger)
        {
            ViewData["LedgerTypes"] = Utilities.GetLedgerNameList(0);
            if (Session["ClientId"] != null)
            {
                ledger.ClientId = (int)Session["ClientId"];
                ledger.OP_BAL = 0;
                if (!ModelState.IsValid)
                {
                    ViewData["Message"] = "Missing entries. Please check and try again.";
                    return View();
                }
                if (ledger.LedgerTypeId != null && !string.IsNullOrEmpty(ledger.CODE) && !string.IsNullOrEmpty(ledger.NAME))
                {
                    if (MasterModels.CreateLedger(ledger) > 0)
                        return RedirectToAction("LedgersList");
                    else
                        ViewData["Message"] = "Invalid Entry..(Please Check for Duplicate or Invalid Entry).";


                }
                else
                    ViewData["Message"] = "Missing entries. Please check and try again.";

            }
            else
            {
                if (Roles.IsUserInRole("SuperAdmin"))
                    return RedirectToAction("List", "Client");
            }
            return View();
        }


        public ActionResult LedgersList()
        {
            if (Session["ClientId"] != null)
                ViewData.Model = MasterModels.GetLedgerMasterList((int)Session["ClientId"]);
            else
                ViewData.Model = MasterModels.GetLedgerMasterList();
            return View();
        }

        [HttpPost]
        public ActionResult LedgersList(FormCollection form)
        {
            if (Session["ClientId"] != null)
                ViewData.Model = MasterModels.GetLedgerMasterList((int)Session["ClientId"]);
            else
                ViewData.Model = MasterModels.GetLedgerMasterList();

            int ledgerId = 0;

            if (!int.TryParse(form["hdnSelectedLedgerId"], out ledgerId))
                ledgerId = 0;

            if (ledgerId > 0)
            {
                if (MasterModels.DeleteLedgerByLedgerId(ledgerId) > 0)
                {
                    ViewData["Message"] = "Ledger Deleted Successfully";
                    ViewData.Model = MasterModels.GetLedgerMasterList();
                }
                else
                {
                    ViewData["Message"] = "This Ledger Cannot Be Deleted.";
                }
            }
            return View();
        }

        #region Ledgers
        //GET: Home/Ledgers

        //GET: Home/EditLedger
        [Authorize(Roles = "SuperAdmin,Admin")]
        public ActionResult EditLedger(int id)
        {

            EXPENSESHEAD ledger = MasterModels.GetLedgerDetailsByLedgerId(id);
            ViewData.Model = ledger;
            if (ledger != null)
                ViewData["LedgerTypes"] = Utilities.GetLedgerNameList((int)ledger.LedgerTypeId);
            return View();
        }

        //POST: Home/EditLedger
        [HttpPost]
        public ActionResult EditLedger(int id, FormCollection form, EXPENSESHEAD ledger)
        {

            try
            {
                if (!ModelState.IsValid)
                    return View();
                if (id > 0)
                {
                    if (MasterModels.UpdateLedger(id, ledger) > 0)
                        ViewData["Message"] = "Ledger Details Updated Successfully.";
                    else
                    {
                        ViewData["Message"] = "Failed to Update Ledger Details.";
                    }
                }
                else
                {
                    ViewData["Message"] = "Failed to Update Ledger Details.";
                }
                // TODO: Add update logic here

                EXPENSESHEAD newledger = MasterModels.GetLedgerDetailsByLedgerId(id);
                ViewData.Model = newledger;
                ViewData["LedgerTypes"] = Utilities.GetLedgerNameList((int)newledger.LedgerTypeId);
                return View();
            }
            catch
            {
                return View();
            }
        }
        #endregion //Ledgers

        #region Batches
        [Authorize]
        public ActionResult NewBatch()
        {
            if (Session["ClientId"] != null)
            {
                if (!Roles.IsUserInRole("CenterManager"))
                {
                    ViewData["Branches"] = Utilities.GetBranchNameList((int)Session["ClientId"]);
                }
                else
                {
                    if (Session["BranchId"] != null)
                    {
                        ViewData["Branches"] = null;// Utilities.GetBlankBranchNameList();
                    }
                    else
                    {
                        return RedirectToAction("LogOff", "Account");
                    }
                }
            }
            else
            {
                if (Roles.IsUserInRole("SuperAdmin"))
                    return RedirectToAction("List", "Client");
            }

            return View();
        }


        [HttpPost]
        public ActionResult NewBatch(FormCollection form, Batches batch)
        {
            try
            {
                if (Session["ClientId"] != null)
                {
                    if (!Roles.IsUserInRole("CenterManager"))
                    {
                        ViewData["Branches"] = Utilities.GetBranchNameList((int)Session["ClientId"]);
                    }
                    else
                    {
                        if (Session["BranchId"] != null)
                        {
                            batch.BranchId = (int)Session["BranchId"];
                            ViewData["Branches"] = null;// Utilities.GetBlankBranchNameList();
                        }
                        else
                        {
                            return RedirectToAction("LogOff", "Account");
                        }
                    }
                }
                else
                {
                    if (Roles.IsUserInRole("SuperAdmin"))
                        return RedirectToAction("List", "Client");
                }

                if (!ModelState.IsValid)
                    return View();
                // TODO: Add insert logic here
                if (CourseModels.CreateNewBatch(batch) > 0)
                    return RedirectToAction("Batchs", "Report");
                else
                    return View();
            }
            catch
            {
                return View();
            }
        }

        [Authorize]
        public ActionResult EditBatch(int id)
        {
            List<vw_BatchList> batches = new List<vw_BatchList>();
            if (Session["ClientId"] != null)
            {

                if (!Roles.IsUserInRole("CenterManager"))
                {
                    batches = CourseModels.GetBatchList((int)Session["ClientId"]);
                    ViewData["Branches"] = Utilities.GetBranchNameList((int)Session["ClientId"]);
                }
                else
                {
                    if (Session["BranchId"] != null)
                    {
                        batches = CourseModels.GetBatchList((int)Session["ClientId"], (int)Session["BranchId"]);
                        ViewData["Branches"] = null;// Utilities.GetBlankBranchNameList();
                    }
                    else
                    {
                        return RedirectToAction("LogOff", "Account");
                    }
                }
            }
            else
            {
                if (Roles.IsUserInRole("SuperAdmin"))
                    return RedirectToAction("List", "Client");
            }

            if (batches != null && batches.Count > 0)
            {
                if (batches.Any(b => b.Id == id))
                {
                    ViewData.Model = CourseModels.GetBatchDetailsById(id);
                    return View();
                }
            }
            return null;
        }

        [HttpPost]
        public ActionResult EditBatch(FormCollection form, Batches batch, int id)
        {
            if (Session["ClientId"] != null)
            {
                if (!Roles.IsUserInRole("CenterManager"))
                {
                    ViewData["Branches"] = Utilities.GetBranchNameList((int)Session["ClientId"]);
                }
                else
                {
                    if (Session["BranchId"] != null)
                    {
                        ViewData["Branches"] = null;// Utilities.GetBlankBranchNameList();
                    }
                    else
                    {
                        return RedirectToAction("LogOff", "Account");
                    }
                }
            }
            else
            {
                if (Roles.IsUserInRole("SuperAdmin"))
                    return RedirectToAction("List", "Client");
            }

            if (!ModelState.IsValid)
                return View();
            if (CourseModels.UpdateBatch(batch) > 0)
            {
                ApplicationMessages msg = new ApplicationMessages("Batch Information updated successfully.", MessageType.Success);
                ViewData["Message"] = msg;
            }

            return View();
        }

        #endregion //Batches

    }
}
