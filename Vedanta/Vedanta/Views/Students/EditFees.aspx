<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Vedanta.Models.FeeCollections>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit Fees
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="pageTitle">
        <div class="pageHeader">
            <h2>
                Edit Fee
            </h2>
        </div>
        <div class="pageLink">
            <a href="/Report/NewAdmission">
                <img src="../../Images/list.png" alt="" title="Fee Collection List" /></a>
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
                <tr>
                    <td colspan="2" class="blankCell">
                        <legend>Admission Details</legend>
                    </td>
                </tr>
                <tr>
                    <td>
                        Registration Number<br />
                        <%:studentDetails.RegistrationNumber%>
                    </td>
                    <td>
                        RollNumber<br />
                        <%:studentDetails.RollNumber%>
                    </td>
                </tr>
                <tr>
                    <td>
                        Course<br />
                        <%:studentDetails.CourseName %>
                    </td>
                    <td>
                        Course Fee Rs.<br />
                        <%:studentDetails.CourseFees %>
                    </td>
                </tr>
                <tr>
                    <td>
                        Admission Date<br />
                        <%: string.Format("{0:dd/MM/yyyy}",studentDetails.AdmissionDate) %>
                    </td>
                    <td>
                    </td>
                </tr>
                <%}
                  }
                %>
                <tr>
                    <td colspan="2" class="blankCell">
                        <legend>Payment Details</legend>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%: Html.LabelFor(model => model.PaymentDate)%><span class="required">*</span>
                        <br />
                        <%: Html.TextBoxFor(model => model.PaymentDate, new {@Value=string.Format("{0:MM/dd/yyyy}",Model.PaymentDate), @class = "datepicker" })%>
                        <%: Html.ValidationMessageFor(model => model.PaymentDate, "Date is required")%>
                    </td>
                    <td>
                        <%: Html.LabelFor(model => model.PaymentHeadId)%><span class="required">*</span>
                        <br />
                        <%:Html.DropDownListFor(model => model.PaymentHeadId, (IEnumerable<SelectListItem>)ViewData["PaymentHeads"], "Select", new { @class = "selectNone", @id = "PaymentHeadId" })%>
                        <%: Html.ValidationMessageFor(model => model.PaymentHeadId, "Payment Head is required")%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%: Html.LabelFor(model => model.Amount) %><span class="required">*</span><br />
                        <%: Html.TextBoxFor(model => model.Amount)%>
                        <%: Html.ValidationMessageFor(model => model.Amount)%>
                    </td>
                    <td>
                        <%: Html.LabelFor(model => model.ManualreceiptNumber)%><span class="required">*</span><br />
                        <%: Html.TextBoxFor(model => model.ManualreceiptNumber)%>
                        <%: Html.ValidationMessageFor(model => model.ManualreceiptNumber)%>
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
                        <%:Html.TextBoxFor(model=>model.AdmissionId,new{@style="display:none"}) %>
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
