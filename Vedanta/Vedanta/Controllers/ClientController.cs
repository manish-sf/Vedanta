using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Vedanta.Models;
using System.Web.Security;

namespace Vedanta.Controllers
{
    public class ClientController : Controller
    {
        // GET: /Client/
        [Authorize(Roles = "SuperAdmin")]
        public ActionResult Index(int? id)
        {
            if (id != null)
            {
                Session["ClientId"] = id;
                ViewData["ClientName"] = ClientModels.GetClientDetailsById((int)id).Name ?? null;
            }
            return View();
        }


        public ActionResult ClientLogoLoader(int id)
        {
            Clients oldclient = ClientModels.GetClientById(id);
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

        public ActionResult Deactivate(int Id)
        {
            return null;
        }

        [Authorize(Roles = "SuperAdmin,Admin")]
        public ActionResult Details(int? id)
        {
            if (Session["ClientId"] != null)
            {
                ViewData.Model = ClientModels.GetClientDetailsById((int)Session["ClientId"]);
                return View();
            }
            else
            {


                if (Roles.IsUserInRole("SuperAdmin"))
                {
                    if (id != null)
                    {
                        Session["ClientId"] = (int)id;
                        ViewData.Model = ClientModels.GetClientDetailsById((int)id);
                        return View();
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
                else
                {
                    FormsAuthentication.SignOut();
                    return RedirectToAction("LogOff", "Account");
                }
            }


        }

        //
        // GET: /Client/Create
        [Authorize(Roles = "SuperAdmin")]
        public ActionResult Create()
        {
            ViewData["CountryList"] = Utilities.GetCountryList();
            ViewData["StateList"] = Utilities.GetStateList(null);
            ViewData["BusinessTypeList"] = Utilities.GetBusinessTypeList();
            return View();
        }

        //
        // POST: /Client/Create

        [HttpPost]
        public ActionResult Create(FormCollection collection, Clients client, HttpPostedFileBase agentPhoto)
        {
            ViewData["CountryList"] = Utilities.GetCountryList();
            ViewData["StateList"] = Utilities.GetStateList(null);
            ViewData["BusinessTypeList"] = Utilities.GetBusinessTypeList();
            try
            {
                if (!ModelState.IsValid)
                {
                    ApplicationMessages msg = new ApplicationMessages("Invalid entry.", MessageType.Error);

                    ViewData["Message"] = msg;
                    return View();
                }
                // TODO: Add insert logic here
                if (client != null)
                {
                    client.LastUpdated = DateTime.Now;
                    client.AdminstratorId = 1;
                }
                if (agentPhoto != null)
                {
                    if (agentPhoto.ContentLength > 0)
                    {
                        Int32 length = agentPhoto.ContentLength;
                        byte[] tempImage = new byte[length];
                        agentPhoto.InputStream.Read(tempImage, 0, length);
                        client.Logo = tempImage;// file.InputStream;
                        client.ContentType = agentPhoto.ContentType;
                    }
                }
                if (ClientModels.CreateClient(client) > 0)
                {
                    ApplicationMessages msg = new ApplicationMessages("New Employee saved successfully.", MessageType.Success);
                    ViewData["Message"] = msg;
                    return RedirectToAction("List");
                }
                else
                    return View();
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Client/Edit/5
        [Authorize(Roles = "SuperAdmin,Admin")]
        public ActionResult Edit()
        {
            //ViewData.Model = ClientModels.GetClientDetailsById(id);

            //int id;
            //if (Session["ClientId"] == null)
            //{
            //    if (Roles.IsUserInRole("SuperAdmin"))
            //    {
            //        Session["ClientId"] = (int)id;
            //        ViewData.Model = ClientModels.GetClientDetailsById((int)id);
            //        return View();
            //    }
            //}
            //else
            //{
            //    if (id != null && (int)Session["ClientId"] == (int)id)
            //    {
            //        ViewData.Model = ClientModels.GetClientDetailsById((int)id);
            //        return View();
            //    }
            //}
            if (Session["ClientId"] != null)
            {
                ViewData.Model = ClientModels.GetClientById((int)Session["ClientId"]);
                ViewData["CountryList"] = Utilities.GetCountryList();
                ViewData["StateList"] = Utilities.GetStateList(null);
                ViewData["BusinessTypeList"] = Utilities.GetBusinessTypeList();
                return View();
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
        // POST: /Client/Edit/5

        [HttpPost]
        public ActionResult Edit(FormCollection collection, Clients client, HttpPostedFileBase agentPhoto)
        {

            int id = 0;
            ViewData["CountryList"] = Utilities.GetCountryList();
            ViewData["StateList"] = Utilities.GetStateList(null);
            ViewData["BusinessTypeList"] = Utilities.GetBusinessTypeList();
            if (Session["ClientId"] != null)
            {
                id = (int)Session["ClientId"];

                if (!ModelState.IsValid)
                    return View(client);

                if (agentPhoto != null)
                {
                    if (agentPhoto.ContentLength > 0)
                    {
                        Int32 length = agentPhoto.ContentLength;
                        byte[] tempImage = new byte[length];
                        agentPhoto.InputStream.Read(tempImage, 0, length);
                        client.Logo = tempImage;// file.InputStream;
                        client.ContentType = agentPhoto.ContentType;
                    }
                }
                bool isAdmin = false;
                if (Roles.IsUserInRole("SuperAdmin"))
                    isAdmin = true;
                if (ClientModels.UpdateClient(id, client, isAdmin) > 0)
                {
                    return RedirectToAction("Details", new { @id = id });
                }

                return View(client);
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
        // GET: /Client/
        [Authorize(Roles = "SuperAdmin")]
        public ActionResult List()
        {
            Session["ClientId"] = null;
            Session["ZoneId"] = null;
            Session["RegionId"] = null;
            Session["BranchId"] = null;
            ViewData.Model = ClientModels.GetClients();
            return View();
        }

        [Authorize(Roles = "SuperAdmin")]
        public ActionResult CreateRepresentative(int id)
        {
            ViewData["CountryList"] = Utilities.GetCountryList();
            ViewData["StateList"] = Utilities.GetStateList(null);
            ViewData["Client"] = ClientModels.GetClientDetailsById(id);
            return View();
        }

        [HttpPost]
        public ActionResult CreateRepresentative(int id, FormCollection form, ClientRepresentatives clientRepresentative)
        {
            try
            {

                if (!ModelState.IsValid)
                    return View();
                // TODO: Add insert logic here
                if (id > 0)
                {
                    clientRepresentative.ClientId = id;
                    bool isActive = false;
                    if (!string.IsNullOrEmpty(form["rdoYes"]))
                    {
                        bool.TryParse(form["rdoYes"], out isActive);
                    }
                    clientRepresentative.IsActive = isActive;

                    if (ClientModels.CreateClientRepresentatives(clientRepresentative) > 0)
                        return RedirectToAction("RepresentativeList", new { @id = id });
                }
                else
                    return View();

            }
            catch
            {
                return View();
            }

            return View();
        }

        // GET: /Client/RepresentativeList
        [Authorize(Roles = "SuperAdmin")]
        public ActionResult RepresentativeList(int id)
        {
            ViewData["Client"] = ClientModels.GetClientDetailsById(id);
            ViewData.Model = ClientModels.GetClientRepresentatives(id);
            return View();
        }

        [Authorize(Roles = "SuperAdmin,Admin")]
        public ActionResult Settings(int? id)
        {
            if (Session["ClientId"] != null)
            {
                ViewData["Client"] = ClientModels.GetClientDetailsById((int)Session["ClientId"]);
                ViewData.Model = ClientModels.GetClientSettingsByClientId((int)Session["ClientId"]);
                return View();
            }

            else
            {
                if (Roles.IsUserInRole("SuperAdmin"))
                {
                    if (id != null)
                    {
                        ViewData["Client"] = ClientModels.GetClientDetailsById((int)id);
                        ViewData.Model = ClientModels.GetClientSettingsByClientId((int)id);
                        return View();
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
                else
                {
                    FormsAuthentication.SignOut();
                    return RedirectToAction("LogOff", "Account");
                }
            }

        }

        [HttpPost]
        public ActionResult Settings(int? id, FormCollection form, ClientSettings clientSettings)
        {
            if (Roles.IsUserInRole("SuperAdmin") && Session["ClientId"] != null)
            {
                if (!ModelState.IsValid)
                {
                    ApplicationMessages msg = new ApplicationMessages("Invalid entry.", MessageType.Error);
                    ViewData["Message"] = msg;
                    return View(clientSettings);
                }
                clientSettings.ClientId = (int)Session["ClientId"];

                if (ClientModels.SaveClientSettings(clientSettings) > 0)
                {
                    ApplicationMessages msg = new ApplicationMessages("Settings Saved", MessageType.Success);
                    ViewData["Message"] = msg;

                }
                return View(clientSettings);
            }
            else
            {
                ApplicationMessages msg = new ApplicationMessages("You are not authorize to update Settings.", MessageType.Error);
                ViewData["Message"] = msg;
                return View(clientSettings);
            }
        }

    }
}
