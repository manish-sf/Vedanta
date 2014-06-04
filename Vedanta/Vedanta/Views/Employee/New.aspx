<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Vedanta.Models.Employees>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Vendata | New Employee
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="pageTitle">
        <div class="pageHeader">
            <h2>
                New Employee</h2>
        </div>
        <div class="pageLink">
            <a href="/Employee/List">
                <img src="../../Images/list.png" alt="" title="Employee List" /></a>
            <%--  <%: Html.ActionLink("Go to Employee List", "List") %>--%>
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
        <% using (Html.BeginForm())
           {%>
        <%: Html.ValidationSummary(true) %>
        <p style="margin: 0px; padding-top: 10px; text-align: right;">
            <span class="required">*</span>(Asterisk) indicates required fields</p>
        <table class="mainTable" border="0">
            <tr>
                <td>
                    <%: Html.LabelFor(model => model.EmployeeId) %><span class="required">*</span>
                    <br />
                    <%: Html.TextBoxFor(model => model.EmployeeId, new { @placeholder = "Employee Id" })%>
                    <%: Html.ValidationMessageFor(model => model.EmployeeId,"Employee Id is required") %>
                </td>
                <td colspan="2">
                    <%: Html.LabelFor(model => model.JoiningDate) %><span class="required">*</span>
                    <br />
                    <%: Html.TextBoxFor(model => model.JoiningDate, new { @class = "datepicker required"})%>
                    <%: Html.ValidationMessageFor(model => model.JoiningDate,"Employee Id is required") %>
                </td>
            </tr>
            <tr>
                <td>
                    <%if (ViewData["Zones"] != null)
                      { %>
                    <%: Html.LabelFor(model => model.ZoneId)%><span class="required">*</span>
                    <br />
                    <%:Html.DropDownListFor(model => model.ZoneId, (IEnumerable<SelectListItem>)ViewData["Zones"], "Select", new { @class = "selectNone", @id = "ZoneId", onchange = "fillSelectedZoneRegionList()" })%>
                    <%: Html.ValidationMessageFor(model => model.ZoneId, "Employee Zone is required")%>
                    <%} %>
                </td>
                <td colspan="2">
                    <%if (ViewData["Regions"] != null)
                      { %>
                    <%: Html.LabelFor(model => model.RegionId)%><span id="spanRegionRequired" class="required">*</span>
                    <br />
                    <%:Html.DropDownListFor(model => model.RegionId, (IEnumerable<SelectListItem>)ViewData["Regions"], "Select", new { @class = "selectNone", @id = "RegionId" })%>
                    <%: Html.ValidationMessageFor(model => model.RegionId, "Employee Region is required")%>
                    <%} %>
                </td>
            </tr>
            <tr>
                <td>
                    <%: Html.LabelFor(model => model.BranchId)%><span id="spanBranchRequired" class="required">*</span>
                    <br />
                    <%:Html.DropDownListFor(model => model.BranchId, (IEnumerable<SelectListItem>)ViewData["Branchs"], "Select", new { @class = "selectNone", @id = "BranchId" })%>
                    <%: Html.ValidationMessageFor(model => model.BranchId, "Employee Branch is required")%>
                </td>
                <td colspan="2">
                    <%: Html.LabelFor(model => model.EmployeesRankId)%><span class="required">*</span>
                    <br />
                    <%:Html.DropDownListFor(model => model.EmployeesRankId, (IEnumerable<SelectListItem>)ViewData["EmployeeRanks"], "Select", new { @class = "selectNone", @id = "RankId" })%>
                    <%: Html.ValidationMessageFor(model => model.EmployeesRankId, "Employee Rank is required")%>
                </td>
            </tr>
            <tr>
                <td>
                    <%: Html.LabelFor(model => model.FirstName)%><span class="required">*</span>
                    <br />
                    <%: Html.TextBoxFor(model => model.FirstName, new { @placeholder = "First Name" })%>
                    <%: Html.ValidationMessageFor(model => model.FirstName, "First Name is required")%>
                </td>
                <td>
                    <%: Html.LabelFor(model => model.MiddleName) %>
                    <br />
                    <%: Html.TextBoxFor(model => model.MiddleName) %>
                    <%: Html.ValidationMessageFor(model => model.MiddleName) %>
                </td>
                <td>
                    <%: Html.LabelFor(model => model.LastName) %><span class="required">*</span>
                    <br />
                    <%: Html.TextBoxFor(model => model.LastName) %>
                    <br />
                    <%: Html.ValidationMessageFor(model => model.LastName, "Last Name is required")%>
                </td>
            </tr>
            <tr>
                <td style="width: 33%">
                    <%: Html.LabelFor(model => model.DOB) %>
                    <br />
                    <%: Html.TextBoxFor(model => model.DOB, new { @class = "datepicker required"}) %>
                    <%: Html.ValidationMessageFor(model => model.DOB, "Date Of Birth is required")%>
                </td>
                <td>
                    <%: Html.LabelFor(model => model.Gender) %><span class="required">*</span>
                    <br />
                    <%:Html.DropDownListFor(model => model.Gender, (IEnumerable<SelectListItem>)ViewData["Genders"], "Select", new { @class = "selectNone", @id = "GenderId" })%>
                    <br />
                    <%: Html.ValidationMessageFor(model => model.Gender, "Gender is required")%>
                </td>
                <td>
                    <%: Html.LabelFor(model => model.MaritalStatusId) %><span class="required">*</span>
                    <br />
                    <%:Html.DropDownListFor(model => model.MaritalStatusId, (IEnumerable<SelectListItem>)ViewData["MaritalStstus"], "Select", new { @class = "selectNone", @id = "MaritalStatusId" })%>
                    <br />
                    <%: Html.ValidationMessageFor(model => model.MaritalStatusId, "Marital Status is required")%>
                </td>
            </tr>
            <tr>
                <td>
                    <%: Html.LabelFor(model => model.FatherName) %>
                    <br />
                    <%: Html.TextBoxFor(model => model.FatherName) %>
                    <%: Html.ValidationMessageFor(model => model.FatherName) %>
                </td>
                <td colspan="2">
                    <%: Html.LabelFor(model => model.MotherName) %>
                    <br />
                    <%: Html.TextBoxFor(model => model.MotherName) %>
                    <%: Html.ValidationMessageFor(model => model.MotherName) %>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <%: Html.LabelFor(model => model.Street) %><span class="required">*</span>
                    <br />
                    <%: Html.TextBoxFor(model => model.Street, new { @style = "width:85%;min-width:500px;" })%>
                    <%: Html.ValidationMessageFor(model => model.Street, "Street Address is required")%>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <%: Html.LabelFor(model => model.Street2) %><br />
                    <%: Html.TextBoxFor(model => model.Street2, new { @style = "width:85%;min-width:500px;" })%>
                    <%: Html.ValidationMessageFor(model => model.Street2) %>
                </td>
            </tr>
            <tr>
                <td>
                    <%: Html.LabelFor(model => model.City) %><span class="required">*</span>
                    <br />
                    <%: Html.TextBoxFor(model => model.City) %>
                    <%: Html.ValidationMessageFor(model => model.City, "City is required")%>
                </td>
                <td>
                    <%: Html.LabelFor(model => model.CountryId) %><br />
                    <%:Html.DropDownListFor(model => model.CountryId, (IEnumerable<SelectListItem>)ViewData["Countries"], "Select", new { @class = "selectNone", @id = "CountryId", onchange = "fillSelectedCountryStateList()" })%>
                    <%: Html.ValidationMessageFor(model => model.CountryId) %>
                </td>
                <td>
                    <%: Html.LabelFor(model => model.StateId) %><span class="required">*</span>
                    <br />
                    <%:Html.DropDownListFor(model => model.StateId, (IEnumerable<SelectListItem>)ViewData["States"], "Select", new { @class = "selectNone", @id = "StateId" })%>
                    <%: Html.ValidationMessageFor(model => model.StateId, "State is required")%>
                </td>
            </tr>
            <tr>
                <td>
                    <%: Html.LabelFor(model => model.Zip) %>
                    <br />
                    <%: Html.TextBoxFor(model => model.Zip) %>
                    <%: Html.ValidationMessageFor(model => model.Zip) %>
                </td>
                <td>
                    <%: Html.LabelFor(model => model.Phone) %>
                    <br />
                    <%: Html.TextBoxFor(model => model.Phone) %>
                    <%: Html.ValidationMessageFor(model => model.Phone) %>
                </td>
                <td>
                    <%: Html.LabelFor(model => model.Mobile) %>
                    <br />
                    <%: Html.TextBoxFor(model => model.Mobile) %>
                    <%: Html.ValidationMessageFor(model => model.Mobile) %>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <%: Html.LabelFor(model => model.Email) %><br />
                    <%: Html.TextBoxFor(model => model.Email, new {@style="width:400px;" })%>
                    <%: Html.ValidationMessageFor(model => model.Email) %>
                </td>
            </tr>
            <tr>
                <td>
                    <%: Html.LabelFor(model => model.PAN) %><br />
                    <%: Html.TextBoxFor(model => model.PAN) %>
                    <%: Html.ValidationMessageFor(model => model.PAN) %>
                </td>
                <td>
                    <%: Html.LabelFor(model => model.PassportNo) %><br />
                    <%: Html.TextBoxFor(model => model.PassportNo) %>
                    <%: Html.ValidationMessageFor(model => model.PassportNo) %>
                </td>
                <td>
                    <%: Html.LabelFor(model => model.UIDNo)%><br />
                    <%: Html.TextBoxFor(model => model.UIDNo) %>
                    <%: Html.ValidationMessageFor(model => model.UIDNo)%>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <%: Html.LabelFor(model => model.QualificationId) %><span class="required">*</span>
                    <br />
                    <%:Html.DropDownListFor(model => model.QualificationId, (IEnumerable<SelectListItem>)ViewData["Qualifications"], "Select", new { @class = "selectNone", @id = "QualificationId" })%>
                    <%: Html.ValidationMessageFor(model => model.QualificationId, "Qualification is required")%>
                </td>
            </tr>
        </table>
        <p>
            <input type="submit" value="Save New Employee" id="submit" title="Save New Employee" />
        </p>
        <% } %>
    </div>
</asp:Content>
