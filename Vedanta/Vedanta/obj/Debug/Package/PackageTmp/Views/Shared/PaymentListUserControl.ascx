<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IEnumerable<Vedanta.Models.vw_PaymentList>>" %>
<table class="GridView">
    <tr>
        <th>
        </th>
        <th>
            Branch
        </th>
        <th>
            Date
        </th>
        <th>
            Particulars
        </th>
        <th>
            Amounts
        </th>
        <th>
            Paid To
        </th>
        <th>
            Voucher No
        </th>
        <th>
            Payment Mode
        </th>
        <th>
            Remarks
        </th>
    </tr>
    <% if (Model != null && Model.Count() > 0)
       {
           foreach (var item in Model)
           {
               if (item.IsBranchActive == true || Roles.IsUserInRole("SuperAdmin"))
               { %>
    <tr id="tr<%:item.Id %>">
        <td style="width: 35px;">
            <a href="/Admin/EditExpense/<%: item.Id%>">
                <img src="../../images/pencil-icon.png" id="imgEditLedger_<%: item.Id%>" alt="" title="Edit"
                    style="border-style: none;" /></a><img src="../../images/del.png" id="imgDeletePayment_<%: item.Id%>"
                        alt="" title="Delete" onclick="return DeletePayment(<%: item.Id%>)" />
            <%--  <%: Html.ActionLink("Edit", "Edit", new { id=item.Id }) %>
           |
            <%: Html.ActionLink("Details", "Details", new { id=item.Id })%>
            |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.Id })%>--%>
        </td>
        <td>
            <%: item.BranchName%>
        </td>
        <td>
            <%: String.Format("{0:dd/MM/yyyy}", item.Date)%>
        </td>
        <td>
            <%: item.ExpenseHeadName%>
        </td>
        <td style="text-align: right">
            <span id="amount<%: item.Id %>">
                <%: String.Format("{0:0.00}", item.Amounts)%></span>
        </td>
        <td>
            <%: item.PaidTo%>
        </td>
        <td>
            <%: item.VoucherNo%>
        </td>
        <td>
            <%: item.PaymentMode%>
        </td>
        <td>
            <%: item.Remarks%>
        </td>
    </tr>
    <% }
           }%>
    <tr>
        <td colspan="4" style="text-align: right">
            <strong>Total</strong>
        </td>
        <td style="text-align: right">
            <strong><span id="totalPaymentAmount">
                <%: string.Format("{0:0.00}", Model.Sum(es=>es.Amounts)) %></span></strong>
        </td>
        <td colspan="4">
        </td>
    </tr>
    <%}
       else
       { %>
    <tr>
        <td colspan="9">
            <div class="NoRecordFound">
                No Record Found.
            </div>
        </td>
    </tr>
    <%} %>
</table>
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
