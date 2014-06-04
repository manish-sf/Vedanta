<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Vedanta.Models.FeeReceipts>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    FeeReceipt
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script>
        function printReceipt() {
            $('#Mainpg').printElement();
        }     
    </script>
    <div class="pageTitle noprint">
        <div class="pageHeader">
            <h2>
                Fee Receipts</h2>
        </div>
        <div class="pageLink">
            <a href="/Students/List">
                <img src="../../Images/list.png" alt="" title="Student List" /></a> <a href="/Students/New">
                    <img src="../../Images/add_user.png" alt="" title="New Admission" /></a>
            <a href="/Students/Fees">
                <img src="../../Images/cash_stack_add.png" alt="" title="Fee Collection" /></a>
            <%-- <img class="print" src="../../Images/print_32.png" alt="Print" title="Print Receipt"
                onclick="printReceipt()" />--%>
            <a href="javascript:window.print()">
                <img class="printer" src="../../Images/print_32.png" alt="Print" title="Print Receipt" /></a>
        </div>
    </div>
    <div id="Mainpg">
        <div style="width: 100%; text-align: center;" class="print noscreen">
            <strong>Institute Name</strong>
            <br />
            Address<br />
        </div>
        <div style="width: 100%; text-align: center;" class="print">
            <p>
                <span style="text-decoration: underline; font-weight: bold;">Student Fee Receipt</span></p>
        </div>
        <%if (Model != null)
          { %>
        <div style="width: 100%;">
            <center> <table style="width: 70%;text-align:left;background-color:#fff; color:#000;">
                <tr>
                    <td style="width:150px;">
                        Registration Number
                    </td>
                    <td>
                        <%:Model.AdmissionDetails.RegistrationNumber %>
                    </td>
                </tr>
                <tr>
                    <td>
                        Student Name
                    </td>
                    <td>
                        <%:Model.AdmissionDetails.FirstName %>
                        <%:Model.AdmissionDetails.MiddleName %>
                        <%:Model.AdmissionDetails.LastName %>
                    </td>
                </tr>
                <tr>
                    <td>
                        Course Name
                    </td>
                    <td>
                        <%:Model.AdmissionDetails.CourseName %>
                    </td>
                </tr>
                <tr>
                    <td>
                        Amount Received
                    </td>
                    <td>
                        <%: String.Format("{0:0.00}",Model.FeeCollectionDetails.Amount) %>
                    </td>
                </tr>
                <tr>
                    <td>
                        Amount in Words
                    </td>
                    <td>
                      <%: Vedanta.Models.Utilities.NumberToWords((int)Model.FeeCollectionDetails.Amount) %>
                    </td>
                </tr>
                <tr>
                    <td>
                        Payment Date
                    </td>
                    <td>
                        <%: String.Format("{0:dd/MM/yyyy}",Model.FeeCollectionDetails.PaymentDate) %>
                    </td>
                </tr>
                 <tr>
                    <td>
                        MR Number
                    </td>
                    <td>
                        <%:Model.FeeCollectionDetails.ManualreceiptNumber %>
                    </td>
                </tr>
                <%if (Model != null && Model.AdmissionDetails != null && Model.AdmissionDetails.NextPaymentDueDate != null)
                  { %>
                <tr>
                    <td>
                        Next Intallment Date
                    </td>
                    <td>
                        <%:String.Format("{0:dd/MM/yyyy}", Model.AdmissionDetails.NextPaymentDueDate)%>
                    </td>
                </tr>
                <%} %>
                <tr>
                    <td>
                        Received By:
                    </td>
                    <td>
                       ======================
                    </td>
                    
                </tr>
            </table>
             <div style="width: 100%; text-align: center;" class="print noscreen">
            Note: This receipt is computer generated and hence no required any signature           
        </div>
            </center>
        </div>
        <iframe id="iframe1" src="http://199.189.250.157/smsclient/api.php?username=scan&password=27963108&source=senderid&dmobile=<%:Model.AdmissionDetails.Cell %>&message=<%:Model.FeeCollectionDetails.Amount%> received from <%:Model.AdmissionDetails.FirstName%> (<%:Model.AdmissionDetails.RegistrationNumber %>)"
            style="display: none;"></iframe>
        <%} %>
    </div>
</asp:Content>
