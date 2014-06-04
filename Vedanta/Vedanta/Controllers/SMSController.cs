using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Vedanta.Models;
namespace Vedanta.Controllers
{
    public class SMSController : Controller
    {
        //
        // GET: /SMS/
        public ActionResult Index()
        {
            return View();
        }

        // GET: /SMS/
        public ActionResult BulkNotice()
        {
            return View();
        }

        // GET: /SMS/
        public ActionResult Notification()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Notification(FormCollection form, SMSNotices newSMS)
        {

            if (!ModelState.IsValid)
            {
                ApplicationMessages msg = new ApplicationMessages("Message Sent failed.", MessageType.Faild);
                ViewData["Message"] = msg;
                return View();
            }

            string cell = string.Empty;
            if (newSMS.MobileNumber.Length > 10)
                cell = "91" + newSMS.MobileNumber.Substring(newSMS.MobileNumber.Length - 10, 10);
            else
            {
                if (newSMS.MobileNumber.Length == 10)
                    cell = "91" + newSMS.MobileNumber.Substring(0, 10);
            }
            if (!string.IsNullOrEmpty(cell))
            {
                ViewData["SendString"] = "http://199.189.250.157/smsclient/api.php?username=scan&password=27963108&source=senderid&dmobile=" + cell + "&message=" + newSMS.SMSText;
                if (MasterModels.SendSMS(newSMS) > 0)
                {
                    ApplicationMessages msg1 = new ApplicationMessages("Message Sent successfully.", MessageType.Success);
                    ViewData["Message"] = msg1;
                }
                else
                {
                    ApplicationMessages msg = new ApplicationMessages("Message Sent failed.", MessageType.Faild);
                    ViewData["Message"] = msg;
                }
            }
            else
            {
                ApplicationMessages msg = new ApplicationMessages("Invalid Mobile Number.", MessageType.Faild);
                ViewData["Message"] = msg;
            }

            return View();
        }

        // GET: /SMS/
        public ActionResult Report()
        {
            return View();
        }

        public ActionResult BatchSMS()
        {
            return View();
        }
    }
}
