<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Vedanta.Models.Courses>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    New Course
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="pageTitle">
        <div class="pageHeader">
            <h2>
                New Course</h2>
        </div>
        <div class="pageLink">
            <a href="/Courses/List">
                <img src="../../Images/list_2.png" alt="" title="Course List" /></a>
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
        <table class="mainTable" border="0">
            <%if (ViewData["CourseBrands"] != null)
              { %>
            <tr>
                <td colspan="2">
                    <%: Html.LabelFor(model => model.CourseBrandId)%>
                    <br />
                    <%= Html.DropDownListFor(model => model.CourseBrandId, (IEnumerable<SelectListItem>)ViewData["CourseBrands"], "Select")%>
                    <span style="padding-top: 5px;"><a href="/Courses/CourseBrandList">
                        <img src="../../Images/plus.png" title="Add CourseBrands" height="24px" width="24px"
                            alt="CourseBrands" />
                    </a></span>
                    <%: Html.ValidationMessageFor(model => model.CourseBrandId)%>
                </td>
            </tr>
            <%} %>
            <tr>
                <td style="min-width: 275px; width: 48%;">
                    <%: Html.LabelFor(model => model.CourseCode)%><span class="required">*</span>
                    <br />
                    <%: Html.TextBoxFor(model => model.CourseCode)%>
                    <%: Html.ValidationMessageFor(model => model.CourseCode, "Course Code is required")%>
                </td>
                <td style="min-width: 275px;">
                    <%: Html.LabelFor(model => model.CourseName)%><span class="required">*</span>
                    <br />
                    <%: Html.TextBoxFor(model => model.CourseName) %>
                    <%: Html.ValidationMessageFor(model => model.Duration_In_Months) %>
                </td>
            </tr>
            <tr>
                <td style="min-width: 275px; width: 48%;">
                    <%: Html.LabelFor(model => model.Duration_In_Months)%><span class="required">*</span>
                    <br />
                    <%: Html.TextBoxFor(model => model.Duration_In_Months) %>
                    <%: Html.ValidationMessageFor(model => model.Duration_In_Months) %>
                </td>
                <td style="min-width: 275px;">
                    <%: Html.LabelFor(model => model.FastTrackDuration)%><span class="required">*</span>
                    <br />
                    <%: Html.TextBoxFor(model => model.FastTrackDuration) %>
                    <%: Html.ValidationMessageFor(model => model.FastTrackDuration) %>
                </td>
            </tr>
            <tr>
                <td style="min-width: 275px; width: 48%;">
                    <%: Html.LabelFor(model => model.CourseFees)%><span class="required">*</span>
                    <br />
                    <%: Html.TextBoxFor(model => model.CourseFees) %>
                    <%: Html.ValidationMessageFor(model => model.CourseFees) %>
                </td>
                <td style="min-width: 275px;">
                    <%: Html.LabelFor(model => model.MinimumDownPayment)%><span class="required">*</span>
                    <br />
                    <%: Html.TextBoxFor(model => model.MinimumDownPayment) %>
                    <%: Html.ValidationMessageFor(model => model.MinimumDownPayment) %>
                </td>
            </tr>
            <tr>
                <td style="min-width: 275px; width: 48%;">
                    <%: Html.LabelFor(model => model.MaximumDiscountAmount)%><span class="required">*</span>
                    <br />
                    <%: Html.TextBoxFor(model => model.MaximumDiscountAmount) %>
                    <%: Html.ValidationMessageFor(model => model.MaximumDiscountAmount) %>
                </td>
                <td style="min-width: 275px;">
                    <%: Html.LabelFor(model => model.MaximumNumberOfInstallments)%><span class="required">*</span>
                    <br />
                    <%: Html.TextBoxFor(model => model.MaximumNumberOfInstallments) %>
                    <%: Html.ValidationMessageFor(model => model.MaximumNumberOfInstallments) %>
                </td>
            </tr>
            <tr>
                <td style="min-width: 275px; width: 48%;">
                    <%: Html.LabelFor(model => model.InstallmentAmount)%><span class="required">*</span>
                    <br />
                    <%: Html.TextBoxFor(model => model.InstallmentAmount) %>
                    <%: Html.ValidationMessageFor(model => model.InstallmentAmount) %>
                </td>
                <td style="min-width: 275px;">
                    <%: Html.LabelFor(model => model.TotalInstallmentAmount)%><span class="required">*</span>
                    <br />
                    <%: Html.TextBoxFor(model => model.TotalInstallmentAmount) %>
                    <%: Html.ValidationMessageFor(model => model.TotalInstallmentAmount) %>
                </td>
            </tr>
        </table>
        <p>
            <input type="submit" id="submit" value="Save Course" />
        </p>
        <% } %>
    </div>
</asp:Content>
