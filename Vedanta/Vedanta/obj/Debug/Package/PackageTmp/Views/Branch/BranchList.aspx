<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Vedanta.Models.vw_Branches>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    BranchList
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="pageTitle">
        <div class="pageHeader">
            <h2>
                Branch List</h2>
        </div>
        <div class="pageLink">
            <%--<%: Html.ActionLink("New Employee", "New", null, new { @title = "add new employee" })%>--%>
            <a href="/Branch/NewBranch">
                <img src="../../Images/list2_add.png" alt="" title="New Branch" /></a> <a href="javascript:window.print()">
                    <img class="printer" src="../../Images/print_32.png" alt="Print" title="Print Receipt" /></a>
        </div>
    </div>
    <div id="Mainpg">
        <% Vedanta.Models.ApplicationMessages msg = new Vedanta.Models.ApplicationMessages();
           if (ViewData["Message"] != null)
           {
               msg = ViewData["Message"] as Vedanta.Models.ApplicationMessages;
          
        %>
        <div class="divMessage" style="width: 100%; height: 25px; background-color: Gray;
            color: Yellow;">
            <%: ViewData["Message"]%>
        </div>
        <%} %>
        <% using (Html.BeginForm("BranchList", "Branch", FormMethod.Post, new { @id = "MainForm" }))
           { %>
        <%:Html.Hidden("hdnSelectedBranchId", 0)%>
        <%:Html.Hidden("hdnIsActivate",false)%>
        <table class="GridView">
            <tr>
                <th>
                    <%if (Roles.IsUserInRole("SuperAdmin"))
                      {%>
                    Client<%} %>
                </th>
                <th>
                    BranchCode
                </th>
                <th>
                    BranchName
                </th>
                <th>
                    Address
                </th>
                <th>
                    Phones/Fax
                </th>
                <th>
                    Email
                </th>
                <th>
                    Started Date
                </th>
                <th>
                    Region/ Zone
                </th>
            </tr>
            <% if (Model != null && Model.Count() > 0)
               {
                   foreach (var item in Model)
                   {
                       if (item.IsActive == true || Roles.IsUserInRole("SuperAdmin"))
                       { %>
            <tr>
                <td>
                    <%--  <%: Html.ActionLink("Edit", "Edit", new { id=item.Id }) %>
                    |
                    <%: Html.ActionLink("Details", "Details", new { id=item.Id })%>
                    |
                    --%>
                    <%if (Roles.IsUserInRole("SuperAdmin"))
                      {%>
                    <%:item.ClientId%>
                    <br />
                    <% if (item.IsActive == true)
                       {%>
                    <img src="../../images/del.png" id="imgDeleteBranch_<%: item.Id%>" alt="" title="De-Activate Branch"
                        onclick="return DeActivateBranch(<%: item.Id%>)" />
                    <%}
                       else
                       { %>
                    <img src="../../images/del.png" id="imgEnableBranch_<%: item.Id%>" alt="" title="Activate Branch"
                        onclick="return ActivateBranch(<%: item.Id%>)" />
                    <%}
                      } %>
                </td>
                <td>
                    <a href="/Branch/Details/<%:item.Id %>" title="Details">
                        <%: item.BranchCode%></a>
                </td>
                <td>
                    <%: item.BranchName%>
                </td>
                <td>
                    <%: item.Address1%>
                    <%: item.Address2%>
                    <%: item.City%>
                    <%: item.State%>
                    <%: item.Country%>
                    <%: item.PIN%>
                </td>
                <td>
                    <%: item.Phones%>
                    <%: item.Fax != null ? ("/ " + item.Fax) : string.Empty%>
                </td>
                <td>
                    <%: item.Email%>
                </td>
                <td>
                    <%: String.Format("{0:dd/MM/yyyy}", item.CreatedDate)%>
                </td>
                <td>
                    <%: item.RegionName%>
                    &nbsp;
                    <%: item.ZoneName%>
                </td>
            </tr>
            <% }
                   }%>
            <%if (Roles.IsUserInRole("Admin") && Session["ClientId"] != null)
              {%>
            <tr>
                <th colspan="8">
                    <% Vedanta.Models.vw_ClientList clientDetails = null;
                       if (ViewData["ClientDetails"] != null)
                       {
                           clientDetails = ViewData["ClientDetails"] as Vedanta.Models.vw_ClientList;
                           if (clientDetails != null)
                           {%>
                    Branch Count:
                    <%:Model.Count()%>
                    /
                    <%:clientDetails.NoOfSchoolsPermitted%>
                    <%}
                       }
                    %>
                </th>
            </tr>
            <%}
               }
               else
               { %>
            <tr>
                <td colspan="8" class="NoRecordFound">
                    No Branch Record found.
                </td>
            </tr>
            <%} %>
        </table>
        <%} %>
    </div>
    <script type="text/javascript">
        function DeActivateBranch(i) {

            if (!confirm("Are You Sure to de-activate this Branch?")) {
                return false;
            }
            // alert("Deleted Rank" + i);
            $("#hdnSelectedBranchId").val(i);
            $("#hdnIsActivate").val('false');
            //alert($("#hdnSelectedRankId").val(i));
            $("#MainForm").submit();
        }
        function ActivateBranch(i) {

            if (!confirm("Are You Sure to activate this Branch?")) {
                return false;
            }
            // alert("Deleted Rank" + i);
            $("#hdnSelectedBranchId").val(i);
            $("#hdnIsActivate").val('true');
            //alert($("#hdnSelectedRankId").val(i));
            $("#MainForm").submit();
        }
    </script>
</asp:Content>
