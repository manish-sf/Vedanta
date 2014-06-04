﻿<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<%
    if (Request.IsAuthenticated)
    {
%>
Welcome <b>
    <%: Page.User.Identity.Name %></b>! [
<%: Html.ActionLink("Log Off", "LogOff", "Account") %>
][<%: Html.ActionLink("Change Password", "ChangePassword", "Account") %>]
<%
    }
    else
    {
%>
[
<%: Html.ActionLink("Log On", "LogOn", "Account") %>
]
<%
    }
%>
