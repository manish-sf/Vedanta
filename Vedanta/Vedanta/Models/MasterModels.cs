using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Vedanta.Models;

namespace Vedanta.Models
{
    public class MasterModels
    {

        //=====================================================================
        #region Ledgers
        public static int CreateLedger(EXPENSESHEAD ledger)
        {
            using (VedantaEntities deo = new VedantaEntities())
            {
                EXPENSESHEAD oldLedger = deo.EXPENSESHEAD.FirstOrDefault(exp => exp.ClientId == ledger.ClientId && ledger.CODE.Equals(exp.CODE, StringComparison.OrdinalIgnoreCase));
                if (oldLedger != null)
                    return 0;
                else
                {
                    if (ledger != null)
                    {
                        deo.AddToEXPENSESHEAD(ledger);
                        return deo.SaveChanges();
                    }
                }
            }
            return 0;
        }

        public static List<vw_ExpenseHeads> GetLedgerMasterList()
        {

            using (VedantaEntities deo = new VedantaEntities())
            {
                return (from ledger in deo.vw_ExpenseHeads
                        select ledger).OrderBy(ld => ld.LedgerType).ToList();
            }
        }

        public static List<vw_ExpenseHeads> GetLedgerMasterList(int clientId)
        {

            using (VedantaEntities deo = new VedantaEntities())
            {
                return (from ledger in deo.vw_ExpenseHeads
                        where ledger.ClientId == clientId
                        select ledger).OrderBy(ld => ld.LedgerType).ToList();
            }
        }
        public static EXPENSESHEAD GetLedgerDetailsByLedgerId(int expId)
        {
            using (VedantaEntities deo = new VedantaEntities())
            {
                return deo.EXPENSESHEAD.FirstOrDefault(exp => exp.Id == expId);
            }
        }

        public static int UpdateLedger(int ledgerId, EXPENSESHEAD newledger)
        {
            using (VedantaEntities deo = new VedantaEntities())
            {
                EXPENSESHEAD oldLedger = deo.EXPENSESHEAD.FirstOrDefault(exp => newledger.CODE.Equals(exp.CODE, StringComparison.OrdinalIgnoreCase));
                if (oldLedger != null)
                {
                    EXPENSESHEAD oldledger = deo.EXPENSESHEAD.FirstOrDefault(rk => rk.Id == ledgerId);
                    if (oldledger != null && newledger != null)
                    {
                        oldledger.CODE = newledger.CODE;
                        oldledger.NAME = newledger.NAME;
                        oldledger.LedgerTypeId = newledger.LedgerTypeId;
                        oldledger.OP_BAL = newledger.OP_BAL;
                        return deo.SaveChanges();
                    }
                }
                else
                    return 0;
            }
            return 0;
        }

        public static int DeleteLedgerByLedgerId(int id)
        {
            using (VedantaEntities islObject = new VedantaEntities())
            {
                Payments payment = islObject.Payments.FirstOrDefault(pmt => pmt.ExpenseHeadId == id);
                if (payment == null)
                {
                    EXPENSESHEAD ledger = islObject.EXPENSESHEAD.FirstOrDefault(rk => rk.Id == id);
                    if (ledger != null)
                    {
                        islObject.DeleteObject(ledger);
                        return islObject.SaveChanges();
                    }
                }
                return 0;
            }
        }
        #endregion //Ledgers
        //=====================================================================

        //=====================================================================
        #region Payments

        public class ExpenseSummaryGroupByHeads
        {
            int expenseHeadId;

            public int ExpenseHeadId
            {
                get { return expenseHeadId; }
                set { expenseHeadId = value; }
            }
            string expenseHead;
            public string ExpenseHead
            {
                get { return expenseHead; }
                set { expenseHead = value; }
            }

            decimal amount;

            public decimal Amount
            {
                get { return amount; }
                set { amount = value; }
            }
        }

        public class ExpenseSummaryGroupByDates
        {
            int expenseHeadId;

