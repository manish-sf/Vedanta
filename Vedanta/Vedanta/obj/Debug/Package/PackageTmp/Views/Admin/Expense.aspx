<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Vedanta.Models.Payments>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Office Expense
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        function SetDDChequeDetails() {
            // alert("Hi");
            var ddchequeOption = $('#ddlPaymentModeId option:selected').val();
            if (ddchequeOption == 1) {
                $("#txtDDChequeNumber").attr('readonly', true);
                $("#txtDDChequeDate").attr('readonly', true);
                $("#txtChequeDDIssuingBank").attr('readonly', true);
            }
            else {
                $("#txtDDChequeNumber").attr('readonly', false);
                $("#txtDDChequeDate").attr('readonly', false);
                $("#txtDDChequeDate").removeClass('required');
                $("#txtChequeDDIssuingBank").attr('readonly', false);
            }
        }
    </script>
    <div class="pageTitle">
        <div class="pageHeader">
            <h2>
                Office Expenses</h2>
        </div>
        <div class="pageLink">
            <a href="/Report/ExpenseReport">
                <img src="../../Images/list_2.png" alt="" title="Expense List" /></a>
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
        <%: Html.ValidationSummary(true) %>
        <table width="100%">
            <tr>
                <td style="width: 400px; text-align: left; vertical-align: top;">
                    <table style="border-style: none; width: 100%">
                        <%if (ViewData["Branches"] != null)
                          { %>
                        <tr>
                            <td>
                                Branch
                            </td>
                            <td>
                                <%= Html.DropDownListFor(model => model.BranchId, (IEnumerable<SelectListItem>)ViewData["Branches"], ">> Select", new { @id = "ddlBranchId", @class = "selectNone" })%>
                                <%: Html.ValidationMessageFor(model => model.BranchId, "Branch is required")%>
                            </td>
                        </tr>
                        <%} %>
                        <tr>
                            <td>
                                Date
                            </td>
                            <td>
                                <%: Html.TextBoxFor(model => model.Date, new { @class = "datepicker required", @id = "txtPaymentDate" })%>
                                <%: Html.ValidationMessageFor(model => model.Date, "Date is required")%>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Voucher Number
                            </td>
                            <td>
                                <%: Html.TextBoxFor(model => model.VoucherNo)%>
                                <%: Html.ValidationMessageFor(model => model.VoucherNo)%>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Expense Head
                            </td>
                            <td>
                                <%= Html.DropDownListFor(model => model.ExpenseHeadId, (IEnumerable<SelectListItem>)ViewData["ExpenseHeads"], ">> Select", new { @id = "ddlexpenseHeadId", @class = "selectNone"})%>
                                <%: Html.ValidationMessageFor(model => model.ExpenseHeadId, "Expense Head is required")%>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Amount (Rs.)
                            </td>
                            <td>
                                <%: Html.TextBoxFor(model => model.Amounts) %>
                                <%: Html.ValidationMessageFor(model => model.Amounts, "Amount is required")%>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Paid To
                            </td>
                            <td>
                                <%: Html.TextBoxFor(model => model.PaidTo)%>
                                <%: Html.ValidationMessageFor(model => model.PaidTo)%>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Narration
                            </td>
                            <td>
                                <%: Html.TextBoxFor(model => model.Narration) %>
                                <%: Html.ValidationMessageFor(model => model.Narration) %>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Payment Mode
                            </td>
                            <td>
                                <%= Html.DropDownListFor(model => model.PaymentModeId, (IEnumerable<SelectListItem>)ViewData["PaymentModes"], ">> Select", new { @class = "selectNone", @id = "ddlPaymentModeId", @onchange = "SetDDChequeDetails()" })%>
                                <%: Html.ValidationMessageFor(model => model.PaymentModeId)%>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Cheque/DD Number
                            </td>
                            <td>
                                <%: Html.TextBoxFor(model => model.CHQ_NO, new { @id = "txtDDChequeNumber" })%>
                                <%: Html.ValidationMessageFor(model => model.CHQ_NO) %>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Cheque/DD Dated
                            </td>
                            <td>
                                <%: Html.TextBoxFor(model => model.CHQ_DATE, new { @class = "datepicker", @id = "txtDDChequeDate", @style = "width:100px" })%>
                                <%: Html.ValidationMessageFor(model => model.CHQ_DATE) %>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Bank Name
                            </td>
                            <td>
                                <%: Html.TextBoxFor(model => model.BANK, new { @id = "txtChequeDDIssuingBank" })%>
                                <%: Html.ValidationMessageFor(model => model.BANK) %>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Remarks(if any)
                            </td>
                            <td>
                                <%: Html.TextBoxFor(model => model.Remarks) %>
                                <%: Html.ValidationMessageFor(model => model.Remarks, "Remarks is required")%>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <div style="padding: 2px">
                                    <input type="submit" name="Submit" value="Save Expense" class="submit" />
                                </div>
                            </td>
                        </tr>
                    </table>
                </td>
                <td style="width: 450px; text-align: left; vertical-align: top;">
                    <table width="100%">
                        <tr>
                            <td>
                                <div style="min-height: 123px; background-color: #f5f5f5; border: 1px solid #c3c3c3;
                                    padding: 4px; margin: 0px; vertical-align: top">
                                    <strong>Expense Lists</strong>
                                    <table class="GridView">
                                        <tr>
                                            <th>
                                            </th>
                                            <th>
                                                Date
                                            </th>
                                            <th>
                                                Particulars
                                            </th>
                                            <th>
                                                Amount(Rs.)
                                            </th>
                                        </tr>
                                        <%  List<Vedanta.Models.vw_PaymentList> paymentList = null;
                                            if (ViewData["ExpenseList"] != null)
                                            {
                                                paymentList = (List<Vedanta.Models.vw_PaymentList>)ViewData["ExpenseList"];
                                                if (paymentList != null && paymentList.Count() > 0)
                                                {
                                                    double totalAmount = 0;
                                                    int slNo = 0;
                                                    foreach (Vedanta.Models.vw_PaymentList payment in paymentList)
                                                    {
                                                        slNo++; %>
                                        <tr id="tr<%:payment.Id %>">
                                            <td>
                                                <a href="/Admin/EditExpense/<%: payment.Id%>">
                                                    <img src="../../images/pencil-icon.png" id="imgEditLedger_<%: payment.Id%>" alt=""
                                                        title="Edit" style="border-style: none;" /></a><img src="../../images/del.png" id="imgDeletePayment_<%: payment.Id%>"
                                                            alt="" title="Delete" onclick="return DeletePayment(<%: payment.Id%>)" />
                                            </td>
                                            <td>
                                                <%: String.Format("{0:dd/MM/yyyy}",payment.Date) %>
                                            </td>
                                            <td>
                                                <%:payment.ExpenseHeadName %>
                                            </td>
                                            <td style="text-align: right">
                                                <span id="amount<%: payment.Id %>">
                                                    <%: String.Format("{0:0.00}",payment.Amounts)%></span>
                                                <% if (payment.Amounts != null)
                                                   {
                                                       totalAmount = totalAmount + (double)payment.Amounts;
                                                   }%>
                                            </td>
                                        </tr>
                                        <%}%>
                                        <tr>
                                            <td colspan="3" style="text-align: right">
                                                Total Amount(Rs.)
                                            </td>
                                            <td style="text-align: right">
                                                <span id="totalPaymentAmount">
                                                    <%: String.Format("{0:0.00}",totalAmount) %></span>
                                            </td>
                                        </tr>
                                        <% }
                                                else
                                                {%>
                                        <tr>
                                            <td colspan="4">
                                                <div class="NoRecord">
                                                    No Expense Record Found.</div>
                                            </td>
                                        </tr>
                                        <%}
                                            }
                                            else
                                            {%>
                                        <tr>
                                            <td colspan="4">
                                                <div class="NoRecord">
                                                    No Expense Record Found.</div>
                                            </td>
                                        </tr>
                                        <%}
                                        %>
                                    </table>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div style="background-color: #f5f5f5; border: 1px solid #c3c3c3; padding: 4px; margin: 0px;
                                    vertical-align: top">
                                    From:
                                    <% string fromDate = string.Empty;
                                       string toDate = string.Empty;
                                       if (ViewData["SearchedDateFrom"] != null && ViewData["SearchedDateTo"] != null)
                                       {
                                           fromDate = (string)ViewData["SearchedDateFrom"];
                                           toDate = (string)ViewData["SearchedDateTo"];
                                       }
                                    %>
                                    <%:Html.TextBox("txtDateFrom", fromDate, new { @class = "datepicker", @id = "txtDateFrom", @style = "width:100px" })%>
                                    &nbsp; To:<%:Html.TextBox("txtDateTo", toDate, new { @class = "datepicker", @id = "txtDateTo", @style = "width:100px" })%>
                                    <input type="submit" name="Submit" value="Search.." class="btnSearch" />
                                </div>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <% } %>
    </div>
    <script type="text/javascript">
        function DeletePayment(i) {
            if (!confirm("Are You Sure to delete this record?")) {
                return false;
            }
            //alert(i);
            //var x = $("#tr" + i).cells[4].innerHTML;
            //alert(x);
            //alert($("#amount" + i).text());
            var amountdeleting = $("#amount" + i).text();
            var totAmount = $("#totalPaymentAmount").text();
            //$("#tr" + i).hide();
            //$("#totalPaymentAmount").text(totAmount - amountdeleting);
            $.ajax({
                type: "POST",
                url: "/Report/DeletePayment/",
                data: { "id": i },
                success: function (data) {
                    //alert("Deleted" + i + " data" + data);
                    $("#tr" + i).hide();
                    $("#totalPaymentAmount").text(totAmount - amountdeleting)
                },
                failure: function (response) {
                    alert("Failed to delete record." + response);
                }
            });
        }  
    </script>
</asp:Content>
