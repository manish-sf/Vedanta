<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Vedanta.Models.vw_BatchList>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Batch
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script>
        function GetBatchWiseStudentList(id) {

            var batchName = $("#spanBatchName" + id).text();
            //alert("Id: " + id + "Batch Name: " + batchName);
            $.ajax({
                type: "POST",
                url: "/Report/Batchs/",
                data: { "id": id },
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
    <style>
        #divSearch
        {
            float: left;
            height: 100%;
            min-width: 355px;
            text-align: right;
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
    </style>
    <div class="pageTitle">
        <div class="pageHeader">
            <h2>
                Batch Master</h2>
        </div>
        <div id="divSearch">
            <div id="wrapper">
                <%: Html.TextBox("txtSearch", string.Empty, new {id="txtSearch", @placeholder = "Search by name, type etc.",@title="Search ledgers" })%>
            </div>
        </div>
        <div class="pageLink">
            <a href="/Admin/NewBatch">
                <img src="../../Images/plus.png" alt="" title="New Batch" /></a> <a href="/Report/Index">
                    <img src="../../Images/reports/reports.png" alt="" title="Reports" /></a>
            <a href="javascript:window.print()">
                <img class="printer" src="../../Images/print_32.png" alt="Print" title="Print Receipt" /></a>
        </div>
    </div>
    <div id="Mainpg">
        <table class="GridView">
            <tr>
                <th>
                </th>
                <th>
                    Batch Code
                </th>
                <th>
                    Batch Name
                </th>
                <th>
                    Batch Start Time
                </th>
                <th>
                    Batch End Time
                </th>
                <th>
                    Capacity
                </th>
                <th>
                    No. Of Students
                </th>
                <th>
                    Branch Code
                </th>
                <th>
                    Branch Name
                </th>
            </tr>
            <% if (Model != null && Model.Count() > 0)
               {
                   foreach (var item in Model)
                   {  %>
            <tr>
                <td>
                    <a href="/Admin/EditBatch/<%: item.Id %>">
                        <img src="../../images/pencil-icon.png" id="imgEditBatch_<%: item.Id%>" alt="" title="Edit Batch"
                            style="border-style: none;" />
                    </a>
                    <%--  <%: Html.ActionLink("Edit", "Edit", new { id=item.Id }) %>
                |
                <%: Html.ActionLink("Details", "Details", new { id=item.Id })%>
                |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.Id })%>--%>
                </td>
                <td>
                    <span id="spanBatchName<%: item.Id %>">
                        <%: item.BatchCode%></span>
                </td>
                <td>
                    <%: item.BatchName%>
                </td>
                <td>
                    <%: item.BatchStartTime%>
                </td>
                <td>
                    <%: item.BatchEndTime%>
                </td>
                <td>
                    <%: item.StudentStrength%>
                </td>
                <td>
                    <%if (item.StudentCount > 0)
                      { %>
                    <a id="spanStudentCount<%:item.Id %>" style="cursor: pointer; color: Blue;" onclick="GetBatchWiseStudentList(<%:item.Id %>)">
                        <%: item.StudentCount%></a><%}
                      else
                      { %>
                    <%: item.StudentCount%><%} %>
                </td>
                <td>
                    <%: item.BranchCode%>
                </td>
                <td>
                    <%: item.BranchName%>
                </td>
            </tr>
            <% }
               }
               else
               { %>
            <tr>
                <td colspan="9" class="NoRecordFound">
                    No record found.
                </td>
            </tr>
            <%} %>
        </table>
        <% using (Ajax.BeginForm("Batchs", "Report", new AjaxOptions { HttpMethod = "POST", UpdateTargetId = "searchResult", InsertionMode = InsertionMode.Replace }))
           {
               List<Vedanta.Models.vw_Admissions> students = new List<Vedanta.Models.vw_Admissions>();
               if (ViewData["BatchOfStudents"] != null)
                   students = ViewData["BatchOfStudents"] as List<Vedanta.Models.vw_Admissions>;
        %>
        <div id="searchResult" style="display: none;">
            <fieldset>
                <legend>Students of Batch: <span id="spanSelectedBatch" style="color: Red; font-weight:bold;"></span>
                </legend>
                <div id="divStudentList">
                    <%Html.RenderPartial("NewAdmissionUserControl", students);%>
                </div>
            </fieldset>
        </div>
        <%} %>
    </div>
</asp:Content>
