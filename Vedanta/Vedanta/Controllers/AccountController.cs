using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Linq;
using System.Security.Principal;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using System.Web.Security;
using Vedanta.Models;

namespace Vedanta.Controllers
{

    [HandleError]
    public class AccountController : Controller
    {

        public IFormsAuthenticationService FormsService { get; set; }
        public IMembershipService MembershipService { get; set; }

        protected override void Initialize(RequestContext requestContext)
        {
            if (FormsService == null) { FormsService = new FormsAuthenticationService(); }
            if (MembershipService == null) { MembershipService = new AccountMembershipService(); }

            base.Initialize(requestContext);
        }

        // **************************************
        // URL: /Account/LogOn
        // **************************************

        public ActionResult LogOn()
        {
            return View();
        }

        [HttpPost]
        public ActionResult LogOn(LogOnModel model, string returnUrl)
        {
            if (ModelState.IsValid)
            {
                if (MembershipService.ValidateUser(model.UserName, model.Password))
                {

                    FormsService.SignIn(model.UserName, model.RememberMe);

                    vw_Users_Lists usrDetail = Registration.GetUserDetailsByUserName(model.UserName);
                    if (usrDetail != null)
                    {
                        Session["UserDetail"] = usrDetail;

                        if (!string.IsNullOrEmpty(usrDetail.UserName))
                            Session["UserName"] = usrDetail.UserName;
                        if (usrDetail.ClientId != null)
                            Session["ClientId"] = usrDetail.ClientId;
                        if (usrDetail.ZoneId != null)
                            Session["ZoneId"] = usrDetail.ZoneId;
                        if (usrDetail.RegionId != null)
                            Session["RegionId"] = usrDetail.RegionId;
                        if (usrDetail.BranchId != null)
                            Session["BranchId"] = usrDetail.BranchId;


                        if (usrDetail.ClientId == null)
                            return RedirectToAction("List", "Client");
                        else
                        {
                            if (usrDetail.IsClientActive == true && usrDetail.ClientId != null && ((usrDetail.BranchId == null) || (usrDetail.BranchId != null && usrDetail.IsBranchActive == true)))
                                return RedirectToAction("Index", "Report");
                            else
                            {
                                ModelState.AddModelError("", "The user name or password provided is incorrect.");
                            }
                        }


                        //{
                        //    if (usrDetail.BranchId != null)
                        //        return RedirectToAction("Details", "Branch");
                        //    else
                        //        return RedirectToAction("Details", "Client", new { @id = usrDetail.ClientId });
                        //}
                        //if (!String.IsNullOrEmpty(returnUrl))
                        //{
                        //    return Redirect(returnUrl);
                        //}
                        //else
                        //{
                        //    return RedirectToAction("Index", "Home");
                        //}
                    }

                }
                else
                {
                    ModelState.AddModelError("", "The user name or password provided is incorrect.");
                }
            }

            // If we got this far, something failed, redisplay form
            return View(model);
        }



        // **************************************
        // URL: /Account/LogOff
        // **************************************
        [Authorize]
        public ActionResult LogOff()
        {
            FormsService.SignOut();
            Session.Clear();
            return RedirectToAction("LogOn", "Account");
        }

        // **************************************
        // URL: /Account/Register
        // **************************************
        [Authorize(Roles = "SuperAdmin,Admin")]
        public ActionResult Register()
        {
            //string userId = Membership.GetUser().ProviderUserKey.ToString();
            //string usrName = Membership.GetUser().UserName.ToString();
            //MembershipUser usr = Membership.GetUser();
            //string[] roleNames = Roles.GetRolesForUser(usrName);
            //bool x = HttpContext.User.IsInRole("SuperAdmin");

            ViewData["PasswordLength"] = MembershipService.MinPasswordLength;
            if (Roles.GetRolesForUser().Contains("Admin"))
            {
                string[] rolesToHide = { "Admin", "SuperAdmin" };
                ViewData["UserRoles"] = Registration.GetRoleList(rolesToHide);
            }
            else
            {
                ViewData["UserRoles"] = Registration.GetRoleList(null);
                ViewData["Clients"] = ClientModels.GetClientNameList();
            }

            return View();
        }

