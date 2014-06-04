using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Vedanta.Models;

using System.Web.Security;
namespace Vedanta.Controllers
{
    public class BranchController : Controller
    {
        //
        // GET: /Branch/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult BranchLogoLoader(int id)
        {
            Branches oldclient = BranchModels.GetBranchById(id);
            if (oldclient != null && oldclient.Logo != null)
            {
                var q = oldclient.Logo;

                byte[] cover = q;
                // byte[] studentPhoto = StudentModels.GetStudentPhoto(id);

                if (cover != null)
                    return File(cover, "image/jpg");
            }
            return null;
        }

        //
        // GET: /Branch/Details/5
        [Authorize]
        public ActionResult Details(int? id)
        {
            if (Session["ClientId"] != null)
            {
                if (Roles.IsUserInRole("CenterManager"))
                {
                    if (Session["BranchId"] != null)
                        ViewData.Model = BranchModels.GetBranchDetailsById((int)Session["BranchId"]);
                    else
                        ViewData.Model = null;
                }
                else
                {
                    List<vw_Branches> brList = new List<vw_Branches>();
                    brList = BranchModels.GetBranchesList((int)Session["ClientId"]);
                    if (brList.Any(bl => bl.Id == id))
                    {
                        ViewData.Model = BranchModels.GetBranchDetailsById((int)id);
                    }
                    else
                        ViewData.Model = null;

                }
            }
            return View();
        }

        //
        // GET: /Branch/Create
        [Authorize(Roles = "SuperAdmin,Admin")]
        public ActionResult NewBranch()
        {
            ViewData["BranchTypes"] = Utilities.GetBranchTypeList();
            ViewData["States"] = Utilities.GetStateList(Utilities.IndiaCountryCode);
            ViewData["Countries"] = Utilities.GetCountryList();
            if (Session["ClientId"] != null)
            {
                vw_ClientList clientDetails = ClientModels.GetClientDetailsById((int)Session["ClientId"]);
                int branchCount = BranchModels.GetBranchesList((int)Session["ClientId"]).Count();

                ViewData["Zones"] = Utilities.GetZoneNameList((int)Session["ClientId"]);
                if (Session["ZoneId"] != null)
                    ViewData["Regions"] = Utilities.GetRegionNameList((int)Session["ClientId"], (int)Session["ZoneId"]);
                else
                    ViewData["Regions"] = Utilities.GetRegionNameList((int)Session["ClientId"], null);
                if (branchCount >= clientDetails.NoOfSchoolsPermitted)
                {
                    ApplicationMessages msg = new ApplicationMessages("Your have reached to branch count max limit. Please contact administrator..", MessageType.Information);
                    ViewData["Message"] = msg;
                    return View();
                }
            }
            else
            {
                if (Roles.IsUserInRole("SuperAdmin"))
                    return RedirectToAction("List", "Client");
                else
                    return RedirectToAction("Logon", "Account");
            }

            return View();
        }

        //
        // POST: /Branch/Create

        [HttpPost]
        public ActionResult NewBranch(FormCollection collection, Branches br, HttpPostedFileBase agentPhoto)
        {
            ViewData["BranchTypes"] = Utilities.GetBranchTypeList();
            ViewData["States"] = Utilities.GetStateList(Utilities.IndiaCountryCode);
            ViewData["Countries"] = Utilities.GetCountryList();

            if (Roles.IsUserInRole("SuperAdmin"))
                ViewData["Clients"] = ClientModels.GetClientNameList();
            if (Session["ClientId"] != null)
            {
                vw_ClientList clientDetails = ClientModels.GetClientDetailsById((int)Session["ClientId"]);
                int branchCount = BranchModels.GetBranchesList((int)Session["ClientId"]).Count();
                if (branchCount >= clientDetails.NoOfSchoolsPermitted)
                {
                    ApplicationMessages msg = new ApplicationMessages("Your have reached to branch count max limit. Please contant administrator..", MessageType.Information);
                    ViewData["Message"] = msg;
                    return View();
                }
                br.ClientId = (int)Session["ClientId"];
                ViewData["Zones"] = Utilities.GetZoneNameList((int)Session["ClientId"]);
                if (Session["ZoneId"] != null)
                    ViewData["Regions"] = Utilities.GetRegionNameList((int)Session["ClientId"], (int)Session["ZoneId"]);
                else
                    ViewData["Regions"] = Utilities.GetRegionNameList((int)Session["ClientId"], null);
            }




            if (!ModelState.IsValid)
            {
                //ModelState.AddModelError("error", "Employee Id already exists");
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
                    br.Logo = tempImage;// file.InputStream;
                    br.ContentType = agentPhoto.ContentType;
                }
            }
            int result = BranchModels.AddBranch(br);

