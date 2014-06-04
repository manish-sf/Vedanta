<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IEnumerable<Vedanta.Models.vw_FeeCollections>>" %>
<table class="GridView" id="tblSearch">
    <tr>
        <td colspan="8" class="blankCell">
            <legend>Fee Paid Lists</legend>
        </td>
    </tr>
    <tr>
        <th>
        </th>
        <%if (!Roles.IsUserInRole("CenterManager"))
          { %>
        <th>
            Branch
        </th>
        <%} %>
        <th>
            Reg. No.
        </th>
        <th>
            Course
        </th>
        <th>
            Payment Date
        </th>
        <th>
            Payment Head
        </th>
        <th>
            Payment Mode
        </th>
        <th>
            MR Number
        </th>
        <th>
            Amount
        </th>
    </tr>
    <%  if (Model != null && Model.Count() > 0)
        {
            foreach (var item in Model)
            {
                if (item.IsBranchActive == true || Roles.IsUserInRole("SuperAdmin"))
                { %>
    <tr>
        <td style="width: 16px;">
            <%-- <%: Html.ActionLink("Edit", "Edit", new { id = item.Id })%>
            |
            <%: Html.ActionLink("Details", "Details", new { id = item.Id })%>
            |
            <%: Html.ActionLink("Delete", "Delete", new { id = item.Id })%>--%>
            <a href="/Students/EditFees/<%:item.Id %>">
                <img src="../../Images/edit_16.png" alt="Edit" title="Edit" border="0" />
            </a>
        </td>
        <%if (!Roles.IsUserInRole("CenterManager"))
          { %>
        <td>
            <%: item.BranchName%>
        </td>
        <%} %>
        <td>
            <% if (ViewData["PaymentHeads"] != null)
               { %>
            <%: item.Description%>
            <% }
               else
               { %>
            <%: item.RegistrationNumber%>
            <%} %>
        </td>
        <td>
            <%:item.CourseCode%>
        </td>
        <td>
            <%: String.Format("{0:dd/MM/yyyy}", item.PaymentDate)%>
        </td>
        <td>
            <%: item.PaymentHead%>
        </td>
        <td>
            <%: item.PaymentMode%>
        </td>
        <td>
            <%: item.ManualreceiptNumber%>
        </td>
        <td style="text-align: right;">
            <%: String.Format("{0:0.00}", item.Amount)%>
        </td>
    </tr>
    <%}
            }%><tr>
                <%if (!Roles.IsUserInRole("CenterManager"))
                  { %>
                <td colspan="8" style="text-align: right; padding-right: 5px;">
                    <strong>Total Paid:</strong>
                </td>
                <%}
                  else
                  { %>
                <td colspan="7" style="text-align: right; padding-right: 5px;">
                    <strong>Total Paid:</strong>
                </td>
                <%} %>
                <td style="text-align: right;">
                    <strong>
                        <%:String.Format("{0:0.00}", Model.Sum(a=>a.Amount)) %></strong>
                </td>
            </tr>
    <%}
        else
        { %>
    <tr>
        <%if (!Roles.IsUserInRole("CenterManager"))
          { %>
        <td colspan="9">
            <%}
          else
          { %>
        <td colspan="8">
            <%} %>
            <div class="NoRecordFound">
                No Record Found.
            </div>
        </td>
    </tr>
    <%} %>
</table>