        [Authorize]
        [HttpPost]
        public ActionResult Register(RegisterModel model)
        {
            if (Roles.GetRolesForUser().Contains("Admin"))
            {
                string[] rolesToHide = { "Admin", "SuperAdmin" };
                ViewData["UserRoles"] = Registration.GetRoleList(rolesToHide);
            }
            else
            {
                ViewData["UserRoles"] = Registration.GetRoleList(null);
                ViewData["Clients"] = ClientModels.GetClientNameList();
            }

            if (ModelState.IsValid)
            {
                // Attempt to register the user
                MembershipCreateStatus createStatus = MembershipService.CreateUser(model.UserName, model.Password, model.Email);

                if (createStatus == MembershipCreateStatus.Success)
                {
                    if (Session["ClientId"] != null)
                    {
                        model.ClientId = (int)Session["ClientId"];
                    }
                    //  FormsService.SignIn(model.UserName, false /* createPersistentCookie */);
                    Registration.AssignRoleToUser(model);
                    ApplicationMessages msg = new ApplicationMessages("New Employee saved successfully.", MessageType.Success);
                    ViewData["Message"] = msg;
                    return View();
                    //return RedirectToAction("Index", "Home");
                }
                else
                {
                    ModelState.AddModelError("", AccountValidation.ErrorCodeToString(createStatus));
                }
            }

            // If we got this far, something failed, redisplay form
            ViewData["PasswordLength"] = MembershipService.MinPasswordLength;
            return View(model);
        }

        // **************************************
        // URL: /Account/ChangePassword
        // **************************************

        [Authorize]
        public ActionResult ChangePassword()
        {
            ViewData["PasswordLength"] = MembershipService.MinPasswordLength;
            return View();
        }

        [Authorize]
        [HttpPost]
        public ActionResult ChangePassword(ChangePasswordModel model)
        {
            if (ModelState.IsValid)
            {
                if (MembershipService.ChangePassword(User.Identity.Name, model.OldPassword, model.NewPassword))
                {
                    return RedirectToAction("ChangePasswordSuccess");
                }
                else
                {
                    ModelState.AddModelError("", "The current password is incorrect or the new password is invalid.");
                }
            }

            // If we got this far, something failed, redisplay form
            ViewData["PasswordLength"] = MembershipService.MinPasswordLength;
            return View(model);
        }

        // **************************************
        // URL: /Account/ChangePasswordSuccess
        // **************************************

        public ActionResult ChangePasswordSuccess()
        {
            return View();
        }

        [Authorize(Roles = "SuperAdmin,Admin,AreaManager,CenterManager")]
        public ActionResult Users()
        {

            if (Roles.IsUserInRole("SuperAdmin"))
            {
                ViewData.Model = Registration.GetUsersList();
            }

            if (Roles.IsUserInRole("Admin"))
            {
                if (Session["ClientId"] != null)
                {

                    if (Session["ZoneId"] != null)
                    {

                        ViewData.Model = Registration.GetUsersList((int)Session["ClientId"], (int)Session["ZoneId"]);
                    }
                    else
                    {
                        ViewData.Model = Registration.GetUsersList((int)Session["ClientId"]);
                    }
                }
            }
            if (Roles.IsUserInRole("AreaManager"))
            {
                if (Session["ClientId"] != null && Session["ZoneId"] != null && Session["RegionId"] != null)
                {
                    ViewData.Model = Registration.GetUsersList((int)Session["ClientId"], (int)Session["ZoneId"], (int)Session["RegionId"]);
                }
            }
            if (Roles.IsUserInRole("CenterManager"))
            {
                if (Session["ClientId"] != null && Session["BranchId"] != null)
                    ViewData.Model = Registration.GetUsersList((int)Session["ClientId"], null, null, (int)Session["BranchId"]);
            }

            return View();
        }

        [HttpPost]
        public ActionResult Users(FormCollection form)
        {
            List<vw_Users_Lists> uList = new List<vw_Users_Lists>();
            if (Roles.IsUserInRole("SuperAdmin"))
            {
                uList = Registration.GetUsersList();
            }

            if (Roles.IsUserInRole("Admin"))
            {

                if (Session["ClientId"] != null)
                {

                    if (Session["ZoneId"] != null)
                    {
                        uList = Registration.GetUsersList((int)Session["ClientId"], (int)Session["ZoneId"]);
                    }
                    else
                    {
                        uList = Registration.GetUsersList((int)Session["ClientId"]);
                    }
                }
            }
            if (Roles.IsUserInRole("AreaManager"))
            {
                if (Session["ClientId"] != null && Session["ZoneId"] != null && Session["RegionId"] != null)
                {
                    uList = Registration.GetUsersList((int)Session["ClientId"], (int)Session["ZoneId"], (int)Session["RegionId"]);
                }
            }
            if (Roles.IsUserInRole("CenterManager"))
            {
                if (Session["ClientId"] != null && Session["BranchId"] != null)
                    uList = Registration.GetUsersList((int)Session["ClientId"], null, null, (int)Session["BranchId"]);
            }

            if (Request.IsAjaxRequest())
            {
                return PartialView("UserListUserControl", uList.ToList());
            }
            ViewData.Model = uList;
            return View();

        }


    }
}
