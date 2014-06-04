<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Vedanta.Models.vw_ExpenseHeads>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Ledger Master List
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="pageTitle">
        <div class="pageHeader">
            <h2>
                Ledger Master List</h2>
        </div>
        <div class="pageLink">
            <%if (Roles.IsUserInRole("SuperAdmin") || Roles.IsUserInRole("Admin"))
              {%>
            <a href="/Admin/Ledgers">
                <img src="../../Images/add_Ledger.png" alt="" title="Add Ledger" /></a><%} %>
            <%--<span class="noprint">
                    &nbsp;|&nbsp;</span><a href="javascript:window.print()" class="noprint">Print</a>--%>
            <a href="/Report/Index">
                <img src="../../Images/reports/reports.png" alt="" title="Reports" /></a> <a href="javascript:window.print()">
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
        <% using (Html.BeginForm("LedgersList", "Admin", FormMethod.Post, new { @id = "MainForm" }))
           { %>
        <%:Html.Hidden("hdnSelectedLedgerId", 0)%>
        <table class="GridView" style="margin-top: 2px;">
            <tr>
                <th style="width: 40px">
                </th>
                <th>
                    Sl.#
                </th>
                <th style="width: 100px;">
                    Ledger Code
                </th>
                <th>
                    Ledger Name
                </th>
                <th>
                    Ledger Type
                </th>
            </tr>
            <% int slNo = 0;
               if (Model != null && Model.Count() > 0)
               {
                   foreach (var item in Model)
                   {

                       slNo++; %>
            <tr>
                <td>
                    <%if (Roles.IsUserInRole("SuperAdmin") || Roles.IsUserInRole("Admin"))
                      {%>
                    <img src="../../images/del.png" id="imgDeleteLedger_<%: item.Id%>" alt="" title="Delete Ledger"
                        onclick="return DeleteLedger(<%: item.Id%>)" />
                    <a href="/Admin/EditLedger/<%: item.Id%>">
                        <img src="../../images/pencil-icon.png" id="imgEditLedger_<%: item.Id%>" alt="" title="Edit Ledger"
                            style="border-style: none;" />
                    </a>
                    <%} %>
                </td>
                <td>
                    <%: slNo%>
                </td>
                <td>
                    <%: item.CODE%>
                </td>
                <td>
                    <%: item.NAME%>
                </td>
                <td>
                    <%: item.LedgerType%>
                </td>
            </tr>
            <% }
               }
               else
               {%>
            <tr>
                <td colspan="5">
                    <div class="NoRecord">
                        No record found for Master Ledger.</div>
                </td>
            </tr>
            <%} %>
        </table>
        <%} %>
    </div>
    <script type="text/javascript">
        function DeleteLedger(i) {

            if (!confirm("Are You Sure to delete this Ledger?")) {
                return false;
            }
            // alert("Deleted Rank" + i);
            $("#hdnSelectedLedgerId").val(i);
            //alert($("#hdnSelectedRankId").val(i));
            $("#MainForm").submit();
        }
    </script>
</asp:Content>
