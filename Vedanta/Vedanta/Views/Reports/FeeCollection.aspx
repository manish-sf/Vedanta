<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Vedanta.Models.vw_FeeCollections>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    FeeCollection
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="pageTitle">
        <div class="pageHeader">
            <h2>
                Fee Collection Report</h2>
        </div>
        <div id="divSearchReoprt">
            <% Html.RenderPartial("ReportSearchUserControl"); %>
        </div>
        <div class="pageLink">
            <a href="/Students/List">
                <img src="../../Images/list.png" alt="" title="Student List" /></a> <a href="/Students/Fees">
                    <img src="../../Images/cash_stack_add.png" alt="" title="Fee Payment" />
                </a>
        </div>
    </div>
    <div id="Mainpg">
        <% Vedanta.Models.ApplicationMessages msg = new Vedanta.Models.ApplicationMessages();
           if (ViewData["Message"] != null)
           {
               msg = ViewData["Message"] as Vedanta.Models.ApplicationMessages;
          
        %>
        <div class="divMessage">
            <%: msg.MessageText %>
        </div>
        <%} %>
        <% using (Html.BeginForm())
           {%>
        <% Html.RenderPartial("FeeListUserControl", Model); %>
        <%} %>
    </div>
</asp:Content>
