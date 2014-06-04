<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Vedanta.Models.Batches>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit Batch
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="pageTitle">
        <div class="pageHeader">
            <h2>
                Edit Batch</h2>
        </div>
        <div class="pageLink">
            <a href="/Report/Batchs">
                <img src="../../Images/list.png" alt="" title="Batch List" /></a><%--<a href="/Report/Index">
                    <img src="../../Images/reports/reports.png" alt="" title="Reports" /></a>--%>
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
        <%: Html.ValidationSummary(true) %>
        <%if (ViewData["Branchs"] != null)
          { %>
        <div class="editor-label">
            Branch
        </div>
        <div class="editor-field">
            <%= Html.DropDownListFor(model => model.BranchId, (IEnumerable<SelectListItem>)ViewData["Branchs"], "Select", new { @class = "selectNone" })%>
            <%: Html.ValidationMessageFor(model => model.BranchId)%>
        </div>
        <%} %>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.BatchCode) %>
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(model => model.BatchCode) %>
            <%: Html.ValidationMessageFor(model => model.BatchCode) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.BatchName) %>
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(model => model.BatchName) %>
            <%: Html.ValidationMessageFor(model => model.BatchName) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.BatchStartTime) %>
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(model => model.BatchStartTime) %>
            <%: Html.ValidationMessageFor(model => model.BatchStartTime) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.BatchEndTime) %>
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(model => model.BatchEndTime) %>
            <%: Html.ValidationMessageFor(model => model.BatchEndTime) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.StudentStrength) %>
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(model => model.StudentStrength) %>
            <%: Html.ValidationMessageFor(model => model.StudentStrength) %>
        </div>
        <p>
            <input type="submit" value="Save" class="submit" />
        </p>
        <% } %>
    </div>
</asp:Content>
