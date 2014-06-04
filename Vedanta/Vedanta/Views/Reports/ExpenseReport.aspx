<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Vedanta.Models.vw_PaymentList>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Expense Report
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="pageTitle">
        <div class="pageHeader">
            <h2>
                Expense Report</h2>
        </div>
        <%--  <div id="divSearchReoprt">
            <% Html.RenderPartial("ReportSearchUserControl"); %>
        </div>--%>
        <div class="pageLink">
            <a href="/Report/Index">
                <img src="../../Images/reports/reports.png" alt="" title="Reports" /></a> <a href="/Admin/Expense">
                    <img src="../../Images/list2_add.png" alt="" title="New Expense" /></a>
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
        <% using (Ajax.BeginForm("ExpenseReport", "Reports", new AjaxOptions { HttpMethod = "POST", UpdateTargetId = "searchResult", InsertionMode = InsertionMode.Replace }))
           { %>
        <div id="searchResult">
            <%Html.RenderPartial("PaymentListUserControl", Model);%>
        </div>
        <%} %>
    </div>
</asp:Content>
