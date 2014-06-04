<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Vedanta.Models.RegisterModel>" %>

<asp:Content ID="registerTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Register
</asp:Content>
<asp:Content ID="registerContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        #spnUserAvailable
        {
            display: none;
            color: #5bb215;
            padding-left: 20px;
            background: url("../../images/tick_16.png") no-repeat;
            vertical-align: middle;
            margin-left: 5px;
        }
        #spnUserBooked
        {
            display: none;
            color: Red;
            padding-left: 20px;
            background: url("../../images/cross_16.png") no-repeat;
            vertical-align: middle;
            margin-left: 5px;
        }
    </style>
    <h2>
        Create a New Account</h2>
    <%--  <p>
        Use the form below to create a new account.
    </p>--%>
    <p>
        Passwords are required to be a minimum of
        <%: ViewData["PasswordLength"] %>
        characters in length.
    </p>
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
    <% using (Html.BeginForm())
       { %>
    <%: Html.ValidationSummary(true, "Account creation was unsuccessful. Please correct the errors and try again.") %>
    <div>
        <fieldset>
            <legend>Account Information</legend>
            <%if (ViewData["Clients"] != null && Roles.IsUserInRole("SuperAdmin"))
              { %>
            <div class="editor-label">
                Client Name
            </div>
            <div class="editor-field">
                <%:Html.DropDownListFor(m => m.ClientId, (IEnumerable<SelectListItem>)ViewData["Clients"], "Select", new { @class = "selectNone", @id = "clientId" })%>
                <%: Html.ValidationMessageFor(m => m.UserRole)%>
            </div>
            <%} %>
            <div class="editor-label">
                <%: Html.LabelFor(m=>m.EmployeeId) %>
            </div>
            <div class="editor-field">
                <%:Html.TextBoxFor(m => m.EmployeeId, new {@onblur="getEmployeeDetails()" })%>
                <%: Html.ValidationMessageFor(m => m.EmployeeId)%>
            </div>
            <div id="divEmpDetails" style="font-weight: bold">
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(m => m.UserName) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(m => m.UserName, new {@onblur="CheckUserAvailability()" })%><span
                    id="spnUserAvailable">Congratulation! UserName is Available.</span><span id="spnUserBooked">Sorry!
                        UserName is not available. try with another UserName </span>
                <%: Html.ValidationMessageFor(m => m.UserName) %>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(m => m.Email) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(m => m.Email) %>
                <%: Html.ValidationMessageFor(m => m.Email) %>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(m => m.Password) %>
            </div>
            <div class="editor-field">
                <%: Html.PasswordFor(m => m.Password) %>
                <%: Html.ValidationMessageFor(m => m.Password) %>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(m => m.ConfirmPassword) %>
            </div>
            <div class="editor-field">
                <%: Html.PasswordFor(m => m.ConfirmPassword) %>
                <%: Html.ValidationMessageFor(m => m.ConfirmPassword) %>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(m => m.UserRole) %>
            </div>
            <div class="editor-field">
                <%:Html.DropDownListFor(m => m.UserRole, (IEnumerable<SelectListItem>)ViewData["UserRoles"], "Select", new { @class = "selectNone", @id = "roleId" })%>
                <%: Html.ValidationMessageFor(m => m.UserRole) %>
            </div>
            <p>
                <input type="submit" value="Register" id="submit" />
            </p>
        </fieldset>
    </div>
    <% } %>
</asp:Content>
