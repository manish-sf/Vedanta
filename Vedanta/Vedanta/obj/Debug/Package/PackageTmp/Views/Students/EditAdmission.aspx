<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Vedanta.Models.Admissions>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit Admission Details
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="pageTitle">
        <div class="pageHeader">
            <h2>
                Edit Admission Details</h2>
        </div>
        <div class="pageLink">
            <a href="/Report/NewAdmission">
                <img src="../../Images/list.png" alt="" title="New Admission List" /></a>
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
        <%--  <% using (Html.BeginForm())
           {%>--%>
        <% using (Html.BeginForm())
           {%>
        <%: Html.ValidationSummary(true) %>
        <p style="margin: 0px; padding-top: 10px; text-align: right;">
            <span class="required">*</span>(Asterisk) indicates required fields</p>
        <div id="AddmissionDetails">
            <table class="mainTable" border="0">
                <tr>
                    <td colspan="2" class="blankCell">
                        <legend>Student Details</legend>
                    </td>
                </tr>
                <%Vedanta.Models.vw_Admissions studentDetails = new Vedanta.Models.vw_Admissions();

                  if (ViewData["StudentDetails"] != null)
                  {
                      studentDetails = ViewData["StudentDetails"] as Vedanta.Models.vw_Admissions;
                      if (studentDetails != null)
                      {  %>
                <tr>
                    <td>
                        <%:Html.Hidden("hdnStudentId",studentDetails.StudentId) %>
                        Name<br />
                        <strong>
                            <%:studentDetails.FirstName%><%:studentDetails.LastName%></strong>
                    </td>
                    <td>
                        Address<br />
                        <strong>
                            <%:studentDetails.Street%><br />
                            <%:studentDetails.Street2%><br />
                            <%:studentDetails.State %>&nbsp;<%:studentDetails.Zip %>&nbsp;<%:studentDetails.Country %></strong>
                    </td>
                </tr>
                <%}
                  }
                %>
                <tr>
                    <td colspan="2" class="blankCell">
                        <legend>Admission Details</legend>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%: Html.LabelFor(model => model.RegistrationNumber) %><span class="required">*</span><br />
                        <%: Html.TextBoxFor(model => model.RegistrationNumber)%>
                        <%: Html.ValidationMessageFor(model => model.RegistrationNumber)%>
                    </td>
                    <td>
                        <%: Html.LabelFor(model => model.RollNumber) %><span class="required">*</span><br />
                        <%: Html.TextBoxFor(model => model.RollNumber)%>
                        <%: Html.ValidationMessageFor(model => model.RollNumber)%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%: Html.LabelFor(model => model.CourseId) %><span class="required">*</span><br />
                        <%:Html.DropDownListFor(model => model.CourseId, (IEnumerable<SelectListItem>)ViewData["Courses"], "Select", new { @class = "selectNone", @id = "CourseId", onchange = "setCourseFee()" })%>
                        <%: Html.ValidationMessageFor(model => model.CourseId)%>
                    </td>
                    <td>
                        Course Fee Rs.<br />
                        <span id="spnCourseFee"></span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%: Html.LabelFor(model => model.AdmissionDate) %><span class="required">*</span><br />
                        <%: Html.TextBoxFor(model => model.AdmissionDate, new { @class = "datepicker" })%>
                        <%: Html.ValidationMessageFor(model => model.AdmissionDate)%>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%: Html.LabelFor(model => model.BatchId) %><br />
                        <%:Html.DropDownListFor(model => model.BatchId, (IEnumerable<SelectListItem>)ViewData["Batches"], "Select", new { @class = "selectNone", @id = "BatchId" })%>
                        <%: Html.ValidationMessageFor(model => model.BatchId)%>
                    </td>
                    <td>
                        <%: Html.LabelFor(model => model.BatchStartDate) %><br />
                        <%: Html.TextBoxFor(model => model.BatchStartDate, new { @class = "datepicker" })%>
                        <%: Html.ValidationMessageFor(model => model.BatchStartDate)%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%: Html.LabelFor(model => model.IsComputerKnown) %><br />
                        <%:Html.DropDownListFor(model => model.IsComputerKnown, (IEnumerable<SelectListItem>)ViewData["YesNo"], "Select", new { @class = "selectNone", @id = "IsComputerKnownId" })%>
                        <%: Html.ValidationMessageFor(model => model.IsComputerKnown)%>
                    </td>
                    <td>
                        <%: Html.LabelFor(model => model.ComputerKnowledgeLevelId) %><br />
                        <%:Html.DropDownListFor(model => model.ComputerKnowledgeLevelId, (IEnumerable<SelectListItem>)ViewData["ComputerKnoledgeLevels"], "Select", new { @class = "selectNone", @id = "ComputerKnoledgeLevelsId" })%>
                        <%: Html.ValidationMessageFor(model => model.ComputerKnowledgeLevelId)%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%: Html.LabelFor(model => model.ComputerInterestId) %><br />
                        <%:Html.DropDownListFor(model => model.ComputerInterestId, (IEnumerable<SelectListItem>)ViewData["ComputerInterests"], "Select", new { @class = "selectNone", @id = "ComputerInterestId" })%>
                        <%: Html.ValidationMessageFor(model => model.ComputerInterestId)%>
                    </td>
                    <td>
                        <%: Html.LabelFor(model => model.HowToKnowAboutUsId) %><br />
                        <%:Html.DropDownListFor(model => model.HowToKnowAboutUsId, (IEnumerable<SelectListItem>)ViewData["HowToKnowAboutUs"], "Select", new { @class = "selectNone", @id = "HowToKnowAboutUsId" })%>
                        <%: Html.ValidationMessageFor(model => model.HowToKnowAboutUsId)%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%: Html.LabelFor(model => model.NeedJobAssistance) %><br />
                        <%:Html.DropDownListFor(model => model.NeedJobAssistance, (IEnumerable<SelectListItem>)ViewData["YesNo"], "Select", new { @class = "selectNone", @id = "NeedJobAssistanceId" })%>
                        <%: Html.ValidationMessageFor(model => model.NeedJobAssistance)%>
                    </td>
                    <td>
                        <%: Html.LabelFor(model => model.Location) %><br />
                        <%: Html.TextBoxFor(model => model.Location)%>
                        <%: Html.ValidationMessageFor(model => model.Location)%>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="blankCell">
                        <legend>Payment Details</legend>
                    </td>
                </tr>
                <tr>
                    <td>
                        Pay Full Payment One Time
                    </td>
                    <td>
                        <input type="checkbox" id="chkFeeOneTime" name="chkFeeOneTime" title="">
                    </td>
                </tr>
                <tr>
                    <td>
                        <%: Html.LabelFor(model => model.DownPayment) %><span class="required">*</span><br />
                        <%: Html.TextBoxFor(model => model.DownPayment, new {@id="DownPayment" })%>
                        <%: Html.ValidationMessageFor(model => model.DownPayment)%>
                    </td>
                    <td>
                        <%: Html.LabelFor(model => model.MaximumDiscountAmount) %><br />
                        <%: Html.TextBoxFor(model => model.MaximumDiscountAmount, new { @id = "MaximumDiscountAmount" })%>
                        <%: Html.ValidationMessageFor(model => model.MaximumDiscountAmount)%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%: Html.LabelFor(model => model.PaymentModeId)%><span class="required">*</span><br />
                        <%:Html.DropDownListFor(model => model.PaymentModeId, (IEnumerable<SelectListItem>)ViewData["PaymentModes"], "Select", new { @class = "selectNone", @id = "PaymentModeId" })%>
                        <%: Html.ValidationMessageFor(model => model.PaymentModeId)%>
                    </td>
                    <td>
                        <%: Html.LabelFor(model => model.Description)%><br />
                        <%: Html.TextBoxFor(model => model.Description)%>
                        <%: Html.ValidationMessageFor(model => model.Description)%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%: Html.LabelFor(model => model.ManualReceiptNumber)%><span class="required">*</span><br />
                        <%: Html.TextBoxFor(model => model.ManualReceiptNumber)%>
                        <%: Html.ValidationMessageFor(model => model.ManualReceiptNumber)%>
                    </td>
                    <td>
                        <%: Html.LabelFor(model => model.NextPaymentDueDate) %><br />
                        <%: Html.TextBoxFor(model => model.NextPaymentDueDate, new { @class = "datepicker" })%>
                        <%: Html.ValidationMessageFor(model => model.NextPaymentDueDate)%>
                    </td>
                </tr>
            </table>
            <p>
                <input type="submit" value="Save" name="Submit" id="submit" />
            </p>
        </div>
        <% } %>
    </div>
</asp:Content>
