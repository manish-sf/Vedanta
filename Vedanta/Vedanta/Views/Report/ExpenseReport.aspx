<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Vedanta.Models.vw_PaymentList>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Expense Report
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .dlgTitle
        {
            width: 50%;
            background: #ededed;
            color: #000;
            font-weight: bold;
            border: 1px solid #ededed;
            text-align: left;
            padding: 10px;
            margin-top: 40px;
            -webkit-border-top-left-radius: 5px;
            -webkit-border-top-right-radius: 5px;
            -moz-border-radius-topleft: 5px;
            -moz-border-radius-topright: 5px;
            border-top-left-radius: 5px;
            border-top-right-radius: 5px;
        }
        
        .dlgSearchBox
        {
            width: 50%;
            height: 280px;
            background-color: white;
            color: #000;
            border: 1px solid #ededed;
            margin-top: 0px;
            padding: 10px;
            display: block;
            z-index: 19999;
            -webkit-border-bottom-right-radius: 5px;
            -webkit-border-bottom-left-radius: 5px;
            -moz-border-radius-bottomright: 5px;
            -moz-border-radius-bottomleft: 5px;
            border-bottom-right-radius: 5px;
            border-bottom-left-radius: 5px;
        }
    </style>
    <script>
        $(document).ready(function () {
            $("#divAdvanceSearch").hide();
            $("#btnAdvSearch").click(function () {
                $("#divAdvanceSearch").show();
                //alert("Hi");
                //                if ($("#divAdvanceSearch").is(":visible")==false)
                //                    $("#divAdvanceSearch").hide();
                //                else
                //                    $("#divAdvanceSearch").show();
            });

            $("#btnCancel").click(function () {
                $("#divAdvanceSearch").hide();
            });

            //            $("#divAdvanceSearch").click(function () {
            //                $("#divAdvanceSearch").hide();
            //            });
        });
    </script>
    <% using (Html.BeginForm())
       { %>
    <div class="pageTitle">
        <div class="pageHeader">
            <h2>
                Expense Report</h2>
        </div>
        <div class="pageLink">
            <a href="/Report/Index">
                <img src="../../Images/reports/reports.png" alt="" title="Reports" /></a> <a href="/Admin/Expense">
                    <img src="../../Images/list2_add.png" alt="" title="New Expense" /></a>
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
            <input type="submit" class="btnSearch" name="Submit" id="btnSubmit" value="Search" />
            <input type="button" class="btnSearch" id="btnAdvSearch" value="Advance Search" />
        </div>
        <%--   <% using (Ajax.BeginForm("ExpenseReport", "Reports", new AjaxOptions { HttpMethod = "POST", UpdateTargetId = "searchResult", InsertionMode = InsertionMode.Replace }))
           { %>--%>
        <%--  <%} %>--%>
        <div id="searchResult">
            <%Html.RenderPartial("PaymentListUserControl", Model);%>
        </div>
    </div>
    <div id="divAdvanceSearch" style="width: 100%; height: 100%; position: fixed; left: 0;
        top: 0; background: rgba(0,0,0,0.8); 9999">
        <center>
        <div class="dlgTitle">Advance Search</div>
        <div class="dlgSearchBox">
          <p style="text-align:left">  Enter text in input box to search with proper fields </p>
            <table width="100%">
              <tr>
                    <td>
                        Dates
                    </td>
                    <td>
                     From:   <%: Html.TextBox("txtAdSearchDateFrom", string.Empty, new {@class="datepicker" })%> &nbsp;&nbsp; To:   <%: Html.TextBox("txtAdSearchDateTo", string.Empty, new { @class = "datepicker" })%>
                    </td>
                </tr>
                <tr>
                    <td>
                        Expense Head
                    </td>
                    <td>
                        <%: Html.TextBox("txtexpHead") %>
                    </td>
                </tr>
                <tr>
                    <td>
                        Paid To
                    </td>
                    <td>
                        <%: Html.TextBox("txtpaidTo")%>
                    </td>
                </tr>
                <tr>
                    <td>
                        Narration
                    </td>
                    <td>
                        <%: Html.TextBox("txtNarration")%>
                    </td>
                </tr>
                <tr>
                    <td>
                        Remarks
                    </td>
                    <td>
                        <%: Html.TextBox("txtRemarks")%>
                    </td>
                </tr>
            </table><p>
            <input type="submit" class="btnSearch" id="Button1" name="Submit" value="Advance Search" />
             <input type="button" class="btnSearch" id="btnCancel" name="btnCancel" value="Cancel" /></p>
        </div></center>
    </div>
    <%} %>
</asp:Content>