            if (result > 0)
            {
                ApplicationMessages msg = new ApplicationMessages("New Branch saved successfully.", MessageType.Success);
                ViewData["Message"] = msg;
            }
            else if (result == -1)
            {
                ApplicationMessages msg = new ApplicationMessages("Duplicate Branch Code. Please try with new Branch Code.", MessageType.Error);
                ViewData["Message"] = msg;
            }
            else
            {
                ApplicationMessages msg = new ApplicationMessages("Failed to create a new Branch. Please try again.", MessageType.Faild);
                ViewData["Message"] = msg;
            }

            return View();
        }

        //
        // GET: /Branch/Edit/5

        public ActionResult Edit(int? id)
        {
            if (Session["ClientId"] != null)
            {
                ViewData["Zones"] = Utilities.GetZoneNameList((int)Session["ClientId"]);
                if (Session["ZoneId"] != null)
                    ViewData["Regions"] = Utilities.GetRegionNameList((int)Session["ClientId"], (int)Session["ZoneId"]);
                else
                    ViewData["Regions"] = Utilities.GetRegionNameList((int)Session["ClientId"], null);

                if (Roles.IsUserInRole("CenterManager"))
                {
                    if (Session["BranchId"] != null)
                        ViewData.Model = BranchModels.GetBranchById((int)Session["BranchId"]);
                    else
                        ViewData.Model = null;
                }
                else
                {
                    List<vw_Branches> brList = new List<vw_Branches>();
                    brList = BranchModels.GetBranchesList((int)Session["ClientId"]);
                    if (brList.Any(bl => bl.Id == id))
                    {
                        ViewData.Model = BranchModels.GetBranchById((int)id);
                    }
                    else
                        ViewData.Model = null;

                }
            }
            ViewData["BranchTypes"] = Utilities.GetBranchTypeList();
            ViewData["States"] = Utilities.GetStateList(Utilities.IndiaCountryCode);
            ViewData["Countries"] = Utilities.GetCountryList();
            return View();
        }

        //
        // POST: /Branch/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection, Branches br, HttpPostedFileBase agentPhoto)
        {
            ViewData["BranchTypes"] = Utilities.GetBranchTypeList();
            ViewData["States"] = Utilities.GetStateList(Utilities.IndiaCountryCode);
            ViewData["Countries"] = Utilities.GetCountryList();
            if (Roles.IsUserInRole("SuperAdmin"))
                ViewData["Clients"] = ClientModels.GetClientNameList();
            if (Session["ClientId"] != null)
            {
                br.ClientId = (int)Session["ClientId"];
                ViewData["Zones"] = Utilities.GetZoneNameList((int)Session["ClientId"]);
                if (Session["ZoneId"] != null)
                    ViewData["Regions"] = Utilities.GetRegionNameList((int)Session["ClientId"], (int)Session["ZoneId"]);
                else
                    ViewData["Regions"] = Utilities.GetRegionNameList((int)Session["ClientId"], null);

                List<vw_Branches> brList = new List<vw_Branches>();
                brList = BranchModels.GetBranchesList((int)Session["ClientId"]);
                if (brList.Any(bl => bl.Id == id))
                {
                    ViewData.Model = BranchModels.GetBranchById((int)id);
                }
            }

            if (!ModelState.IsValid)
            {
                //ModelState.AddModelError("error", "Employee Id already exists");
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
                    br.Logo = tempImage;// file.InputStream;
                    br.ContentType = agentPhoto.ContentType;
                }
            }
            int result = BranchModels.UpdateBranchDetails(br);