            public int ExpenseHeadId
            {
                get { return expenseHeadId; }
                set { expenseHeadId = value; }
            }
            string expenseHead;
            public string ExpenseHead
            {
                get { return expenseHead; }
                set { expenseHead = value; }
            }
            DateTime transDate;

            public DateTime TransDate
            {
                get { return transDate; }
                set { transDate = value; }
            }

            decimal amount;

            public decimal Amount
            {
                get { return amount; }
                set { amount = value; }
            }
        }

        public class ExpenseSummaryGroupByBranchs
        {
            int branchId;

            public int BranchId
            {
                get { return branchId; }
                set { branchId = value; }
            }

            int expenseHeadId;

            public int ExpenseHeadId
            {
                get { return expenseHeadId; }
                set { expenseHeadId = value; }
            }


            string expenseHead;
            public string ExpenseHead
            {
                get { return expenseHead; }
                set { expenseHead = value; }
            }

            decimal amount;

            public decimal Amount
            {
                get { return amount; }
                set { amount = value; }
            }
        }

        public class AccountSumaryBranchWise
        {
            int _branchId;

            public int BranchId
            {
                get { return _branchId; }
                set { _branchId = value; }
            }
            string _branchName;

            public string BranchName
            {
                get { return _branchName; }
                set { _branchName = value; }
            }
            decimal _expenseAmount;

            public decimal ExpenseAmount
            {
                get { return _expenseAmount; }
                set { _expenseAmount = value; }
            }
            decimal incomeAmount;

            public decimal IncomeAmount
            {
                get { return incomeAmount; }
                set { incomeAmount = value; }
            }
        }


        public class CollectionSummaryBranchWise
        {
            int branchId;

            public int BranchId
            {
                get { return branchId; }
                set { branchId = value; }
            }

            string branchName;

            public string BranchName
            {
                get { return branchName; }
                set { branchName = value; }
            }
            string courseName;

            public string CourseName
            {
                get { return courseName; }
                set { courseName = value; }
            }
            decimal amount;

            public decimal Amount
            {
                get { return amount; }
                set { amount = value; }
            }
        }

        public class NewAdmissionSummaryBranchWise
        {
            int branchId;

            public int BranchId
            {
                get { return branchId; }
                set { branchId = value; }
            }

            string branchName;

            public string BranchName
            {
                get { return branchName; }
                set { branchName = value; }
            }
            string courseName;

            public string CourseName
            {
                get { return courseName; }
                set { courseName = value; }
            }

            int _admCount;

            public int AdmCount
            {
                get { return _admCount; }
                set { _admCount = value; }
            }

            decimal amount;
            public decimal Amount
            {
                get { return amount; }
                set { amount = value; }
            }
        }

        public static int CreatePayment(Payments payment)
        {
            using (VedantaEntities deo = new VedantaEntities())
            {
                if (payment != null)
                {
                    Payments oldPayments = deo.Payments.FirstOrDefault(py => py.BranchId == payment.BranchId && payment.Date == py.Date && payment.VoucherNo.Equals(py.VoucherNo, StringComparison.OrdinalIgnoreCase));
                    if (oldPayments == null)
                    {
                        deo.AddToPayments(payment);
                        return deo.SaveChanges();
                    }
                    else
                        return -1;
                }
            }
            return 0;
        }

        public static Payments GetPaymentDetailsById(int id, out int paymentType)
        {
            using (VedantaEntities deo = new VedantaEntities())
            {
                vw_PaymentList plist = deo.vw_PaymentList.FirstOrDefault(pl => pl.Id == id);
                if (plist != null)
                    paymentType = (int)plist.LedgerTypeId;
                else paymentType = 0;

                return deo.Payments.FirstOrDefault(py => py.Id == id);
            }
        }

