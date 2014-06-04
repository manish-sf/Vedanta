<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Account Summary
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    <script>
        function GetHeadWiseExpenseList(id) {

            var batchName = $("#spanExpenseHeadId_" + id).text();
            //alert("Id: " + id + "Head " + batchName + "Dates " + $("#DateFrom").val() + '-' + $("#ToDate").val() + "ClientId " + '<%:Session["ClientId"] %>' + "BranchId " + '<%:Session["BranchId"] %>');
            $.ajax({
                type: "POST",
                url: "/Report/HeadWiseExpenseList/",
                data: { "headId": id, "paymentTypes": 'E', "branchId": parseInt('<%:Session["BranchId"] %>'), "fromDate": $("#DateFrom").val(), "toDate": $("#ToDate").val() },
                success: function (data) {
                    //alert(data.length);
                    //ShowStudentList(data);
                    $("#spanSelectedBatch").text(batchName);
                    $("#divStudentList").html(data);
                    $("#searchResult").show();
                    //populateDropdown($("#CourseId"), data);
                },
                failure: function (response) {
                    alert(response);
                }
            });

        }      
    </script>
    <link rel="stylesheet" href="/resources/demos/style.css">
    <% List<Vedanta.Models.MasterModels.ExpenseSummaryGroupByHeads> expSummaryHeadWise = new List<Vedanta.Models.MasterModels.ExpenseSummaryGroupByHeads>();
       List<Vedanta.Models.MasterModels.ExpenseSummaryGroupByHeads> incSummaryHeadWise = new List<Vedanta.Models.MasterModels.ExpenseSummaryGroupByHeads>();
       List<Vedanta.Models.MasterModels.ExpenseSummaryGroupByHeads> collectionSummaryHeadWise = new List<Vedanta.Models.MasterModels.ExpenseSummaryGroupByHeads>();
       if (ViewData["expSummary"] != null)
       {
           //var e = from pl in Model
           //        group pl by new { pl.ExpenseHeadId, pl.ExpenseHeadName }
           //            into pls
           //            select new Vedanta.Models.MasterModels.ExpenseSummaryGroupByHeads { ExpenseHeadId = pls.Key.ExpenseHeadId, ExpenseHead = pls.Key.ExpenseHeadName, Amount = pls.Sum(p => p.Amounts) };
           //expSummaryHeadWise = e.ToList();
           expSummaryHeadWise = ViewData["expSummary"] as List<Vedanta.Models.MasterModels.ExpenseSummaryGroupByHeads>;
       }
       if (ViewData["incSummary"] != null)
       {
           //var e = from pl in Model
           //        group pl by new { pl.ExpenseHeadId, pl.ExpenseHeadName }
           //            into pls
           //            select new Vedanta.Models.MasterModels.ExpenseSummaryGroupByHeads { ExpenseHeadId = pls.Key.ExpenseHeadId, ExpenseHead = pls.Key.ExpenseHeadName, Amount = pls.Sum(p => p.Amounts) };
           //expSummaryHeadWise = e.ToList();
           incSummaryHeadWise = ViewData["incSummary"] as List<Vedanta.Models.MasterModels.ExpenseSummaryGroupByHeads>;
       }
       if (ViewData["CollectionSummary"] != null)
       {
           collectionSummaryHeadWise = ViewData["CollectionSummary"] as List<Vedanta.Models.MasterModels.ExpenseSummaryGroupByHeads>;
       }  
    %>
    <div class="pageTitle">
        <div class="pageHeader">
            <h2>
                Account Summary</h2>
        </div>
        <%--  <div id="divSearchReoprt">
            <% Html.RenderPartial("ReportSearchUserControl"); %>
        </div>--%>
        <div class="pageLink">
            <a href="/Report/Index">
                <img src="../../Images/reports/reports.png" alt="" title="Reports" /></a> <a href="javascript:window.print()">
                    <img class="printer" src="../../Images/print_32.png" alt="Print" title="Print Receipt" /></a>
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
           { %>
        <div style="width: 100%; padding: 5px;">
            <%string fromDate = string.Empty; string toDate = string.Empty;
              if (ViewData["FromDate"] != null) fromDate = ViewData["FromDate"] as string;
              if (ViewData["ToDate"] != null) toDate = ViewData["ToDate"] as string;
            %>
            From
            <%:Html.TextBox("DateFrom", fromDate, new { @class = "datepicker" })%>
            &nbsp; From
            <%:Html.TextBox("ToDate", toDate, new { @class = "datepicker" })%>
            &nbsp;
            <%if (ViewData["Branches"] != null)
              {
                  int selectedBranch = 0;
                  if (ViewData["SelectedBranch"] != null)
                      selectedBranch = Convert.ToInt32(ViewData["SelectedBranch"].ToString()); 
            %>
            Branch<%:Html.DropDownList("ddlBranch", (IEnumerable<SelectListItem>)ViewData["Branches"], "Select", new { @class = "selectNone", @id = "branchId" })%>
            <script>
                var x = '<%=selectedBranch %>';
                //alert(x);
                $("#branchId").val(x);
            </script>
            <%} %>
            <input type="submit" class="btnSearch" id="btnSubmit" value="Search" />
        </div>
        <%} %>
        <script>
            $(function () {
                $("#tabs").tabs();
            });
        </script>
        <div id="tabs">
            <ul>
                <%-- <li><a href="#PaymentList">Expense List</a></li>--%>
                <li><a href="#SummaryHeadWise">Head Wise</a></li>
                <li><a href="#SummaryDateWiseHeads">Date Wise</a></li>
                <li><a href="#SummaryBranchWiseHeads">Branch Wise</a></li>
            </ul>
            <div id="SummaryHeadWise" style="width: 98%">
                <table width="100%">
                    <tr>
                        <th>
                            Expense
                        </th>
                        <th>
                            Income
                        </th>
                    </tr>
                    <tr>
                        <td style="vertical-align: top; text-align: left; width: 50%;">
                            <table border="0" class="GridView">
                                <tr>
                                    <th>
                                        Expense Head
                                    </th>
                                    <th style="text-align: right;">
                                        Amount
                                    </th>
                                </tr>
                                <%if (expSummaryHeadWise != null && expSummaryHeadWise.Count > 0)
                                  {
                                      foreach (Vedanta.Models.MasterModels.ExpenseSummaryGroupByHeads item in expSummaryHeadWise)
                                      { %>
                                <tr>
                                    <td>
                                        <span id="spanExpenseHeadId_<%:item.ExpenseHeadId %>" style="cursor: pointer;" onclick="GetHeadWiseExpenseList(<%:item.ExpenseHeadId %>)">
                                            <%:item.ExpenseHead%></span>
                                    </td>
                                    <td style="text-align: right;">
                                        <%: string.Format("{0:0.00}",item.Amount)%>
                                    </td>
                                </tr>
                                <%}%>
                                <tr>
                                    <td style="text-align: right;">
                                        <strong>Total</strong>
                                    </td>
                                    <td style="text-align: right;">
                                        <strong>
                                            <%: string.Format("{0:0.00}", expSummaryHeadWise.Sum(es=>es.Amount)) %></strong>
                                    </td>
                                </tr>
                                <%}
                                  else
                                  { %>
                                <tr>
                                    <td colspan="2" class="NoRecordFound">
                                        No Expense Record Found.
                                    </td>
                                </tr>
                                <%} %>
                            </table>
                        </td>
                        <td style="vertical-align: top; text-align: left">
                            <table border="0" class="GridView">
                                <tr>
                                    <th>
                                        Income Head
                                    </th>
                                    <th style="text-align: right;">
                                        Amount
                                    </th>
                                </tr>
                                <%if ((incSummaryHeadWise != null && incSummaryHeadWise.Count > 0) || (collectionSummaryHeadWise != null && collectionSummaryHeadWise.Count > 0))
                                  {
                                      foreach (Vedanta.Models.MasterModels.ExpenseSummaryGroupByHeads item in incSummaryHeadWise)
                                      { %>
                                <tr>
                                    <td>
                                        <%:item.ExpenseHead%>
                                    </td>
                                    <td style="text-align: right;">
                                        <%: string.Format("{0:0.00}",item.Amount)%>
                                    </td>
                                </tr>
                                <%}
                                      foreach (Vedanta.Models.MasterModels.ExpenseSummaryGroupByHeads coll in collectionSummaryHeadWise)
                                      { %>
                                <tr>
                                    <td>
                                        <%:coll.ExpenseHead%>
                                    </td>
                                    <td style="text-align: right;">
                                        <%: string.Format("{0:0.00}", coll.Amount)%>
                                    </td>
                                </tr>
                                <%}
                                  
                                %>
                                <tr>
                                    <td style="text-align: right;">
                                        <strong>Total</strong>
                                    </td>
                                    <td style="text-align: right;">
                                        <strong>
                                            <% decimal totalIncome = 0;
                                               totalIncome = incSummaryHeadWise.Sum(es => es.Amount);
                                               totalIncome = totalIncome + collectionSummaryHeadWise.Sum(cs => cs.Amount);
                                            %>
                                            <%: string.Format("{0:0.00}", totalIncome)%></strong>
                                    </td>
                                </tr>
                                <%}
                                  else
                                  { %>
                                <tr>
                                    <td colspan="2" class="NoRecordFound">
                                        No Income Record Found.
                                    </td>
                                </tr>
                                <%} %>
                            </table>
                        </td>
                    </tr>
                </table>
            </div>
            <div id="SummaryDateWiseHeads">
                Not Yet Completed
            </div>
            <div id="SummaryBranchWiseHeads">
                <table class="GridView">
                    <tr>
                        <th>
                            Sl#.
                        </th>
                        <th>
                            Branch Name
                        </th>
                        <th>
                            Expense Amount
                        </th>
                        <th>
                            Income Amount
                        </th>
                    </tr>
                    <% List<Vedanta.Models.Vw_AccountSummaryBranchWise> acSummary = null;
                       if (ViewData["BranchWiseSummary"] != null)
                       {
                           acSummary = ViewData["BranchWiseSummary"] as List<Vedanta.Models.Vw_AccountSummaryBranchWise>;

                           if (acSummary != null && acSummary.Count > 0)
                           {
                               foreach (Vedanta.Models.Vw_AccountSummaryBranchWise item in acSummary)
                               {
                    %>
                    <tr>
                        <td>
                        </td>
                        <td>
                            <%: item.BranchName%>
                        </td>
                        <td>
                            <%: item.Expense%>
                        </td>
                        <td>
                            <%: item.income%>
                        </td>
                    </tr>
                    <%}
                           }%>
                    <%}
                       else
                       { %>
                    <tr>
                        <td colspan="4">
                            Not ready Yet.
                        </td>
                    </tr>
                    <%} %>
                </table>
            </div>
            <% using (Ajax.BeginForm("HeadWiseExpenseList", "Report", new AjaxOptions { HttpMethod = "POST", UpdateTargetId = "searchResult", InsertionMode = InsertionMode.Replace }))
               {
                   List<Vedanta.Models.vw_PaymentList> students = new List<Vedanta.Models.vw_PaymentList>();
                   if (ViewData["BatchOfStudents"] != null)
                       students = ViewData["BatchOfStudents"] as List<Vedanta.Models.vw_PaymentList>;
            %>
            <div id="searchResult" style="display: none;">
                <fieldset>
                    <legend>Expense List in: <span id="spanSelectedBatch" style="color: Red; font-weight: bold;">
                    </span></legend>
                    <div id="divStudentList">
                        <%Html.RenderPartial("PaymentListUserControl", students);%>
                    </div>
                </fieldset>
            </div>
            <%} %>
        </div>
    </div>
</asp:Content>
