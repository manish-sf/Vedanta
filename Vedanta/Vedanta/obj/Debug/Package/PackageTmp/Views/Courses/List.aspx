<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Vedanta.Models.vw_Courses>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Course List
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        #divSearch
        {
            float: left;
            height: 100%;
            min-width: 355px;
            text-align: right;
        }
        #btnSearch
        {
            background: none; /*  background-image: url('../images/find.png');*/
            background-repeat: no-repeat;
            border: none;
            height: 24px;
            width: 2px;
        }
        
        #btnSearch hover
        {
            border: none;
        }
        
        #txtSearch
        {
            border: 1px solid #000;
            height: 22px;
            border: none;
            width: 285px;
        }
        #wrapper
        {
            background-color: #fff;
            border: 1px solid rgb(195, 195, 195);
            width: 300px;
            height: 30px;
            float: right;
            text-align: left;
            border-radius: 5px;
            vertical-align: top;
            padding: 2px;
        }
        
        #divPopResult
        {
            background-color: #ffffff;
            text-align: left;
            margin-top: 22px;
            padding-left: 5px;
            display: none;
            height: 200px;
            color: #023a67;
            overflow: scroll;
            opacity: 0.90;
            filter: alpha(opacity=0);
            z-index: 999999;
            margin-left: 50px;
        }
        #divPopResult ul
        {
            list-style-type: square;
            text-align: left;
            padding-left: 0px;
            background-color: #c3c3c3;
        }
        
        #divPopResult ul li
        {
            background-color: #fff;
            color: #000;
            padding-bottom: 2px;
            border-bottom-color: #7d7d7d;
            min-height: 30px;
        }
        
        #divPopResult ul li a
        {
            color: #000;
            padding-bottom: 2px;
            border-bottom-color: #7d7d7d;
            text-decoration: none;
            width: 100%;
            height: 100%;
            padding-left: 5px;
        }
        #divPopResult ul li a:hover
        {
            background-color: #fff;
            color: #5c5757;
            padding-bottom: 2px;
            border-bottom-color: #fff;
            width: 100%;
            height: 100%;
            font-weight: bold;
        }
    </style>
    <div class="pageTitle">
        <div class="pageHeader">
            <h2>
                Course List</h2>
        </div>
        <%--  <div id="divSearch">
            <div id="wrapper">
          
                <%: Html.TextBox("txtSearch", string.Empty, new {id="txtSearch", @placeholder = "Search course by name code fees etc.",@title="Search course" })%>
                <input type="button" id="btnSearch" value="" title="Search employee" />
            </div>
            <br />
            <div id="divPopResult" style="">
                <ul>
                </ul>
            </div>
        </div>--%>
        <div class="pageLink">
            <%--<%: Html.ActionLink("New Employee", "New", null, new { @title = "add new employee" })%>--%>
            <a href="/Courses/Create">
                <img src="../../Images/list2_add.png" alt="" title="New Course" /></a> <a href="javascript:window.print()">
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
        <table class="GridView">
            <tr>
                <th>
                    <%if (Roles.IsUserInRole("SuperAdmin"))
                      {%>
                    Client<%} %>
                </th>
                <th>
                    Course Code
                </th>
                <th>
                    Course Name
                </th>
                <th>
                    Duration (Months)
                </th>
                <th>
                    Fast Track Duration
                </th>
                <th>
                    Course Fees
                </th>
                <th>
                    Min. Down Payment
                </th>
                <th>
                    Max. Discount Amount
                </th>
                <th>
                    Max. No. Of Installments
                </th>
                <th>
                    Installment Amt.
                </th>
                <th>
                    Total Installment
                </th>
                <th>
                    Branch
                </th>
            </tr>
            <%   if (Model != null && Model.Count() > 0)
                 {
                     foreach (var item in Model)
                     {
                         if (item.IsBranchActive == true || Roles.IsUserInRole("SuperAdmin"))
                         { %>
            <tr>
                <td>
                    <%--  <%: Html.ActionLink("Edit", "Edit", new { id=item.Id }) %>
                |
                <%: Html.ActionLink("Details", "Details", new { id=item.Id })%>
                |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.Id })%>--%>
                    <%if (Roles.IsUserInRole("SuperAdmin"))
                      {%>
                    <%:item.ClientId%><%} %>
                </td>
                <td>
                    <%: item.CourseCode%>
                </td>
                <td>
                    <%: item.CourseName%>
                </td>
                <td>
                    <%: item.Duration_In_Months%>
                </td>
                <td>
                    <%: String.Format("{0:0.00}", item.FastTrackDuration)%>
                </td>
                <td>
                    <%: String.Format("{0:0.00}", item.CourseFees)%>
                </td>
                <td>
                    <%: String.Format("{0:0.00}", item.MinimumDownPayment)%>
                </td>
                <td>
                    <%: String.Format("{0:0.00}", item.MaximumDiscountAmount)%>
                </td>
                <td>
                    <%: item.MaximumNumberOfInstallments%>
                </td>
                <td>
                    <%: String.Format("{0:0.00}", item.InstallmentAmount)%>
                </td>
                <td>
                    <%: String.Format("{0:0.00}", item.TotalInstallmentAmount)%>
                </td>
                <td>
                    <%: item.BranchName%>
                </td>
            </tr>
            <% }
                     }
                 }
                 else
                 { %>
            <tr>
                <td colspan="12">
                    <div class="NoRecordFound">
                        No Record Found.
                    </div>
                </td>
            </tr>
            <%} %>
        </table>
    </div>
</asp:Content>
