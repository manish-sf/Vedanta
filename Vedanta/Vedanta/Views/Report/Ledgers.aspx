<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Vedanta.Models.vw_ExpenseHeads>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Ledgers
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        #divSearch
        {
            float: left;
            height: 100%;
            min-width: 355px;
            text-align: right;
        }
        
        
        #txtSearch
        {
            border: 1px solid #000;
            height: 22px;
            border: none;
            width: 285px;
        }
        #wrapper
        {
            background-color: #fff;
            border: 1px solid rgb(195, 195, 195);
            width: 300px;
            height: 30px;
            float: right;
            text-align: left;
            border-radius: 5px;
            vertical-align: top;
            padding: 2px;
        }
    </style>
    <div class="pageTitle">
        <div class="pageHeader">
            <h2>
                Ledgers Master</h2>
        </div>
        <%--  <div id="divSearchReoprt">
            <% Html.RenderPartial("ReportSearchUserControl"); %>
        </div>--%>
        <div id="divSearch">
            <div id="wrapper">
                <%--<input type="text" id="txtSearch" value="" placeholder="Search employee by name id or branch"
                     />--%>
                <%: Html.TextBox("txtSearch", string.Empty, new {id="txtSearch", @placeholder = "Search by name, type etc.",@title="Search ledgers" })%>
            </div>
        </div>
        <div class="pageLink">
            <a href="/Report/Index">
                <img src="../../Images/reports/reports.png" alt="" title="Reports" /></a> <a href="javascript:window.print()">
                    <img class="printer" src="../../Images/print_32.png" alt="Print" title="Print Receipt" /></a>
            <%--<a href="/Admin/Expense">
                    <img src="../../Images/list2_add.png" alt="" title="New Expense" /></a>--%>
        </div>
    </div>
    <div id="Mainpg">
        <table class="GridView">
            <tr>
                <th>
                </th>
                <th>
                    CODE
                </th>
                <th>
                    NAME
                </th>
                <th>
                    Ledger Type
                </th>
                <th>
                    OP_BAL
                </th>
            </tr>
            <% foreach (var item in Model)
               { %>
            <tr>
                <td>
                    <%--  <%: Html.ActionLink("Edit", "Edit", new { id=item.Id }) %>
                |
                <%: Html.ActionLink("Details", "Details", new { id=item.Id })%>
                |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.Id })%>--%>
                </td>
                <td>
                    <%: item.CODE %>
                </td>
                <td>
                    <%: item.NAME %>
                </td>
                <td>
                    <%: item.LedgerType %>
                </td>
                <td>
                    <%: String.Format("{0:F}", item.OP_BAL) %>
                </td>
            </tr>
            <% } %>
        </table>
    </div>
</asp:Content>
