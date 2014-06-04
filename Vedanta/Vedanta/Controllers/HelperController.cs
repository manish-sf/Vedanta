using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Vedanta.Models;
namespace Vedanta.Controllers
{
    public class HelperController : Controller
    {
        //
        // GET: /Helper/

        public ActionResult Index()
        {
            return View();
        }

        public JsonResult GetStateListByCountryId(int? id)
        {
            var stateList = Utilities.GetStateList(id);
            return Json(from states in stateList
                        select states);
        }

        public JsonResult GetRegionListByZoneId(int? id)
        {
            var regionList = Utilities.GetRegionNameListByZoneId(id);
            return Json(from regions in regionList
                        select regions);
        }

        public JsonResult GetBranchListByRegionId(int? id)
        {
            var branchList = Utilities.GetBranchNameList((int)id);
            return Json(from branch in branchList
                        select branch);
        }
        public JsonResult SearchEmployeeByFreeText(string searchText)
        {
            var empList = EmployeeModels.GetSearchedEmployeesList(searchText);
            return Json(empList);
        }


        public JsonResult SearchStudentByFreeText(string searchText)
        {
            var studentList = StudentModels.GetSearchedStudentsList(searchText);
            return Json(studentList);
        }

        public JsonResult GetCourseListByBranchId(int branchId)
        {
            if (Session["ClientId"] != null)
            {
                var courseBrands = Utilities.GetCourseBrandNameList((int)Session["ClientId"], branchId);
                if (courseBrands != null && courseBrands.Count() > 0)
                {
                    var course = Utilities.GetCourseNameList((int)Session["ClientId"], branchId);
                    return Json(course);
                }
                else
                {
                    var course = Utilities.GetCourseNameList((int)Session["ClientId"]);
                    return Json(course);
                }
            }
            return null;
        }

        public JsonResult GetCourseFeeByCourseId(int courseId)
        {
            var courseFee = Utilities.GetCourseFeeByCourseId(courseId);
            return Json(courseFee);
        }

        public JsonResult GetEmployeeByEmployeeId(string id)
        {
            var empDetails = EmployeeModels.GetEmployeeDetailsById(id);
            return Json(empDetails);
        }

        public JsonResult isUserNameExits(string id)
        {
            bool isUser = Registration.UserNameExists(id);
            return Json(isUser);
        }


        public JsonResult isRegistrationNumberExits(string id)
        {
            if (Session["ClientId"] != null)
            {
                int clientId = (int)Session["ClientId"];
                bool isUser = StudentModels.RegistrationExists(id, clientId);
                return Json(isUser);
            }
            else
                return Json(false);
        }
    }
}
