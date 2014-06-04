<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Vedanta.Models.CourseBrands>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Add Course Brands
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Add Course Brands</h2>
    <% using (Html.BeginForm())
       {%>
    <%: Html.ValidationSummary(true) %>
    <fieldset>
        <legend>Fields</legend>
        <% if (Roles.IsUserInRole("SuperAdmin"))
           { %>
        <div class="editor-label">
            Client
        </div>
        <div class="editor-field">
            <%--   <%= Html.DropDownList("ddlSchoolList", (IEnumerable<SelectListItem>)ViewData["SchoolList"], "All")%>--%>
            <%= Html.DropDownList("ClientId", (IEnumerable<SelectListItem>)ViewData["Clients"], "Select")%>
        </div>
        <%} %>
        <% if (!Roles.IsUserInRole("CenterManager"))
           { %>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.BranchId)%>
        </div>
        <div class="editor-field">
            <%--   <%= Html.DropDownList("ddlSchoolList", (IEnumerable<SelectListItem>)ViewData["SchoolList"], "All")%>--%>
            <%= Html.DropDownListFor(model => model.BranchId, (IEnumerable<SelectListItem>)ViewData["Branches"], "Select")%>
        </div>
        <%} %>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.Name) %>
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(model => model.Name) %>
            <%: Html.ValidationMessageFor(model => model.Name) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.BoardUniversityName) %>
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(model => model.BoardUniversityName) %>
            <%: Html.ValidationMessageFor(model => model.BoardUniversityName) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.RepresentativeName) %>
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(model => model.RepresentativeName) %>
            <%: Html.ValidationMessageFor(model => model.RepresentativeName) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.Street1) %>
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(model => model.Street1) %>
            <%: Html.ValidationMessageFor(model => model.Street1) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.Street2) %>
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(model => model.Street2) %>
            <%: Html.ValidationMessageFor(model => model.Street2) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.City) %>
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(model => model.City) %>
            <%: Html.ValidationMessageFor(model => model.City) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.StateId) %>
        </div>
        <div class="editor-field">
            <%= Html.DropDownListFor(model => model.StateId, (IEnumerable<SelectListItem>)ViewData["StateList"], "Select")%>
            <%: Html.ValidationMessageFor(model => model.StateId) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.ZIP) %>
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(model => model.ZIP) %>
            <%: Html.ValidationMessageFor(model => model.ZIP) %>
        </div>
        <p>
            <input type="submit" value="Create" />
        </p>
    </fieldset>
    <% } %>
    <div>
        <%: Html.ActionLink("Back to List", "CourseBrandList") %>
    </div>
</asp:Content>
