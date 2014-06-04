<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Vedanta.Models.ClientSettings>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Configuration Settings
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <% Vedanta.Models.vw_ClientList clientDetails = new Vedanta.Models.vw_ClientList();
       if (ViewData["Client"] != null)
       {
           clientDetails = ViewData["Client"] as Vedanta.Models.vw_ClientList;

       }
   
    %>
    <div class="pageTitle">
        <div class="pageHeader">
            <h2>
                Edit Client</h2>
        </div>
        <div class="pageLink">
            <%if (Roles.IsUserInRole("SuperAdmin"))
              {%>
            <a href="/Client/List">
                <img src="../../Images/list.png" alt="" title="Client List" /></a><%} %>
            <%if (clientDetails != null)
              { %>
            <a href="/Client/Details/<%:clientDetails.Id%>">
                <img src="../../Images/list-details.png" alt="" title="Client Details" /></a><%} %>
        </div>
    </div>
    <h2>
        Configuration Settings</h2>
    <div id="Mainpg">
        <div style="text-align: right; margin-top: 0px; border-bottom: 2px solid #000; padding-bottom: 3px;">
            Client Name:<strong>
                <%: clientDetails.Name%>[<%: clientDetails.Id%>]</strong>
        </div>
        <% using (Html.BeginForm())
           {%>
        <%: Html.ValidationSummary(true) %>
        <fieldset>
            <legend>Fields</legend>
            <%-- <div class="editor-label">
            <%: Html.LabelFor(model => model.ClientId) %>
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(model => model.ClientId) %>
            <%: Html.ValidationMessageFor(model => model.ClientId) %>
        </div>--%>
            <div class="editor-label">
                <%: Html.LabelFor(model => model.IsEducationServiceAvailable) %>
            </div>
            <div class="editor-field">
                <%--   <%:Html.CheckBoxFor(model =>(bool) model.IsBusServiceAvailable) %>--%>
                <%: Html.TextBoxFor(model => model.IsEducationServiceAvailable)%>
                <%: Html.ValidationMessageFor(model => model.IsEducationServiceAvailable)%>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(model => model.IsBusServiceAvailable) %>
            </div>
            <div class="editor-field">
                <%--   <%:Html.CheckBoxFor(model =>(bool) model.IsBusServiceAvailable) %>--%>
                <%: Html.TextBoxFor(model => model.IsBusServiceAvailable) %>
                <%: Html.ValidationMessageFor(model => model.IsBusServiceAvailable) %>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(model => model.IsHostelServiceAvailable) %>
            </div>
            <div class="editor-field">
                <%-- <%:Html.CheckBoxFor(model => (bool)model.IsHostelServiceAvailable)%>--%>
                <%: Html.TextBoxFor(model => model.IsHostelServiceAvailable) %>
                <%: Html.ValidationMessageFor(model => model.IsHostelServiceAvailable) %>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(model => model.IsDebtorCreditotsServiceAvailable) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.IsDebtorCreditotsServiceAvailable) %>
                <%: Html.ValidationMessageFor(model => model.IsDebtorCreditotsServiceAvailable) %>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(model => model.MaximumNumberOfUsersPerSchool) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.MaximumNumberOfUsersPerSchool) %>
                <%: Html.ValidationMessageFor(model => model.MaximumNumberOfUsersPerSchool) %>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(model => model.MaximumNumberOfCourseBrandsPerSchool) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.MaximumNumberOfCourseBrandsPerSchool) %>
                <%: Html.ValidationMessageFor(model => model.MaximumNumberOfCourseBrandsPerSchool) %>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(model => model.IsCerificateServiceAvailable) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.IsCerificateServiceAvailable) %>
                <%: Html.ValidationMessageFor(model => model.IsCerificateServiceAvailable) %>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(model => model.IsEnquiryServiceAvailable) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.IsEnquiryServiceAvailable) %>
                <%: Html.ValidationMessageFor(model => model.IsEnquiryServiceAvailable) %>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(model => model.IsDemoClassServiceAvailable) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.IsDemoClassServiceAvailable) %>
                <%: Html.ValidationMessageFor(model => model.IsDemoClassServiceAvailable) %>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(model => model.IsJobServiceAvailable) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.IsJobServiceAvailable) %>
                <%: Html.ValidationMessageFor(model => model.IsJobServiceAvailable) %>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(model => model.IsAssetServiceAvailable) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.IsAssetServiceAvailable) %>
                <%: Html.ValidationMessageFor(model => model.IsAssetServiceAvailable) %>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(model => model.IsOfficeExpenseServiceAvailable) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.IsOfficeExpenseServiceAvailable) %>
                <%: Html.ValidationMessageFor(model => model.IsOfficeExpenseServiceAvailable) %>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(model => model.IsStudyMaterialServiceAvailable) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.IsStudyMaterialServiceAvailable) %>
                <%: Html.ValidationMessageFor(model => model.IsStudyMaterialServiceAvailable) %>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(model => model.CanSeeFrenchisesAccount) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.CanSeeFrenchisesAccount) %>
                <%: Html.ValidationMessageFor(model => model.CanSeeFrenchisesAccount) %>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(model => model.IsSMSServiceAvailable) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.IsSMSServiceAvailable) %>
                <%: Html.ValidationMessageFor(model => model.IsSMSServiceAvailable) %>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(model => model.SMSurl) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.SMSurl) %>
                <%: Html.ValidationMessageFor(model => model.SMSurl) %>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(model => model.SMSUserId) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.SMSUserId) %>
                <%: Html.ValidationMessageFor(model => model.SMSUserId) %>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(model => model.SMSPwd) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.SMSPwd) %>
                <%: Html.ValidationMessageFor(model => model.SMSPwd) %>
            </div>
            <p>
                <input type="submit" value="Save Settings" />
            </p>
        </fieldset>
        <% } %>
    </div>
</asp:Content>