        public static int EditPayment(Payments payment)
        {
            using (VedantaEntities deo = new VedantaEntities())
            {
                if (payment != null)
                {
                    Payments oldPayment = deo.Payments.FirstOrDefault(py => py.Id == payment.Id);
                    if (oldPayment != null)
                    {
                        Payments existingPayment = deo.Payments.FirstOrDefault(py => py.BranchId == payment.BranchId && py.Id != payment.Id && payment.Date == py.Date && payment.VoucherNo.Equals(py.VoucherNo, StringComparison.OrdinalIgnoreCase));
                        if (existingPayment == null)
                        {
                            oldPayment.Amounts = payment.Amounts;
                            oldPayment.BANK = payment.BANK;
                            oldPayment.BranchId = payment.BranchId;
                            oldPayment.CHQ_DATE = payment.CHQ_DATE;
                            oldPayment.CHQ_NO = payment.CHQ_NO;
                            oldPayment.Date = payment.Date;
                            oldPayment.ExpenseHeadId = payment.ExpenseHeadId;
                            oldPayment.Narration = payment.Narration;
                            oldPayment.PaidTo = payment.PaidTo;
                            oldPayment.PaymentModeId = payment.PaymentModeId;
                            oldPayment.Remarks = payment.Remarks;
                            oldPayment.VoucherNo = payment.VoucherNo;
                            return deo.SaveChanges();
                        }
                        else
                            return -1;//same voucher number and same date exits for this branch.
                    }
                }
            }
            return 0;
        }

        public static List<vw_PaymentList> SearchPaymentList(int clinetId, int paymentType, DateTime dateFrom, DateTime dateTo, string strExpHead, string strExpPaidTo, string strExpNaration, string strExpRemarks)
        {
            using (VedantaEntities deo = new VedantaEntities())
            {
                bool canSeeFrenchisesRecord = false;
                ClientSettings clientSettings = deo.ClientSettings.FirstOrDefault(cs => cs.ClientId == clinetId);
                if (clientSettings != null)
                    canSeeFrenchisesRecord = clientSettings.CanSeeFrenchisesAccount ?? true;

                if (canSeeFrenchisesRecord == true)
                {
                    return (from payment in deo.vw_PaymentList
                            where payment.ClientId == clinetId && payment.LedgerTypeId == paymentType &&
                             (payment.Date >= dateFrom.Date && payment.Date >= dateTo.Date) ||
                           (payment.ExpenseHeadName.StartsWith(strExpHead, StringComparison.OrdinalIgnoreCase) ||
                           payment.PaidTo.StartsWith(strExpPaidTo, StringComparison.OrdinalIgnoreCase) ||
                           payment.Narration.StartsWith(strExpNaration, StringComparison.OrdinalIgnoreCase) ||
                           payment.Remarks.StartsWith(strExpRemarks, StringComparison.OrdinalIgnoreCase))
                            select payment).ToList();
                }
                else
                {
                    return (from payment in deo.vw_PaymentList
                            where payment.ClientId == clinetId && payment.LedgerTypeId == paymentType &&
                             (payment.Date >= dateFrom.Date && payment.Date <= dateTo.Date) ||
                           ((payment.BranchId == null || (payment.BranchId != null && payment.BranchTypeId == 1)) &&
                            (payment.ExpenseHeadName.StartsWith(strExpHead) ||
                           payment.PaidTo.StartsWith(strExpPaidTo) ||
                           payment.Narration.StartsWith(strExpNaration) ||
                           payment.Remarks.StartsWith(strExpRemarks)))
                            select payment).ToList();
                }
            }
        }

