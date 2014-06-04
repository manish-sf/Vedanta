<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Index</h2>
    <ul>
        <li><a href="/Courses/CourseBrandList" title="Course Brands">Course Brands</a></li>
        <li><a href="/Courses/List" title="Course Brands">Courses</a></li>
        <li><a href="/Report/Batchs" title="Batches">Batches</a></li>
    </ul>
    <br />
</asp:Content>
