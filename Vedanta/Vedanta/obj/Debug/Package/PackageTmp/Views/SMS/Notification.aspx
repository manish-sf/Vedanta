<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Vedanta.Models.SMSNotices>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Notification
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="pageTitle">
        <div class="pageHeader">
            <h2>
                SMS Notification</h2>
        </div>
        <div class="pageLink">
            <%--<%: Html.ActionLink("New Employee", "New", null, new { @title = "add new employee" })%>--%>
            <a href="/Branch/NewBranch">
                <img src="../../Images/list2_add.png" alt="" title="Bulk SMS" /></a>
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
            <%: msg.MessageText%>
        </div>
        <%} %>
        <% using (Html.BeginForm())
           {%>
        <%: Html.ValidationSummary(true) %>
        <fieldset>
            <legend>Fields</legend>
            <div class="editor-label">
                <%: Html.LabelFor(model => model.AdmissionId) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.AdmissionId) %>
                <%: Html.ValidationMessageFor(model => model.AdmissionId) %>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(model => model.MobileNumber) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.MobileNumber) %>
                <%: Html.ValidationMessageFor(model => model.MobileNumber) %>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(model => model.SMSText) %>
            </div>
            <div class="editor-field">
                <%: Html.TextAreaFor(model => model.SMSText, new { @maxlength = 250, @style = "width:85%;min-width:400px;height:50px;", @col = "80", @row = "5" })%>
                <%: Html.ValidationMessageFor(model => model.SMSText) %>
            </div>
            <p>
                <input type="submit" value="Create" />
            </p>
        </fieldset>
        <% } %>
        <%if (ViewData["SendString"] != null)
          { %>
        <iframe id="iframe1" src="<%:ViewData["SendString"]%>" style="display: none;"></iframe>
        <%} %>
    </div>
</asp:Content>