        public static List<vw_PaymentList> SearchPaymentList(int clinetId, int branchId, int paymentType, DateTime dateFrom, DateTime dateTo, string strExpHead, string strExpPaidTo, string strExpNaration, string strExpRemarks, bool isBranchSession = false)
        {
            using (VedantaEntities deo = new VedantaEntities())
            {
                bool canSeeFrenchisesRecord = false;
                ClientSettings clientSettings = deo.ClientSettings.FirstOrDefault(cs => cs.ClientId == clinetId);
                if (clientSettings != null)
                    canSeeFrenchisesRecord = clientSettings.CanSeeFrenchisesAccount ?? true;

                if (isBranchSession == true || canSeeFrenchisesRecord == true)
                {
                    return (from payment in deo.vw_PaymentList
                            where payment.ClientId == clinetId && payment.LedgerTypeId == paymentType &&
                             payment.BranchId == branchId &&
                          (payment.Date >= dateFrom.Date && payment.Date <= dateTo.Date) ||
                           ((!string.IsNullOrEmpty(strExpHead) && payment.ExpenseHeadName.StartsWith(strExpHead)) ||
                             (!string.IsNullOrEmpty(strExpPaidTo) && payment.PaidTo.StartsWith(strExpPaidTo)) ||
                             (!string.IsNullOrEmpty(strExpNaration) && payment.Narration.StartsWith(strExpNaration)) ||
                            (!string.IsNullOrEmpty(strExpRemarks) && payment.Remarks.StartsWith(strExpRemarks))
                           )
                            select payment).ToList();
                }
                else
                {
                    return (from payment in deo.vw_PaymentList
                            where payment.ClientId == clinetId && payment.LedgerTypeId == paymentType &&
                            payment.BranchId == branchId && payment.BranchTypeId == 1 &&
                             (payment.Date >= dateFrom.Date && payment.Date <= dateTo.Date) ||
                           ((!string.IsNullOrEmpty(strExpHead) && payment.ExpenseHeadName.StartsWith(strExpHead)) ||
                             (!string.IsNullOrEmpty(strExpPaidTo) && payment.PaidTo.StartsWith(strExpPaidTo)) ||
                             (!string.IsNullOrEmpty(strExpNaration) && payment.Narration.StartsWith(strExpNaration)) ||
                            (!string.IsNullOrEmpty(strExpRemarks) && payment.Remarks.StartsWith(strExpRemarks))
                           )
                            select payment).ToList();
                }
            }
        }

        public static List<vw_PaymentList> GetPaymentList(int clinetId, int paymentType, DateTime fromDate, DateTime DateTo)
        {
            using (VedantaEntities deo = new VedantaEntities())
            {
                bool canSeeFrenchisesRecord = false;
                ClientSettings clientSettings = deo.ClientSettings.FirstOrDefault(cs => cs.ClientId == clinetId);
                if (clientSettings != null)
                    canSeeFrenchisesRecord = clientSettings.CanSeeFrenchisesAccount ?? true;

                if (canSeeFrenchisesRecord == false)
                {
                    return (from payment in deo.vw_PaymentList
                            where payment.ClientId == clinetId && payment.LedgerTypeId == paymentType &&
                           (payment.BranchId == null || (payment.BranchId != null && payment.BranchTypeId == 1)) &&
                            payment.Date >= fromDate.Date &&
                            payment.Date <= DateTo.Date
                            select payment).ToList();
                }
                else
                {
                    return (from payment in deo.vw_PaymentList
                            where payment.ClientId == clinetId && payment.LedgerTypeId == paymentType &&
                            payment.Date >= fromDate.Date &&
                            payment.Date <= DateTo.Date
                            select payment).ToList();
                }
            }
        }

        public static List<vw_PaymentList> GetPaymentList(int clinetId, int paymentType)
        {
            using (VedantaEntities deo = new VedantaEntities())
            {
                bool canSeeFrenchisesRecord = false;
                ClientSettings clientSettings = deo.ClientSettings.FirstOrDefault(cs => cs.ClientId == clinetId);
                if (clientSettings != null)
                    canSeeFrenchisesRecord = clientSettings.CanSeeFrenchisesAccount ?? true;

                if (canSeeFrenchisesRecord == false)
                {
                    return (from payment in deo.vw_PaymentList
                            where payment.ClientId == clinetId && payment.LedgerTypeId == paymentType
                            select payment).ToList();
                }
                else
                {
                    return (from payment in deo.vw_PaymentList
                            where payment.ClientId == clinetId && payment.LedgerTypeId == paymentType &&
                           (payment.BranchId == null || (payment.BranchId != null && payment.BranchTypeId == 1))
                            select payment).ToList();
                }
            }
        }

