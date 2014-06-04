<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IEnumerable<Vedanta.Models.vw_Users_Lists>>" %>
<table class="GridView">
    <tr>
        <th>
            User Role
        </th>
        <th>
            User Name
        </th>
        <th>
            EmployeeId<br />
            Name
        </th>
        <th>
            Designation
        </th>
        <th>
            Branch
        </th>
        <th>
            Email
        </th>
        <th>
            IsLocked
        </th>
    </tr>
    <% if (Model != null && Model.Count() > 0)
       {
           foreach (var item in Model)
           {
               if (item.BranchId == null || (item.BranchId != null && item.IsBranchActive == true) || Roles.IsUserInRole("SuperAdmin"))
               { %>
    <tr>
        <td>
            <%: item.RoleName%>
        </td>
        <td>
            <%: item.UserName%>
        </td>
        <td>
            <%: item.EmployeeId%><br />
            <%: item.FirstName%>
            <%: item.MiddleName%>
            <%: item.LastName%>
        </td>
        <td>
            <%: item.RankName%>
        </td>
        <td>
            <%: item.BranchName%>
            <%if (Roles.IsUserInRole("SuperAdmin"))
              {%><br />
            (<%:item.ClientId%>)
            <%} %>
        </td>
        <td>
            <%: item.Email%>
        </td>
        <td>
            <%: item.IsLockedOut%>
        </td>
    </tr>
    <% }
           }
       }
       else
       { %>
    <tr>
        <td colspan="7">
            <div class="NoRecordFound">
                No Record Found.
            </div>
        </td>
    </tr>
    <%} %>
</table>
