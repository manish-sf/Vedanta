using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Vedanta.Models;
using System.Web.Security;
namespace Vedanta.Controllers
{
    public class AssetsController : Controller
    {
        // GET: /Asset/
        [Authorize(Roles = "SuperAdmin,Admin,AreaManager,CenterManager")]
        public ActionResult List(int? id)
        {
            if (Session["ClientId"] != null)
            {
                if (!Roles.IsUserInRole("CenterManager"))
                {
                    if (id != null)
                        ViewData.Model = AssetModels.GetAssets((int)Session["ClientId"], (int)id);
                    else
                        ViewData.Model = AssetModels.GetAssets((int)Session["ClientId"], null);
                    //ViewData.Model = CourseModels.GetBatchList((int)Session["ClientId"]);
                }
                else
                    if (Session["BranchId"] != null)
                    {
                        ViewData.Model = AssetModels.GetAssets((int)Session["ClientId"], (int)Session["BranchId"]);
                    }
            }
            else
            {
                if (Roles.IsUserInRole("SuperAdmin"))
                    return RedirectToAction("List", "Client");
            }

            return View();
        }

        // GET: /Asset/
        [Authorize(Roles = "SuperAdmin,Admin,AreaManager,CenterManager")]
        public ActionResult Create()
        {
            if (Session["ClientId"] != null)
            {
                if (!Roles.IsUserInRole("CenterManager"))
                {
                    if (Session["RegionId"] != null)
                        ViewData["Branches"] = Utilities.GetBranchNameList((int)Session["ClientId"], (int)Session["RegionId"]);
                    else
                        ViewData["Branches"] = Utilities.GetBranchNameList((int)Session["ClientId"]);
                }
            }
            //ViewData["Branchs"] = Utilities.GetBranchNameList();
            return View();
        }


        [HttpPost]
        public ActionResult Create(FormCollection form, Assets asset, string chkIsWorking)
        {
            if (Session["ClientId"] != null)
            {
                if (!Roles.IsUserInRole("CenterManager"))
                {
                    if (Session["RegionId"] != null)
                        ViewData["Branches"] = Utilities.GetBranchNameList((int)Session["ClientId"], (int)Session["RegionId"]);
                    else
                        ViewData["Branches"] = Utilities.GetBranchNameList((int)Session["ClientId"]);
                }
            }
            try
            {
                if (Session["BranchId"] != null)
                {
                    asset.BranchId = (int)Session["BranchId"];
                }
                if (!ModelState.IsValid)
                    return View();
                // TODO: Add insert logic here

                if ("on".Equals(chkIsWorking))
                    asset.IsWorking = true;
                else
                    asset.IsWorking = false;

                if (AssetModels.CreateAsset(asset) > 0)
                    return RedirectToAction("List");
                else
                    return View();

            }
            catch
            {
                return View();
            }
        }

        [Authorize(Roles = "SuperAdmin,Admin,AreaManager,CenterManager")]
        public ActionResult Edit(int id)
        {
            if (Session["ClientId"] != null)
            {
                if (!Roles.IsUserInRole("CenterManager"))
                {
                    if (Session["RegionId"] != null)
                        ViewData["Branches"] = Utilities.GetBranchNameList((int)Session["ClientId"], (int)Session["RegionId"]);
                    else
                        ViewData["Branches"] = Utilities.GetBranchNameList((int)Session["ClientId"]);
                }
            }
            ViewData.Model = AssetModels.GetAssetDetailsById(id);
            return View();
        }

        [HttpPost]
        public ActionResult Edit(int id, FormCollection form, Assets asset, string chkIsWorking)
        {
            if (Session["ClientId"] != null)
            {
                if (!Roles.IsUserInRole("CenterManager"))
                {
                    if (Session["RegionId"] != null)
                        ViewData["Branches"] = Utilities.GetBranchNameList((int)Session["ClientId"], (int)Session["RegionId"]);
                    else
                        ViewData["Branches"] = Utilities.GetBranchNameList((int)Session["ClientId"]);
                }
            }
            if (!ModelState.IsValid)
                return View(asset);

            if (Session["BranchId"] != null)
            {
                asset.BranchId = (int)Session["BranchId"];
            }
            if ("on".Equals(chkIsWorking))
                asset.IsWorking = true;
            else
                asset.IsWorking = false;

            if (AssetModels.UpdateAsset(id, asset) > 0)
            {
                return RedirectToAction("List");
            }
            return View();
        }

        [Authorize(Roles = "SuperAdmin,Admin,AreaManager,CenterManager")]
        public ActionResult Details(int id)
        {
            ViewData.Model = AssetModels.GetAssetDetailsById(id);
            return View();
        }

    }
}
