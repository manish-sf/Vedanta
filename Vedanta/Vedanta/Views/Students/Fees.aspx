<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Vedanta.Models.FeeCollections>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Fees Collection
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        #divSearch
        {
            width: 98%;
            -webkit-border-radius: 10px;
            -moz-border-radius: 10px;
            border-radius: 10px;
            padding: 5px;
        }
        .dataView
        {
            width: 100%;
        }
    </style>
    <script type="text/javascript">
        function setDescriptionRequired() {
            var x = $('#PaymentModeId option:selected').text();
            alert(x);
        }
    </script>
    <div class="pageTitle">
        <div class="pageHeader">
            <h2>
                Fee Collection</h2>
        </div>
        <div class="pageLink">
            <a href="/Students/List">
                <img src="../../Images/list.png" alt="" title="Student List" /></a>
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
        <div id="divSearch">
            Enter Registration Number
            <%:Html.TextBox("txtReg_Number", ViewData["RegistrationNumber"])%>
            <%--<input type="text" id="txtReg_Number" name="txtReg_Number" value="" runat="server" />--%>
            <input type="submit" id="btnSearch" class="btnSearch" name="submit" value="Search"
                title="Search Student" />
        </div>
        <%: Html.ValidationSummary(true)%>
        <% Vedanta.Models.vw_Admissions studentDetail = null;
           if (ViewData["StudentDetails"] != null)
               studentDetail = ViewData["StudentDetails"] as Vedanta.Models.vw_Admissions;
           if (studentDetail != null)
           {
               
        %>
        <table class="dataView">
            <tr>
                <td colspan="3" class="blankCell">
                    <legend>Student Details</legend>
                </td>
            </tr>
            <tr>
                <td>
                    Name
                    <br />
                    <b>
                        <%: studentDetail.FirstName + " "+(studentDetail.MiddleName??string.Empty)+" "+ (studentDetail.LastName??string.Empty) %></b>
                </td>
                <td colspan="2">
                    Address<br />
                    <b>
                        <%: studentDetail.Street%><br />
                        <%: studentDetail.Street2%>
                        <br />
                        <%: studentDetail.City%>&nbsp;<%: studentDetail.State%>&nbsp;<%: studentDetail.Country%>&nbsp;<%: studentDetail.Zip%></b>
                </td>
            </tr>
            <tr>
                <td>
                    Course
                    <br />
                    <b>
                        <%: studentDetail.CourseCode %></b>
                </td>
                <td colspan="2">
                    Admission Date
                    <br />
                    <b>
                        <%: string.Format("{0:dd/MM/yyyy}", studentDetail.AdmissionDate) %></b>
                </td>
            </tr>
            <tr>
                <td>
                    Course Fee<br />
                    <div style="color: Red; font-size: 1.2em; font-weight: bold;">
                        <span style="color: Black;">Total Course Fee:</span>
                        <%: string.Format("{0:0.00}",studentDetail.CourseFees) %></div>
                    <div style="color: Red; font-size: 1.2em; font-weight: bold;">
                        <span style="color: Black;">Due:</span>
                        <%: string.Format("{0:0.00}",(studentDetail.TotalInstallmentAmount-studentDetail.FeeCollected)) %>&nbsp;<br />
                        <span style="color: Black;">Due Date:</span>
                        <%: string.Format("{0:dd/MM/yyyy}",studentDetail.NextPaymentDueDate) %>
                    </div>
                </td>
                <td colspan="2">
                    <div style="color: Red; font-size: 1.5em; font-weight: bold;">
                        <span style="color: Black;">Total Fee Paid(Rs.)</span> &nbsp;
                        <%:string.Format("{0:0.00}", studentDetail.FeeCollected) %></div>
                </td>
            </tr>
            <tr>
                <td colspan="3" class="blankCell">
                    <legend>Fee Payment</legend>
                </td>
            </tr>
            <tr>
                <td>
                    <%: Html.LabelFor(model => model.PaymentDate)%><span class="required">*</span>
                    <br />
                    <%: Html.TextBoxFor(model => model.PaymentDate, new { @class = "datepicker" })%>
                    <%: Html.ValidationMessageFor(model => model.PaymentDate, "Date is required")%>
                </td>
                <td>
                    <%: Html.LabelFor(model => model.PaymentHeadId)%><span class="required">*</span>
                    <br />
                    <%:Html.DropDownListFor(model => model.PaymentHeadId, (IEnumerable<SelectListItem>)ViewData["PaymentHeads"], "Select", new { @class = "selectNone", @id = "PaymentHeadId" })%>
                    <%: Html.ValidationMessageFor(model => model.PaymentHeadId, "Payment Head is required")%>
                </td>
                <td>
                    <%: Html.LabelFor(model => model.Amount)%><span class="required">*</span>
                    <br />
                    <%: Html.TextBoxFor(model => model.Amount)%>
                    <%: Html.ValidationMessageFor(model => model.Amount, "Amount is required")%>
                </td>
            </tr>
            <tr>
                <td>
                    <%: Html.LabelFor(model => model.PaymentModeId)%><span class="required">*</span>
                    <br />
                    <%:Html.DropDownListFor(model => model.PaymentModeId, (IEnumerable<SelectListItem>)ViewData["PaymentModes"], "Select", new { @class = "selectNone", @id = "PaymentModeId", onchange = "setDescriptionRequired()" })%>
                    <%: Html.ValidationMessageFor(model => model.PaymentModeId, "Payment Mode is required")%>
                </td>
                <td>
                    <%: Html.LabelFor(model => model.Description)%>
                    <br />
                    <%: Html.TextBoxFor(model => model.Description, new { @maxlength = 50 })%>
                    <%: Html.ValidationMessageFor(model => model.Description, "Cheque/DD Details is required")%>
                </td>
                <td>
                    <%: Html.LabelFor(model => model.ManualreceiptNumber)%><span class="required">*</span>
                    <br />
                    <%: Html.TextBoxFor(model => model.ManualreceiptNumber, new { @maxlength = 50 })%>
                    <%: Html.ValidationMessageFor(model => model.ManualreceiptNumber, "Manual Receipt Number is required")%>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: right; padding-right: 10px;">
                    <input type="submit" id="submit" name="submit" value="Submit" title="Pay Fees" />
                </td>
            </tr>
        </table>
        <% List<Vedanta.Models.vw_FeeCollections> feePaid = null;
           if (ViewData["CollectedFees"] != null)
           {
               feePaid = ViewData["CollectedFees"] as List<Vedanta.Models.vw_FeeCollections>;
               if (feePaid != null && feePaid.Count() > 0)
               {%>
        <% Html.RenderPartial("FeeListUserControl", feePaid); %>
        <%  }
           }        
        %>
        <%}
           }
        %>
    </div>
</asp:Content>