        public static List<vw_PaymentList> GetHeadWisePaymentList(int clinetId, int paymentType, int headId, DateTime fromDate, DateTime DateTo)
        {
            using (VedantaEntities deo = new VedantaEntities())
            {
                bool canSeeFrenchisesRecord = false;
                ClientSettings clientSettings = deo.ClientSettings.FirstOrDefault(cs => cs.ClientId == clinetId);
                if (clientSettings != null)
                    canSeeFrenchisesRecord = clientSettings.CanSeeFrenchisesAccount ?? true;

                if (canSeeFrenchisesRecord == false)
                {
                    return (from payment in deo.vw_PaymentList
                            where payment.ClientId == clinetId && payment.LedgerTypeId == paymentType && payment.ExpenseHeadId == headId &&
                           (payment.BranchId == null || (payment.BranchId != null && payment.BranchTypeId == 1)) &&
                            payment.Date >= fromDate.Date &&
                            payment.Date <= DateTo.Date
                            select payment).ToList();
                }
                else
                {
                    return (from payment in deo.vw_PaymentList
                            where payment.ClientId == clinetId && payment.LedgerTypeId == paymentType && payment.ExpenseHeadId == headId &&
                            payment.Date >= fromDate.Date &&
                            payment.Date <= DateTo.Date
                            select payment).ToList();
                }
            }
        }

        public static List<vw_PaymentList> GetHeadWisePaymentList(int clinetId, int branchId, int paymentType, int headId, DateTime fromDate, DateTime DateTo, bool isBranchSession = false)
        {
            using (VedantaEntities deo = new VedantaEntities())
            {
                bool canSeeFrenchisesRecord = false;
                ClientSettings clientSettings = deo.ClientSettings.FirstOrDefault(cs => cs.ClientId == clinetId);
                if (clientSettings != null)
                    canSeeFrenchisesRecord = clientSettings.CanSeeFrenchisesAccount ?? true;

                if (isBranchSession == true || canSeeFrenchisesRecord == true)
                {
                    return (from payment in deo.vw_PaymentList
                            where payment.ClientId == clinetId && payment.LedgerTypeId == paymentType && payment.ExpenseHeadId == headId &&
                            payment.BranchId == branchId &&
                            payment.Date >= fromDate.Date &&
                            payment.Date <= DateTo.Date
                            select payment).ToList();
                }
                else
                {
                    return (from payment in deo.vw_PaymentList
                            where payment.ClientId == clinetId && payment.LedgerTypeId == paymentType && payment.ExpenseHeadId == headId &&
                            payment.BranchId == branchId && payment.BranchTypeId == 1 &&
                            payment.Date >= fromDate.Date &&
                            payment.Date <= DateTo.Date
                            select payment).ToList();
                }
            }
        }

        public static List<vw_PaymentList> GetPaymentList(int clinetId, int branchId, int paymentType, DateTime fromDate, DateTime DateTo, bool isBranchSession = false)
        {
            using (VedantaEntities deo = new VedantaEntities())
            {
                bool canSeeFrenchisesRecord = false;
                ClientSettings clientSettings = deo.ClientSettings.FirstOrDefault(cs => cs.ClientId == clinetId);
                if (clientSettings != null)
                    canSeeFrenchisesRecord = clientSettings.CanSeeFrenchisesAccount ?? true;

                if (isBranchSession == true || canSeeFrenchisesRecord == true)
                {
                    return (from payment in deo.vw_PaymentList
                            where payment.ClientId == clinetId && payment.LedgerTypeId == paymentType &&
                            payment.BranchId == branchId &&
                            payment.Date >= fromDate.Date &&
                            payment.Date <= DateTo.Date
                            select payment).ToList();
                }
                else
                {
                    return (from payment in deo.vw_PaymentList
                            where payment.ClientId == clinetId && payment.LedgerTypeId == paymentType &&
                            payment.BranchId == branchId && payment.BranchTypeId == 1 &&
                            payment.Date >= fromDate.Date &&
                            payment.Date <= DateTo.Date
                            select payment).ToList();
                }
            }
        }

