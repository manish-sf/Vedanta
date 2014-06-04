<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="header" style="float: right;">
        <%if (ViewData["ClientName"] != null)
          { %>
        <%: ViewData["ClientName"].ToString()%>
        <%}%>
    </div>
    <br />
    <ul>
        <li><a href="/Branch/BranchList/<%:Session["ClientId"]%>">Branches</a> </li>
         <li><a href="/Courses/List">Courses</a> </li>
          <li><a href="/Branch/List/<%:Session["ClientId"]%>">Schools</a> </li>

        <%--<li><a href="/Jobs/List/<%:Session["ClientId"]%>">Jobs</a></li>
        <li><a href="/Jobs/JobSeekerList/<%:Session["ClientId"]%>">Job Seekers</a></li>--%>
    </ul>
    <hr />
    <a href="/Jobs/JobCategoryList/<%:Session["ClientId"]%>">Job Category List</a>
</asp:Content>
