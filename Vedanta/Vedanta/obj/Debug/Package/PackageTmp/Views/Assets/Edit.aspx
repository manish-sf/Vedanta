<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Vedanta.Models.Assets>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Asset Edit
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Asset Edit</h2>
    <% using (Html.BeginForm())
       {%>
    <%: Html.ValidationSummary(true) %>
    <fieldset>
        <legend>Fields</legend>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.Code) %>
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(model => model.Code) %>
            <%: Html.ValidationMessageFor(model => model.Code) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.Name) %>
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(model => model.Name) %>
            <%: Html.ValidationMessageFor(model => model.Name) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.Quantity) %>
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(model => model.Quantity) %>
            <%: Html.ValidationMessageFor(model => model.Quantity) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.PurchasedDate) %>
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(model => model.PurchasedDate, new { @Value = string.Format("{0:MM/dd/yyyy}", Model.PurchasedDate), @class = "datepicker" })%>
            <%-- <%: Html.TextBoxFor(model => model.PurchasedDate, String.Format("{0:MM/dd/yyyy}", Model.PurchasedDate))%>--%>
            <%: Html.ValidationMessageFor(model => model.PurchasedDate) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.LastRepaireDate) %>
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(model => model.LastRepaireDate, new { @Value = string.Format("{0:MM/dd/yyyy}",Model.LastRepaireDate), @class = "datepicker" })%>
            <%: Html.ValidationMessageFor(model => model.LastRepaireDate) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.LastAuditDate) %>
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(model => model.LastAuditDate, new { @Value = string.Format("{0:MM/dd/yyyy}", Model.LastAuditDate), @class = "datepicker" })%>
            <%: Html.ValidationMessageFor(model => model.LastAuditDate) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.IsWorking) %>
        </div>
        <div class="editor-field">
            <%--  <%: Html.TextBoxFor(model => model.IsWorking) %>--%>
            <%if (Model != null && Model.IsWorking == true)
              { %>
            <input type="checkbox" name="chkIsWorking" checked />
            <%}
              else
              { %>
            <input type="checkbox" name="chkIsWorking" />
            <%} %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.WarrantyExpiryDate) %>
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(model => model.WarrantyExpiryDate, new { Value = Model.LastAuditDate.Value.ToString("MM/dd/yyyy"), @class = "datepicker" })%>
            <%: Html.ValidationMessageFor(model => model.WarrantyExpiryDate)%>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.AMC_Reporesntative) %>
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(model => model.AMC_Reporesntative)%>
            <%: Html.ValidationMessageFor(model => model.AMC_Reporesntative)%>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.AMC_Phone) %>
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(model => model.AMC_Phone) %>
            <%: Html.ValidationMessageFor(model => model.AMC_Phone) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.AMC_Email) %>
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(model => model.AMC_Email) %>
            <%: Html.ValidationMessageFor(model => model.AMC_Email) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.AMC_Address) %>
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(model => model.AMC_Address)%>
            <%: Html.ValidationMessageFor(model => model.AMC_Address)%>
        </div>
        <%if (ViewData["Branches"] != null)
          { %>
        <div class="editor-label">
            Branch
        </div>
        <div class="editor-field">
            <%= Html.DropDownListFor(model => model.BranchId, (IEnumerable<SelectListItem>)ViewData["Branches"], ">> Select", new { @id = "ddlBranchId", @class = "selectNone" })%>
            <%: Html.ValidationMessageFor(model => model.BranchId, "Branch is required")%>
        </div>
        <%} %>
        <p>
            <input type="submit" value="Save" />
        </p>
    </fieldset>
    <% } %>
    <div>
        <%: Html.ActionLink("List", "List")%>
    </div>
</asp:Content>