        public static List<vw_PaymentList> GetPaymentList(int clinetId, int branchId, int paymentType, bool isBranchSession = false)
        {
            using (VedantaEntities deo = new VedantaEntities())
            {
                bool canSeeFrenchisesRecord = false;
                ClientSettings clientSettings = deo.ClientSettings.FirstOrDefault(cs => cs.ClientId == clinetId);
                if (clientSettings != null)
                    canSeeFrenchisesRecord = clientSettings.CanSeeFrenchisesAccount ?? true;

                if (isBranchSession == true || canSeeFrenchisesRecord == true)
                {
                    return (from payment in deo.vw_PaymentList
                            where payment.ClientId == clinetId && payment.LedgerTypeId == paymentType &&
                            payment.BranchId == branchId
                            select payment).ToList();
                }
                else
                {
                    return (from payment in deo.vw_PaymentList
                            where payment.ClientId == clinetId && payment.LedgerTypeId == paymentType &&
                            payment.BranchId == branchId && payment.BranchTypeId == 1
                            select payment).ToList();
                }
            }
        }

        public static List<vw_PaymentList> GetExpenseSummary(int clinetId, int branchId, int paymentType)
        {
            using (VedantaEntities deo = new VedantaEntities())
            {
                //   return deo.vw_PaymentList.Where(pl => pl.ClientId == clinetId && pl.BranchId == branchId && pl.LedgerTypeId == paymentType).GroupBy(p => new { p.Date, p.ExpenseHeadName }).ToList();
            }
            return null;
        }


