<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Reports
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <% Vedanta.Models.ClientSettings clientsetting = new Vedanta.Models.ClientSettings();
       if (ViewData["clientSetting"] != null)
           clientsetting = ViewData["clientSetting"] as Vedanta.Models.ClientSettings;
    %>
    <style>
        .reportItems
        {
            width: 170px;
            height: 140px;
            margin: 15px;
            padding: 0px 0px 20px 0px;
            float: left;
            border: 1px solid #c3c3c3;
            -moz-border-radius-bottomright: 10px;
            -webkit-border-bottom-right-radius: 10px;
            border-bottom-right-radius: 10px;
            -moz-border-radius-bottomleft: 10px;
            -webkit-border-bottom-left-radius: 10px;
            border-bottom-left-radius: 10px;
            text-align: center;
        }
        #reports
        {
            width: 100%;
            height: 100%;
            clear: both;
        }
        .reportItem-Title
        {
            height: 25px;
            background-color: #0a4c71;
            color: #f7f1c7;
            font-weight: bold;
            border: none;
        }
        
        .report-text
        {
            margin-top: 5px;
            font-size: 1.5em;
            vertical-align: middle;
            cursor: pointer;
            width: 130px;
            height: 130px;
            padding-top: 20px;
            color: Maroon;
        }
        
        .report-text a
        {
            font-size: 1.0em;
            vertical-align: middle;
            cursor: pointer;
            width: 170px;
            height: 110px;
            padding-top: 20px;
            color: Maroon;
            text-decoration: none;
        }
        #graphicalReports
        {
            background: url("../../Images/reports/document_graph (1).png") no-repeat;
        }
        #newAdmissionReport
        {
            background: url("../../Images/reports/add_card.png") no-repeat;
        }
        #feeCollectionReport
        {
            background: url("../../Images/reports/coins.png") no-repeat;
        }
        #assetsReport
        {
            background: url("../../Images/reports/property.png") no-repeat;
        }
        #reportSettings
        {
            background: url("../../Images/reports/gnome_session_properties.png") no-repeat;
        }
        
        #expenseReport
        {
            background: url("../../Images/reports/bulb_minus.png") no-repeat;
        }
        
        #incomeReport
        {
            background: url("../../Images/reports/add_folder.png") no-repeat;
        }
        #reportBatchs
        {
            background: url("../../Images/reports/batch_student_list.png") no-repeat;
            background-size: contain !important;
        }
        #reportLedgers
        {
            background: url("../../Images/reports/mi_scare_report.png") no-repeat;
        }
        #reportUsers
        {
            background: url("../../Images/reports/users.png") no-repeat;
        }
        #reportAccounts
        {
            background: url("../../Images/reports/account_summary.png") no-repeat;
        }
        #reportSMSs
        {
            background: url("../../Images/reports/sms_128.png") no-repeat;
        }
    </style>
    <div id="Mainpg">
        <div style="padding-left: 40px; width: 95%">
            <%if (Roles.IsUserInRole("SuperAdmin") || (clientsetting != null && clientsetting.ClientId != null && clientsetting.IsEducationServiceAvailable == true))
              { %>
            <div class="reportItems">
                <div class="reportItem-Title">
                    Fee collections</div>
                <center>
                    <a href="/Report/FeeCollection">
                        <div class="report-text" id="feeCollectionReport" title="Fee Collection Reports">
                            <%-- <%: Html.ActionLink("Fee collections", "FeeCollection", "Reports")%>--%>
                        </div>
                    </a>
                </center>
            </div>
            <div class="reportItems">
                <div class="reportItem-Title">
                    New Admission</div>
                <center>
                    <a href="/Report/NewAdmission">
                        <div class="report-text" id="newAdmissionReport" title="New Admission Reports">
                        </div>
                    </a>
                </center>
            </div>
            <div class="reportItems">
                <div class="reportItem-Title">
                    Batchs Report</div>
                <center>
                    <a href="/Report/Batchs">
                        <div class="report-text" id="reportBatchs" title="Batchs Report">
                            <%-- <%: Html.ActionLink("Asset Report", "List", "Assets")%>--%>
                        </div>
                    </a>
                </center>
            </div>
            <div class="reportItems">
                <div class="reportItem-Title">
                    Graphical Reports</div>
                <center>
                    <div class="report-text" id="graphicalReports" title="Graphical Reports">
                    </div>
                </center>
            </div>
            <%} %>
            <div class="reportItems">
                <div class="reportItem-Title">
                    Expense</div>
                <center>
                    <a href="/Report/ExpenseReport">
                        <div class="report-text" id="expenseReport" title="Expense Report">
                            <%-- <%: Html.ActionLink("Expense", "Expense", "Admin")%>--%>
                        </div>
                    </a>
                </center>
            </div>
            <div class="reportItems">
                <div class="reportItem-Title">
                    Income</div>
                <center>
                    <a href="/Report/IncomeReport">
                        <div class="report-text" id="incomeReport" title="Income Report">
                            <%-- <%: Html.ActionLink("Income", "Income", "Admin")%>--%>
                        </div>
                    </a>
                </center>
            </div>
            <div class="reportItems">
                <div class="reportItem-Title">
                    Asset Report</div>
                <center>
                    <a href="/Assets/List">
                        <div class="report-text" id="assetsReport" title="Assets Report">
                            <%-- <%: Html.ActionLink("Asset Report", "List", "Assets")%>--%>
                        </div>
                    </a>
                </center>
            </div>
            <div class="reportItems">
                <div class="reportItem-Title">
                    Ledgers Report</div>
                <center>
                    <a href="/Admin/LedgersList">
                        <div class="report-text" id="reportLedgers" title="Ledgers Report">
                            <%-- <%: Html.ActionLink("Asset Report", "List", "Assets")%>--%>
                        </div>
                    </a>
                </center>
            </div>
            <div class="reportItems">
                <div class="reportItem-Title">
                    Users</div>
                <center>
                    <a href="/Account/users">
                        <div class="report-text" id="reportUsers" title="Users Report">
                            <%-- <%: Html.ActionLink("Asset Report", "List", "Assets")%>--%>
                        </div>
                    </a>
                </center>
            </div>
            <%if (Roles.IsUserInRole("SuperAdmin"))
              {%>
            <div class="reportItems">
                <div class="reportItem-Title">
                    Settings</div>
                <center>
                    <div class="report-text" id="reportSettings" title="Assets Report">
                        <%-- <%: Html.ActionLink("Asset Report", "List", "Assets")%>--%>
                    </div>
                </center>
            </div>
            <%} %>
            <div class="reportItems">
                <div class="reportItem-Title">
                    Account</div>
                <center>
                    <a href="/Report/AccountSummary">
                        <div class="report-text" id="reportAccounts" title="Account Report">
                            <%-- <%: Html.ActionLink("Asset Report", "List", "Assets")%>--%>
                        </div>
                    </a>
                </center>
            </div>
            <div class="reportItems">
                <div class="reportItem-Title">
                    SMS</div>
                <center>
                    <a href="/SMS/Notification">
                        <div class="report-text" id="reportSMSs" title="SMS Report">
                            <%-- <%: Html.ActionLink("Asset Report", "List", "Assets")%>--%>
                        </div>
                    </a>
                </center>
            </div>
        </div>
    </div>
</asp:Content>
