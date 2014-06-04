<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Vedanta.Models.vw_Admissions>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    NewAdmission
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="pageTitle">
        <div class="pageHeader">
            <h2>
                New Admission Report</h2>
        </div>
        <div id="divSearchReoprt">
            <% Html.RenderPartial("ReportSearchUserControl"); %>
        </div>
        <div class="pageLink">
            <a href="/Students/New">
                <img src="../../Images/add_user.png" alt="" title="New Admission" /></a> <a href="/Students/Fees">
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
        <div class="divMessage" style="width: 100%; height: 25px; background-color: Gray;
            color: Yellow;">
            <%: msg.MessageText %>
        </div>
        <%} %>
        <% using (Ajax.BeginForm("List", "Students", new AjaxOptions { HttpMethod = "POST", UpdateTargetId = "searchResult", InsertionMode = InsertionMode.Replace }))
           { %>
        <div id="searchResult">
            <%Html.RenderPartial("StudentListUserControl", Model);%>
        </div>
        <%} %>
    </div>
</asp:Content>
