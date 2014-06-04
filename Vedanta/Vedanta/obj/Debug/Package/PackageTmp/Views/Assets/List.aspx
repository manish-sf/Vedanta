<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Vedanta.Models.vw_AssetList>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Asset List
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="pageTitle">
        <div class="pageHeader">
            <h2>
                Assets List</h2>
        </div>
        <%--  <div id="divSearchReoprt">
            <% Html.RenderPartial("ReportSearchUserControl"); %>
        </div>--%>
        <div class="pageLink">
            <a href="/Assets/Create">
                <img src="../../Images/list2_add.png" alt="" title="New Assets" /></a> <a href="javascript:window.print()">
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
            <%: msg.MessageText %>
        </div>
        <%} %>
        <table class="GridView">
            <tr>
                <th>
                </th>
                <th>
                    Code
                </th>
                <th>
                    Name
                </th>
                <th>
                    Quantity
                </th>
                <th>
                    Purchased
                    <br />
                    Last Repaire Date
                </th>
                <th>
                    IsWorking
                </th>
                <th>
                    Warranty Date
                </th>
                <th>
                    Warranty Contact
                </th>
                <th>
                    Branch
                </th>
            </tr>
            <% if (Model != null && Model.Count() > 0)
               {
                   foreach (var item in Model)
                   {
                       if (item.IsBranchActive == true || Roles.IsUserInRole("SuperAdmin"))
                       { %>
            <tr>
                <td>
                    <a href="/Assets/Edit/<%: item.Id%>">
                        <img src="../../images/edit_16.png" id="imgEditLedger_<%: item.Id%>" alt="" title="Edit Ledger"
                            style="border-style: none;" />
                </td>
                <td>
                    <%: item.Code%>
                <td>
                    <%: item.Name%>
                </td>
                <td>
                    <%: item.Quantity%>
                </td>
                <td>
                    <%: String.Format("{0:dd/MM/yyyy}", item.PurchasedDate)%>
                    <br />
                    <%: String.Format("{0:dd/MM/yyyy}", item.LastRepaireDate)%>
                </td>
                <td>
                    <%: item.IsWorking%>
                </td>
                <td>
                    <%:item.WarrantyExpiryDate%>
                </td>
                <td>
                    <%:item.AMC_Reporesntative%><br />
                    <%:item.AMC_Phone%>
                </td>
                <td>
                    <%: item.BranchName%>
                </td>
            </tr>
            <% }
                   }
               }
               else
               { %>
            <tr>
                <td colspan="8">
                    <div class="NoRecordFound">
                        No Record Found.
                    </div>
                </td>
            </tr>
            <%} %>
        </table>
    </div>
</asp:Content>
