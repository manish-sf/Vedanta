<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Vedanta.Models.Payments>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
    <%:Session["LedgerType"]%>
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
            <% string ledgerType = Session["LedgerType"] as string; %>
            <h2>
                Edit
                <%:ledgerType%></h2>
        </div>
        <div class="pageLink">
            <%if (string.Equals("expense", ledgerType.ToLower(), StringComparison.OrdinalIgnoreCase))
              { %>
            <a href="/Report/ExpenseReport">
                <img src="../../Images/list_2.png" alt="" title="Expense List" /></a>
            <%} %>
            <%if (string.Equals("income", ledgerType.ToLower(), StringComparison.OrdinalIgnoreCase))
              { %>
            <a href="/Report/IncomeReport">
                <img src="../../Images/list_2.png" alt="" title="Income List" /></a>
            <%} %>
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
                                <%: Html.TextBoxFor(model => model.Date, new { @Value = string.Format("{0:MM/dd/yyyy}", Model.Date), @class = "datepicker required", @id = "txtPaymentDate" })%>
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
                                <%: Html.TextBoxFor(model => model.CHQ_DATE, new { @Value = string.Format("{0:MM/dd/yyyy}", Model.CHQ_DATE), @class = "datepicker", @id = "txtDDChequeDate", @style = "width:100px" })%>
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
                                    <input type="submit" name="Submit" value="Save" class="submit" />
                                </div>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <% } %>
    </div>
</asp:Content>