        public static int DeletePaymentsById(int id)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                Payments oldPayment = ve.Payments.FirstOrDefault(cs => cs.Id == id);
                if (oldPayment != null)
                {
                    ve.DeleteObject(oldPayment);
                    return ve.SaveChanges();
                }
                return 0;
            }
        }
        #endregion //Payments
        //==============================================================


        #region SMS
        public static int SendSMS(SMSNotices newSmsNotice)
        {
            using (VedantaEntities ve = new VedantaEntities())
            {
                if (newSmsNotice != null)
                {
                    ve.AddToSMSNotices(newSmsNotice);
                    return ve.SaveChanges();
                }
                return 0;
            }
        }
        #endregion //SMS

        #region Summary Reports
        /// <summary>
        /// returns All Collection Summary BranchWise of a given Client
        /// </summary>
        /// <param name="clientId"></param>
        /// <param name="branchId"></param>
        /// <returns></returns>
        //public static List<vw_CollectionSummaryBranchWise> GetCollectionSummaryBranchWise(int clientId, int? branchId)
        //{
        //    using (VedantaEntities ve = new VedantaEntities())
        //    {
        //        List<vw_CollectionSummaryBranchWise> feeCols = ve.vw_CollectionSummaryBranchWise.Where(fc => fc.ClientId == clientId).ToList();
        //        if (branchId == null)
        //        {
        //            return feeCols;
        //        }
        //        return feeCols.Where(fc => fc.BranchId == (int)branchId).ToList();
        //    }
        //}

        /// <summary>
        /// returns All Collection Summary BranchWise of a given Client and Date Range
        /// </summary>
        /// <param name="fromDate"></param>
        /// <param name="toDate"></param>
        /// <param name="clientId"></param>
        /// <param name="branchId"></param>
        /// <returns></returns>
        //public static List<vw_CollectionSummaryBranchWise> GetCollectionSummaryBranchWise(DateTime fromDate, DateTime toDate, int clientId, int? branchId)
        //{
        //    using (VedantaEntities ve = new VedantaEntities())
        //    {
        //        List<vw_CollectionSummaryBranchWise> feeCols = ve.vw_CollectionSummaryBranchWise.Where(fc => fc.ClientId == clientId && fc.PaymentDate.Value >= fromDate.Date && fc.PaymentDate.Value <= toDate.Date).ToList();
        //        if (branchId == null)
        //        {
        //            return feeCols;
        //        }
        //        return feeCols.Where(fc => fc.BranchId == (int)branchId).ToList();
        //    }
        //}

        /// <summary>
        /// returns Admission Summary BranchWise of given Client
        /// </summary>
        /// <param name="clientId"></param>
        /// <param name="branchId"></param>
        /// <returns></returns>
        //public static List<vw_NewAdmissionSummaryBranchWise> GetAdmissionSummaryBranchWise(int clientId, int? branchId)
        //{
        //    using (VedantaEntities ve = new VedantaEntities())
        //    {
        //        List<vw_NewAdmissionSummaryBranchWise> feeCols = ve.vw_NewAdmissionSummaryBranchWise.Where(fc => fc.ClientId == clientId).ToList();
        //        if (branchId == null)
        //        {
        //            return feeCols;
        //        }
        //        return feeCols.Where(fc => fc.BranchId == (int)branchId).ToList();
        //    }
        //}

        /// <summary>
        /// returns Admission Summary BranchWise of given Client and Date Range
        /// </summary>
        /// <param name="fromDate"></param>
        /// <param name="toDate"></param>
        /// <param name="clientId"></param>
        /// <param name="branchId"></param>
        /// <returns></returns>
        //public static List<vw_NewAdmissionSummaryBranchWise> GetAdmissionSummaryBranchWise(DateTime fromDate, DateTime toDate, int clientId, int? branchId)
        //{
        //    using (VedantaEntities ve = new VedantaEntities())
        //    {
        //        List<vw_NewAdmissionSummaryBranchWise> feeCols = ve.vw_NewAdmissionSummaryBranchWise.Where(fc => fc.ClientId == clientId && fc.AdmissionDate.Value >= fromDate.Date && fc.AdmissionDate.Value <= toDate.Date).ToList();
        //        if (branchId == null)
        //        {
        //            return feeCols;
        //        }
        //        return feeCols.Where(fc => fc.BranchId == (int)branchId).ToList();
        //    }
        //}

        /// <summary>
        /// returns Account Summary BranchWise for a given Client 
        /// </summary>
        /// <param name="clientId"></param>
        /// <param name="branchId"></param>
        /// <returns></returns>
        //public static List<Vw_AccountSummaryBranchWise> GetAccountSummaryBranchWise(int clientId, int? branchId)
        //{
        //    using (VedantaEntities ve = new VedantaEntities())
        //    {
        //        List<Vw_AccountSummaryBranchWise> feeCols = ve.Vw_AccountSummaryBranchWise.Where(fc => fc.ClientId == clientId).ToList();
        //        if (branchId == null)
        //        {
        //            return feeCols;
        //        }
        //        return feeCols.Where(fc => fc.BranchId == (int)branchId).ToList();
        //    }
        //}

        /// <summary>
        /// returns Account Summary BranchWise for a given Client and Date Range
        /// </summary>
        /// <param name="fromDate"></param>
        /// <param name="toDate"></param>
        /// <param name="clientId"></param>
        /// <param name="branchId"></param>
        /// <returns></returns>
        //public static List<Vw_AccountSummaryBranchWise> GetAccountSummaryBranchWise(DateTime fromDate, DateTime toDate, int clientId, int? branchId)
        //{
        //    using (VedantaEntities ve = new VedantaEntities())
        //    {
        //        List<Vw_AccountSummaryBranchWise> feeCols = ve.Vw_AccountSummaryBranchWise.Where(fc => fc.ClientId == clientId && fc.Date.Value >= fromDate.Date && fc.Date.Value <= toDate).ToList();
        //        if (branchId == null)
        //        {
        //            return feeCols;
        //        }
        //        return feeCols.Where(fc => fc.BranchId == (int)branchId).ToList();
        //    }
        //}
        #endregion //Summary Reports
    }
}