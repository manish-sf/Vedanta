<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        <%--<%: ViewData["Message"] %>--%></h2>
    <p>
        for any query please visit <a href="http://scanservices.co.in" title="scanservices">
            http://scanservices.co.in </a>.
    </p>
</asp:Content>
