<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Vedanta.Models.vw_CourseBrands>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Course Brands List
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Course Brands List</h2>
    <%Vedanta.Models.vw_Branches school = null;

      if (ViewData["Branchs"] != null)
      {
          school = (Vedanta.Models.vw_Branches)ViewData["Branches"];
          if (school != null)
          {
    %>
    <div style="text-align: right; margin-top: -35px; border-bottom: 2px solid #000;
        padding-bottom: 3px;">
        Branch Name:<strong><%: school.BranchName%>
            [<%: school.Id%>]</strong>
    </div>
    <%}
      } %>
    <table class="GridView">
        <tr>
            <th>
                Brand Name
            </th>
            <th>
                School Name
            </th>
            <th>
                BoardUniversityName
            </th>
            <th>
                Representative
            </th>
            <th>
                Address
            </th>
            <th>
                State
            </th>
            <th>
                ZIP
            </th>
        </tr>
        <% if (Model != null && Model.Count() > 0)
           { %>
        <% foreach (var item in Model)
           {
               if (item.IsBranchActive == true || Roles.IsUserInRole("SuperAdmin"))
               {%>
        <tr>
            <td>
                <%: item.Name%>
            </td>
            <td>
                <%: item.BranchName%>
            </td>
            <td>
                <%: item.BoardUniversityName%>
            </td>
            <td>
                <%: item.RepresentativeName%>
            </td>
            <td>
                <%: item.Street1%>
                <% if (item.Street2 != null)
                   { %>,
                <%: item.Street2%><%} %>
                <% if (item.Street2 != null)
                   { %>,
                <%: item.City%>
                <%} %>
            </td>
            <td>
                <%: item.ZIP%>
            </td>
            <td>
                <%: item.StateName%>
            </td>
        </tr>
        <% }
           }
           }
           else
           { %>
        <tr>
            <td colspan="7">
                No Jobs posted.
            </td>
        </tr>
        <%} %>
    </table>
    <p>
        <%: Html.ActionLink("New CourseBrand", "CreateCourseBrands") %>
    </p>
</asp:Content>
