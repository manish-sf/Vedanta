using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Vedanta.Models;
using System.Web.Security;
namespace Vedanta.Controllers
{
    public class EmployeeController : Controller
    {
        //
        // GET: /Employee/

        public ActionResult Index()
        {
            return View();
        }

        [Authorize(Roles = "SuperAdmin,Admin,AreaManager,CenterManager")]
        public ActionResult List()
        {
            if (Session["ClientId"] != null)
            {
                if (Roles.IsUserInRole("CenterManager") && Session["BranchId"] != null)
                    ViewData.Model = EmployeeModels.GetEmployeesList((int)Session["ClientId"], (int)Session["BranchId"]);
                else
                    ViewData.Model = EmployeeModels.GetEmployeesList((int)Session["ClientId"]);
            }
            else
            {
                if (Roles.IsUserInRole("SuperAdmin"))
                    ViewData.Model = EmployeeModels.GetEmployeesList();
            }
            return View();
        }

        [HttpPost]
        public ActionResult List(string searchText)
        {
            // string searchText = form["txtSearch"];
            List<vw_Employees> empl = new List<vw_Employees>();
            if (Session["ClientId"] != null)
            {
                if (Roles.IsUserInRole("CenterManager") && Session["BranchId"] != null)
                    empl = EmployeeModels.GetEmployeesList(searchText, (int)Session["ClientId"], (int)Session["BranchId"]);
                else
                    empl = EmployeeModels.GetEmployeesList(searchText, (int)Session["ClientId"], null);
            }
            else
            {
                if (Roles.IsUserInRole("SuperAdmin"))
                    empl = EmployeeModels.GetEmployeesList();
            }

            if (Request.IsAjaxRequest())
            {
                return PartialView("EmployeeListUserControl", empl);
            }
            return View();
        }

        [Authorize(Roles = "SuperAdmin,Admin")]
        public ActionResult Delete(string searchText, string idToDelete)
        {
            int result = 0;
            if (Roles.IsUserInRole("SuperAdmin"))
                result = EmployeeModels.DeleteEmployee(idToDelete);
            else
            {
                if (Session["ClientId"] != null)
                    result = EmployeeModels.DeleteEmployee((int)Session["ClientId"], idToDelete);
            }

            List<vw_Employees> empl = new List<vw_Employees>();
            if (Session["ClientId"] != null)
            {
                empl = EmployeeModels.GetEmployeesList((int)Session["ClientId"]);
            }
            else
            {
                if (Roles.IsUserInRole("SuperAdmin"))
                    empl = EmployeeModels.GetEmployeesList();
            }

            if (Request.IsAjaxRequest())
            {
                return PartialView("EmployeeListUserControl", empl);
            }
            return null;
        }

        [Authorize(Roles = "SuperAdmin,Admin,CenterManager")]
        public ActionResult New()
        {
            ViewData["EmployeeRanks"] = Utilities.GetEmployeeRankNameList();
            if (Session["ClientId"] != null)
            {
                ViewData["Branchs"] = Utilities.GetBranchNameList((int)Session["ClientId"]);
                ViewData["Zones"] = Utilities.GetZoneNameList((int)Session["ClientId"]);
                if (Session["ZoneId"] != null)
                    ViewData["Regions"] = Utilities.GetRegionNameList((int)Session["ClientId"], (int)Session["ZoneId"]);
                else
                    ViewData["Regions"] = Utilities.GetRegionNameList((int)Session["ClientId"], null);

            }
            else
            {
                if (Roles.IsUserInRole("SuperAdmin"))
                    return RedirectToAction("List", "Client");
            }
            ViewData["Genders"] = Utilities.GetGenderNameList();
            ViewData["MaritalStstus"] = Utilities.GetMaritalStatusList();
            ViewData["Qualifications"] = Utilities.GetQualificationList();
            ViewData["States"] = Utilities.GetStateList(Utilities.IndiaCountryCode);
            ViewData["Countries"] = Utilities.GetCountryList();

            return View();
        }

