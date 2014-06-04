<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Vedanta.Models.vw_FeeCollections>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    FeeCollection
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    <link rel="stylesheet" href="/resources/demos/style.css">
    <div class="pageTitle">
        <div class="pageHeader">
            <h2>
                Fee Collection Report</h2>
        </div>
        <%--   <div id="divSearchReoprt">
       <% Html.RenderPartial("ReportSearchUserControl"); %>
        </div>--%>
        <div class="pageLink">
            <a href="/Students/List">
                <img src="../../Images/list.png" alt="" title="Student List" /></a> <a href="/Students/Fees">
                    <img src="../../Images/cash_stack_add.png" alt="" title="Fee Payment" /></a>
            <a href="javascript:window.print()">
                <img class="printer" src="../../Images/print_32.png" alt="Print" title="Print Receipt" /></a>
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
                <li><a href="#FeeCollectionList">List</a></li>
                <li><a href="#SummaryBranchWiseHeads">Summary</a></li>
            </ul>
            <div id="FeeCollectionList">
                <% Html.RenderPartial("FeeListUserControl", Model); %>
            </div>
            <div id="SummaryBranchWiseHeads">
                <table class="GridView">
                    <tr>
                        <th>
                            Sl#.
                        </th>
                        <th>
                            Branch
                        </th>
                        <th>
                            Course
                        </th>
                        <th>
                            Fee Collection
                        </th>
                    </tr>
                    <% List<Vedanta.Models.MasterModels.CollectionSummaryBranchWise> colSummary = new List<Vedanta.Models.MasterModels.CollectionSummaryBranchWise>();

                       if (ViewData["BranchWiseSummary"] != null)
                       {
                           colSummary = ViewData["BranchWiseSummary"] as List<Vedanta.Models.MasterModels.CollectionSummaryBranchWise>;
                           if (colSummary != null && colSummary.Count > 0)
                           {
                               int slno = 0;
                               foreach (Vedanta.Models.MasterModels.CollectionSummaryBranchWise item in colSummary)
                               {
                    %>
                    <tr>
                        <td>
                            <%:++slno %>
                        </td>
                        <td>
                            <%:item.BranchName %>
                        </td>
                        <td>
                            <%:item.CourseName %>
                        </td>
                        <td style="text-align: right">
                            <%:string.Format("{0:0.00}",item.Amount) %>
                        </td>
                    </tr>
                    <%}%>
                    <tr>
                        <td colspan="3" style="text-align: right">
                            <strong>Total</strong>
                        </td>
                        <td style="text-align: right">
                            <strong>
                                <%: string.Format("{0:0.00}", colSummary.Sum(cs=>cs.Amount)) %></strong>
                        </td>
                    </tr>
                    <%  }
                       } %>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
