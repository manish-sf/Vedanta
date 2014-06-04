<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Vedanta.Models.vw_Admissions>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    NewAdmission
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    <div class="pageTitle">
        <div class="pageHeader">
            <h2>
                New Admission Report</h2>
        </div>
        <%--<div id="divSearchReoprt">
            <% Html.RenderPartial("ReportSearchUserControl"); %>
        </div>--%>
        <div class="pageLink">
            <a href="/Students/New">
                <img src="../../Images/add_user.png" alt="" title="New Admission" /></a> <a href="/Students/Fees">
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
        <div class="divMessage" style="width: 100%; height: 25px; background-color: Gray;
            color: Yellow;">
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
            &nbsp;<%if (ViewData["Branches"] != null)
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
                <%Html.RenderPartial("NewAdmissionUserControl", Model);%>
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
                            Count
                        </th>
                        <th>
                            Adm Fee
                        </th>
                    </tr>
                    <% List<Vedanta.Models.MasterModels.NewAdmissionSummaryBranchWise> colSummary = new List<Vedanta.Models.MasterModels.NewAdmissionSummaryBranchWise>();

                       if (ViewData["BranchWiseSummary"] != null)
                       {
                           colSummary = ViewData["BranchWiseSummary"] as List<Vedanta.Models.MasterModels.NewAdmissionSummaryBranchWise>;
                           if (colSummary != null && colSummary.Count > 0)
                           {
                               int slno = 0;
                               foreach (Vedanta.Models.MasterModels.NewAdmissionSummaryBranchWise item in colSummary)
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
                        <td>
                            <%:item.AdmCount %>
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
                        <td>
                            <strong>
                                <%: string.Format("{0:0}", colSummary.Sum(cs=>cs.AdmCount)) %></strong>
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
    <%--  <% using (Ajax.BeginForm("List", "Students", new AjaxOptions { HttpMethod = "POST", UpdateTargetId = "searchResult", InsertionMode = InsertionMode.Replace }))
           { %>
        <div id="searchResult">
            <%Html.RenderPartial("StudentListUserControl", Model);%>
        </div>
        <%} %>--%>
</asp:Content>