        [HttpPost]
        public ActionResult New(FormCollection form, Employees emp)
        {
            ViewData["EmployeeRanks"] = Utilities.GetEmployeeRankNameList();
            if (Session["ClientId"] != null)
            {
                emp.ClientId = (int)Session["ClientId"];
                if (Session["BranchId"] != null)
                    emp.BranchId = (int)Session["BranchId"];

                ViewData["Branchs"] = Utilities.GetBranchNameList((int)Session["ClientId"]);
                if (Session["ZoneId"] != null)
                    ViewData["Regions"] = Utilities.GetRegionNameList((int)Session["ClientId"], (int)Session["ZoneId"]);
                else
                    ViewData["Regions"] = Utilities.GetRegionNameList((int)Session["ClientId"], null);

                ViewData["Zones"] = Utilities.GetZoneNameList((int)Session["ClientId"]);
            }
            else
            {
                if (Roles.IsUserInRole("SuperAdmin"))
                    return RedirectToAction("List", "Client");
            }
            ViewData["Genders"] = Utilities.GetGenderNameList();
            ViewData["MaritalStstus"] = Utilities.GetMaritalStatusList();
            ViewData["Qualifications"] = Utilities.GetQualificationList();
            ViewData["States"] = Utilities.GetStateList(Utilities.IndiaCountryCode);
            ViewData["Countries"] = Utilities.GetCountryList();

            if (!ModelState.IsValid)
            {
                //ModelState.AddModelError("error", "Employee Id already exists");
                ApplicationMessages msg = new ApplicationMessages("Invalid entry.", MessageType.Error);

                ViewData["Message"] = msg;
                return View();
            }
            int result = EmployeeModels.AddEmployee(emp);

            if (result > 0)
            {
                ApplicationMessages msg = new ApplicationMessages("New Employee saved successfully.", MessageType.Success);
                ViewData["Message"] = msg;
            }
            else if (result == -1)
            {
                ApplicationMessages msg = new ApplicationMessages("Duplicate Employee Id. Please try with new Employee Id.", MessageType.Error);
                ViewData["Message"] = msg;
            }
            else
            {
                ApplicationMessages msg = new ApplicationMessages("Failed to saved employee. Please try again.", MessageType.Faild);
                ViewData["Message"] = msg;
            }
            return View();
        }

        public ActionResult Edit(string id)
        {
            ViewData["EmployeeRanks"] = Utilities.GetEmployeeRankNameList();
            if (Session["ClientId"] != null)
            {
                ViewData["Branchs"] = Utilities.GetBranchNameList((int)Session["ClientId"]);
                ViewData["Zones"] = Utilities.GetZoneNameList((int)Session["ClientId"]);
                if (Session["ZoneId"] != null)
                    ViewData["Regions"] = Utilities.GetRegionNameList((int)Session["ClientId"], (int)Session["ZoneId"]);
                else
                    ViewData["Regions"] = Utilities.GetRegionNameList((int)Session["ClientId"], null);

                ViewData.Model = EmployeeModels.GetEmployeeById(id);
            }
            else
            {
                if (Roles.IsUserInRole("SuperAdmin"))
                    return RedirectToAction("List", "Client");
            }
            ViewData["Genders"] = Utilities.GetGenderNameList();
            ViewData["MaritalStstus"] = Utilities.GetMaritalStatusList();
            ViewData["Qualifications"] = Utilities.GetQualificationList();
            ViewData["States"] = Utilities.GetStateList(Utilities.IndiaCountryCode);
            ViewData["Countries"] = Utilities.GetCountryList();

            return View();
        }

        [HttpPost]
        public ActionResult Edit(FormCollection form, Employees newEmp)
        {
            ViewData["EmployeeRanks"] = Utilities.GetEmployeeRankNameList();
            if (Session["ClientId"] != null)
            {
                newEmp.ClientId = (int)Session["ClientId"];
                // if (Session["BranchId"] != null)
                //     newEmp.BranchId = (int)Session["BranchId"];

                ViewData["Branchs"] = Utilities.GetBranchNameList((int)Session["ClientId"]);
                if (Session["ZoneId"] != null)
                    ViewData["Regions"] = Utilities.GetRegionNameList((int)Session["ClientId"], (int)Session["ZoneId"]);
                else
                    ViewData["Regions"] = Utilities.GetRegionNameList((int)Session["ClientId"], null);

                ViewData["Zones"] = Utilities.GetZoneNameList((int)Session["ClientId"]);
            }
            else
            {
                if (Roles.IsUserInRole("SuperAdmin"))
                    return RedirectToAction("List", "Client");
            }
            ViewData["Genders"] = Utilities.GetGenderNameList();
            ViewData["MaritalStstus"] = Utilities.GetMaritalStatusList();
            ViewData["Qualifications"] = Utilities.GetQualificationList();
            ViewData["States"] = Utilities.GetStateList(Utilities.IndiaCountryCode);
            ViewData["Countries"] = Utilities.GetCountryList();

            if (!ModelState.IsValid)
            {
                //ModelState.AddModelError("error", "Employee Id already exists");
                ApplicationMessages msg = new ApplicationMessages("Invalid entry.", MessageType.Error);
                ViewData["Message"] = msg;
                return View();
            }

            int result = EmployeeModels.UpdateEmployee(newEmp);

            if (result > 0)
            {
                ApplicationMessages msg = new ApplicationMessages("Employee details updated successfully.", MessageType.Success);
                ViewData["Message"] = msg;
            }
            else
            {
                ApplicationMessages msg = new ApplicationMessages("Failed to update. Please try again.", MessageType.Faild);
                ViewData["Message"] = msg;
            }
            return View();
        }
    }
}
