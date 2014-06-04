<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Vedanta.Models.vw_Admissions>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Admission Receipt
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="pageTitle noprint">
        <div class="pageHeader">
            <h2>
                Admission Receipts</h2>
        </div>
        <div class="pageLink">
            <a href="/Students/List">
                <img src="../../Images/list.png" alt="" title="Student List" /></a> <a href="/Students/New">
                    <img src="../../Images/add_user.png" alt="" title="New Admission" /></a>
            <%-- <img class="print" src="../../Images/print_32.png" alt="Print" title="Print Receipt"
                onclick="printReceipt()" />--%>
            <a href="javascript:window.print()">
                <img class="printer" src="../../Images/print_32.png" alt="Print" title="Print Receipt" /></a>
        </div>
    </div>
    <div id="Mainpg">
        <div style="width: 100%; text-align: center;" class="print noscreen">
            <%Vedanta.Models.vw_Branches brDetails = new Vedanta.Models.vw_Branches();
              if (ViewData["BranchName"] != null)
              {
                  brDetails = ViewData["BranchName"] as Vedanta.Models.vw_Branches;
              } %>
            <strong>
                <%:brDetails.BranchName%></strong>
            <br />
            <%:brDetails.Address1%><br />
            <%:brDetails.Address2 %>&nbsp;<%:brDetails.City %>
        </div>
        <div style="width: 100%; text-align: center;" class="print">
            <p>
                <span style="text-decoration: underline; font-weight: bold;">New Admission Receipt</span></p>
        </div>
        <% if (Model != null)
           { %>
        <div style="width: 100%; min-height: 250px;">
            <center> 
            <table style="width: 90%;text-align:left;background-color:#fff; color:#000;">
            <tr><td colspan="2" class="DetailHeaderColumn"><strong> Registration Detail</strong></td></tr>
            <tr><td style="width:150px;">Registration Number</td> <td> <%: Model.RegistrationNumber%> </td></tr> 
            <tr><td>Admission Date</td><td>  <%: String.Format("{0:dd/MM/yyyy}", Model.AdmissionDate)%></td></tr>
            <tr><td>Course Name</td><td>   <%: Model.CourseCode%> <%: Model.CourseName%></td></tr> 
            <tr><td>Course Duration</td><td><%: Model.Duration_In_Months%></td></tr>
            <tr><td>Course Fee</td><td>  <%: String.Format("{0:0.00}", Model.CourseFees)%></td></tr>
            <tr><td>Discount Amount</td><td>  <%: String.Format("{0:0.00}", Model.MaximumDiscountAmount)%></td></tr>
            <tr><td>Down Payment</td><td> <%: String.Format("{0:0.00}", Model.DownPayment)%></td></tr>              
             <tr><td>Manual Receipt Number </td><td> <%: Model.ManualReceiptNumber%></td></tr>      
            <tr><td>Next Due Date</td><td>  <%: String.Format("{0:dd/MM/yyyy}", Model.NextPaymentDueDate)%></td></tr>
           <tr><td colspan="2" class="DetailHeaderColumn"><strong>Student Detail</strong></td></tr>   
            <tr>
               <td>
                 Student Name
               </td>
               <td>
                 <%: Model.FirstName%> <%: Model.LastName%> <%: Model.MiddleName%>
              </td>
           </tr>
           <tr>
                <td>Address</td><td>  
                <%: Model.Street%><br />
            <%: Model.Street2%><br />
            <%: Model.City%>
            <%: Model.State%>
            <%: Model.Country%>
            <%: Model.Zip%></td>
                </tr>
                <tr>
                <td>Phone/Mobile</td><td>  <%: Model.Phone%>
            <%: Model.Cell%></td>
                </tr>
                <tr>
                <td>Age/DOB</td><td> <%: Model.Age%> &nbsp;  <%: String.Format("{0:dd/MM/yyyy}", Model.DOB)%></td>
                </tr>
                <tr>
                <td>Gender</td><td> <%: Model.Gender%></td>
                </tr> 
                <tr>
               <td>Marital Status</td><td> <%: Model.MaritalStatusName%></td>
               </tr>
               <tr>
               <td>Father/Guardian Name</td><td>  <%: Model.FatherName%></td>
               </tr>
                <tr><td>Email</td><td> <%: Model.Email%></td></tr>
            
                </table>
               
                </center>
        </div>
        <div style="width: 100%; text-align: center; margin-bottom: 1px;" class="print noscreen">
            Note: This is a computer generated receipt and so no signature is required.</div>
        <iframe id="iframe1" src="http://199.189.250.157/smsclient/api.php?username=scan&password=27963108&source=senderid&dmobile=<%:Model.Cell%>&message=<%:Model.DownPayment%> received from <%:Model.FirstName%> against Admission. Your Registration Number is: <%: Model.RegistrationNumber%>"
            style="display: none;"></iframe>
        <%} %>
    </div>
</asp:Content>
