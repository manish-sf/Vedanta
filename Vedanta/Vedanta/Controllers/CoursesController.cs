using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Vedanta.Models;
using System.Web.Security;

namespace Vedanta.Controllers
{
    public class CoursesController : Controller
    {
        //
        // GET: /Courses/

        public ActionResult Index()
        {
            return View();
        }

        //
        // GET: /Courses/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /Courses/Create
        [Authorize(Roles = "SuperAdmin,Admin,AreaManager,CenterManager")]
        public ActionResult Create()
        {
            if (Session["ClientId"] != null)
            {
                if (!Roles.IsUserInRole("CenterManager"))
                {
                    ViewData["CourseBrands"] = Utilities.GetCourseBrandNameList((int)Session["ClientId"], null);
                    if (Session["RegionId"] != null)
                        ViewData["Branches"] = Utilities.GetBranchNameList((int)Session["ClientId"], (int)Session["RegionId"]);
                    else
                        ViewData["Branches"] = Utilities.GetBranchNameList((int)Session["ClientId"]);
                }
                else
                {
                    if (Session["BranchId"] != null)
                    {
                        ViewData["CourseBrands"] = Utilities.GetCourseBrandNameList((int)Session["ClientId"], (int)Session["BranchId"]);
                        ViewData["Branches"] = Utilities.GetBlankBranchNameList();
                    }
                    else
                        return RedirectToAction("LogOff", "Account");
                }
            }
            else
            {
                if (Roles.IsUserInRole("SuperAdmin"))
                    return RedirectToAction("List", "Client");
            }


            return View();
        }

        //
        // POST: /Courses/Create

        [HttpPost]
        public ActionResult Create(FormCollection collection, Courses course)
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
                else
                {
                    if (Session["BranchId"] != null)
                    {
                        ViewData["CourseBrands"] = Utilities.GetCourseBrandNameList((int)Session["ClientId"], (int)Session["BranchId"]);
                        ViewData["Branches"] = Utilities.GetBlankBranchNameList();
                    }
                    else
                        return RedirectToAction("LogOff", "Account");
                }
                course.ClientId = (int)Session["ClientId"];
                try
                {
                    if (!ModelState.IsValid)
                    {
                        ApplicationMessages msg = new ApplicationMessages("Invalid entry.", MessageType.Error);
                        ViewData["Message"] = msg;
                        return View();
                    }
                    // TODO: Add insert logic here
                    if (CourseModels.CreateCourse(course) > 0)
                    {
                        ApplicationMessages msg = new ApplicationMessages("Course Saved successfully.", MessageType.Success);
                        ViewData["Message"] = msg;
                    }
                    else
                    {
                        ApplicationMessages msg = new ApplicationMessages("Failed to save Course. Please try again.", MessageType.Error);
                        ViewData["Message"] = msg;
                    }
                    return View();
                }
                catch
                {
                    return View();
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
        }

        //
        // GET: /Courses/Edit/5
        [Authorize(Roles = "SuperAdmin,Admin,AreaManager,CenterManager")]
        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /Courses/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Courses/Delete/5

        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /Courses/Delete/5

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

        [Authorize(Roles = "SuperAdmin,Admin,AreaManager,CenterManager")]
        public ActionResult List()
        {
            if (Session["ClientId"] != null)
            {
                ViewData.Model = CourseModels.GetCourses((int)Session["ClientId"]);
                if (Roles.IsUserInRole("CenterManager"))
                {
                    if (Session["BranchId"] != null)
                        ViewData.Model = CourseModels.GetCourses((int)Session["ClientId"], (int)Session["BranchId"]);
                }
            }
            else
            {
                if (Roles.IsUserInRole("SuperAdmin"))
                {
                    ViewData.Model = CourseModels.GetCourses(null);
                }
            }
            return View();
        }

        //
        // GET: /Course/CreateCourseBrand
        [Authorize(Roles = "SuperAdmin,Admin,AreaManager,CenterManager")]
        public ActionResult CreateCourseBrands()
        {
            ViewData["CountryList"] = Utilities.GetCountryList();
            ViewData["StateList"] = Utilities.GetStateList(null);
            if (Session["ClientId"] != null)
            {
                if (!Roles.IsUserInRole("CenterManager"))
                {

                    if (Session["RegionId"] != null)
                        ViewData["Branches"] = Utilities.GetBranchNameList((int)Session["ClientId"], (int)Session["RegionId"]);
                    else
                        ViewData["Branches"] = Utilities.GetBranchNameList((int)Session["ClientId"]);
                }
                else
                {
                    ViewData["Branches"] = Utilities.GetBlankBranchNameList();
                }
            }
            else
            {
                if (Roles.IsUserInRole("SuperAdmin"))
                    return RedirectToAction("List", "Client");
            }
            return View();
        }

        //
        // POST: /Course/CreateCourseBrand
        [HttpPost]
        public ActionResult CreateCourseBrands(FormCollection collection, CourseBrands coursebrand)
        {
            try
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
                    else
                    {
                        if (Session["BranchId"] != null)
                        {
                            coursebrand.BranchId = (int)Session["BranchId"];
                            ViewData["Branches"] = Utilities.GetBlankBranchNameList();
                        }
                        else
                            return RedirectToAction("LogOff", "Account");
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
                if (CourseModels.CreateCourseBrand(coursebrand) > 0)
                    return RedirectToAction("CourseBrandList");
                else
                    return View();
            }
            catch
            {
                return View();
            }
        }


        [HttpPost]
        public JsonResult GetCourseBrandBySchoolId(int? id)
        {

            if (Session["ClientId"] != null)
            {
                var CourseBrandNameList = Utilities.GetCourseBrandNameList((int)Session["ClientId"], (int)id);
                return Json(from courseBrands in CourseBrandNameList
                            select courseBrands);
            }
            else
            {
                var CourseBrandNameList = Utilities.GetCourseBrandNameList((int)Session["ClientId"], (int)id);
                return Json(from courseBrands in CourseBrandNameList
                            select courseBrands);
            }

        }


        //
        // GET: /Course/CourseBrandList/5
        [Authorize(Roles = "SuperAdmin,Admin,AreaManager,CenterManager")]
        public ActionResult CourseBrandList(int? id)
        {
            if (Session["ClientId"] != null)
            {
                if (!Roles.IsUserInRole("CenterManager"))
                {
                    if (id == null)
                    {
                        ViewData.Model = CourseModels.GetCourseBrands((int)Session["ClientId"], id);
                        if (Session["BranchId"] != null)
                            ViewData["Branchs"] = BranchModels.GetBranchDetailsById((int)id);
                    }
                    else
                    {
                        ViewData.Model = CourseModels.GetCourseBrands((int)Session["ClientId"], (int)Session["BranchId"]);
                        if (Session["BranchId"] != null)
                            ViewData["Branchs"] = BranchModels.GetBranchDetailsById((int)Session["BranchId"]);
                    }
                }
                else
                {

                    if (Session["BranchId"] != null)
                    {
                        ViewData["Branches"] = BranchModels.GetBranchDetailsById((int)Session["BranchId"]);
                        ViewData.Model = CourseModels.GetCourseBrands((int)Session["ClientId"], (int)Session["BranchId"]);
                    }
                }
            }
            return View();
        }

    }
}