            if (result > 0)
            {
                ApplicationMessages msg = new ApplicationMessages("Branch details updated successfully.", MessageType.Success);
                ViewData["Message"] = msg;
            }
            else if (result == -1)
            {
                ApplicationMessages msg = new ApplicationMessages("Failed to update Branch details. Please try again.", MessageType.Error);
                ViewData["Message"] = msg;
            }
            else
            {
                ApplicationMessages msg = new ApplicationMessages("Failed to update Branch details. Please try again.", MessageType.Faild);
                ViewData["Message"] = msg;
            }


            return View();
        }

        //
        // GET: /Branch/Delete/5
        public ActionResult Close(int id)
        {
            if (Session["ClientId"] != null)
            {
                ViewData["Zones"] = Utilities.GetZoneNameList((int)Session["ClientId"]);
                if (Session["ZoneId"] != null)
                    ViewData["Regions"] = Utilities.GetRegionNameList((int)Session["ClientId"], (int)Session["ZoneId"]);
                else
                    ViewData["Regions"] = Utilities.GetRegionNameList((int)Session["ClientId"], null);

                if (Roles.IsUserInRole("CenterManager"))
                {
                    if (Session["BranchId"] != null)
                        ViewData.Model = BranchModels.GetBranchById((int)Session["BranchId"]);
                    else
                        ViewData.Model = null;
                }
                else
                {
                    List<vw_Branches> brList = new List<vw_Branches>();
                    brList = BranchModels.GetBranchesList((int)Session["ClientId"]);
                    if (brList.Any(bl => bl.Id == id))
                    {
                        ViewData.Model = BranchModels.GetBranchById((int)id);
                    }
                    else
                        ViewData.Model = null;

                }
            }
            ViewData["BranchTypes"] = Utilities.GetBranchTypeList();
            ViewData["States"] = Utilities.GetStateList(Utilities.IndiaCountryCode);
            ViewData["Countries"] = Utilities.GetCountryList();
            return View();
        }

        //
        // POST: /Branch/Delete/5

        [HttpPost]
        public ActionResult Close(int id, FormCollection collection, Branches br, HttpPostedFileBase agentPhoto)
        {
            ViewData["BranchTypes"] = Utilities.GetBranchTypeList();
            ViewData["States"] = Utilities.GetStateList(Utilities.IndiaCountryCode);
            ViewData["Countries"] = Utilities.GetCountryList();
            if (Roles.IsUserInRole("SuperAdmin"))
                ViewData["Clients"] = ClientModels.GetClientNameList();
            if (Session["ClientId"] != null)
            {
                br.ClientId = (int)Session["ClientId"];
                ViewData["Zones"] = Utilities.GetZoneNameList((int)Session["ClientId"]);
                if (Session["ZoneId"] != null)
                    ViewData["Regions"] = Utilities.GetRegionNameList((int)Session["ClientId"], (int)Session["ZoneId"]);
                else
                    ViewData["Regions"] = Utilities.GetRegionNameList((int)Session["ClientId"], null);

                List<vw_Branches> brList = new List<vw_Branches>();
                brList = BranchModels.GetBranchesList((int)Session["ClientId"]);
                if (brList.Any(bl => bl.Id == id))
                {
                    ViewData.Model = BranchModels.GetBranchById((int)id);
                }
            }

            if (!ModelState.IsValid)
            {
                //ModelState.AddModelError("error", "Employee Id already exists");
                ApplicationMessages msg = new ApplicationMessages("Invalid entry.", MessageType.Error);
                ViewData["Message"] = msg;
                return View();
            }

            //if (agentPhoto != null)
            //{
            //    if (agentPhoto.ContentLength > 0)
            //    {
            //        Int32 length = agentPhoto.ContentLength;
            //        byte[] tempImage = new byte[length];
            //        agentPhoto.InputStream.Read(tempImage, 0, length);
            //        br.Logo = tempImage;// file.InputStream;
            //        br.ContentType = agentPhoto.ContentType;
            //    }
            //}
            int result = BranchModels.CloseBranch(br);

            if (result > 0)
            {
                ApplicationMessages msg = new ApplicationMessages("Branch closed successfully.", MessageType.Success);
                ViewData["Message"] = msg;
            }
            else if (result == -1)
            {
                ApplicationMessages msg = new ApplicationMessages("Failed to close Branch. Please try again.", MessageType.Error);
                ViewData["Message"] = msg;
            }
            else
            {
                ApplicationMessages msg = new ApplicationMessages("Failed to close Branch. Please try again.", MessageType.Faild);
                ViewData["Message"] = msg;
            }


            return View();
        }

        [Authorize(Roles = "SuperAdmin,Admin,AreaManager")]
        public ActionResult BranchList(int? id)
        {
            Session["BranchId"] = null;
            if (Session["ClientId"] != null)
            {

                id = (int)Session["ClientId"];
                vw_ClientList clientDetails = ClientModels.GetClientDetailsById((int)id);
                ViewData["ClientDetails"] = clientDetails;
                if (Roles.IsUserInRole("AreaManager"))
                {
                    if (Session["RegionId"] != null)
                        ViewData.Model = BranchModels.GetBranchesList((int)id, (int)Session["RegionId"]);
                }
                else
                    ViewData.Model = BranchModels.GetBranchesList((int)id);
            }
            else
            {
                if (Roles.IsUserInRole("SuperAdmin"))
                {
                    if (id != null)
                        ViewData.Model = BranchModels.GetBranchesList((int)id);
                    else
                        ViewData.Model = BranchModels.GetBranchesList();
                }
                else
                    return RedirectToAction("LogOn", "Account");
            }

            return View();
        }

        [HttpPost]
        public ActionResult BranchList(int? id, FormCollection form)
        {
            Session["BranchId"] = null;
            if (Session["ClientId"] != null)
            {

                id = (int)Session["ClientId"];
                vw_ClientList clientDetails = ClientModels.GetClientDetailsById((int)id);
                ViewData["ClientDetails"] = clientDetails;
                int branchId = 0;
                bool isToActivate = false;

                if (!int.TryParse(form["hdnSelectedBranchId"], out branchId))
                    branchId = 0;

                if (!bool.TryParse(form["hdnIsActivate"], out isToActivate))
                    isToActivate = false;

                if (branchId > 0)
                {
                    if (BranchModels.ActivateBranch(branchId, isToActivate) > 0)
                    {
                        if (isToActivate)
                            ViewData["Message"] = "Branch Activated Successfully";
                        else
                            ViewData["Message"] = "Branch De-Activated Successfully";
                    }
                    else
                    {
                        ViewData["Message"] = "This Branch Cannot Be Deleted.";
                    }
                }
                if (Roles.IsUserInRole("AreaManager"))
                {
                    if (Session["RegionId"] != null)
                        ViewData.Model = BranchModels.GetBranchesList((int)id, (int)Session["RegionId"]);
                }
                else
                    ViewData.Model = BranchModels.GetBranchesList((int)id);
            }
            else
            {
                if (Roles.IsUserInRole("SuperAdmin"))
                {
                    if (id != null)
                        ViewData.Model = BranchModels.GetBranchesList((int)id);
                    else
                        ViewData.Model = BranchModels.GetBranchesList();
                }
                else
                    return RedirectToAction("LogOn", "Account");
            }

            return View();
        }


        public ActionResult Settings()
        {
            return View();
        }

        public ActionResult Settings(FormCollection form, BranchSettings branchSettings)
        {
            return View();
        }
    }
}
