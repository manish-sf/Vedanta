<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Vedanta.Models.vw_BatchList>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Batch
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
                Batch Master</h2>
        </div>
        <div id="divSearch">
            <div id="wrapper">
                <%: Html.TextBox("txtSearch", string.Empty, new {id="txtSearch", @placeholder = "Search by name, type etc.",@title="Search ledgers" })%>
            </div>
        </div>
        <div class="pageLink">
            <a href="/Report/Index">
                <img src="../../Images/reports/reports.png" alt="" title="Reports" /></a>
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
                    Batch Code
                </th>
                <th>
                    Batch Name
                </th>
                <th>
                    Batch Start Time
                </th>
                <th>
                    Batch End Time
                </th>
                <th>
                    Strength
                </th>
                <th>
                    Branch Code
                </th>
                <th>
                    Branch Name
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
                    <%: item.BatchCode %>
                </td>
                <td>
                    <%: item.BatchName %>
                </td>
                <td>
                    <%: item.BatchStartTime %>
                </td>
                <td>
                    <%: item.BatchEndTime %>
                </td>
                <td>
                    <%: item.StudentStrength %>
                </td>
                <td>
                    <%: item.BranchCode %>
                </td>
                <td>
                    <%: item.BranchName %>
                </td>
            </tr>
            <% } %>
        </table>
    </div>
</asp:Content>
