using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using Vedanta.Models;
using System.Web.Routing;

namespace Vedanta.Models
{
    public class SessionInstance
    {
        /// <summary>
        /// Administrator session instance
        /// </summary>
        public static int? AdministratorId
        {
            get
            {
                if (HttpContext.Current.Session["CurrentAdmin"] != null)
                    return Convert.ToInt32(HttpContext.Current.Session["CurrentAdmin"]);
                else
                {
                    if (HttpContext.Current.User.IsInRole("Administrator"))
                    {
                        SignOut();
                    }
                    return null;
                }
            }
        }

        static SessionInstance()
        {

        }

        /// <summary>
        /// Sign out from the system
        /// </summary>
        public static void SignOut()
        {
            try
            {
                HttpContext.Current.Session.Abandon();
                HttpContext.Current.Session.RemoveAll();
                FormsAuthentication.SignOut();
            }
            catch (HttpException)
            {

            }
        }

    }
}