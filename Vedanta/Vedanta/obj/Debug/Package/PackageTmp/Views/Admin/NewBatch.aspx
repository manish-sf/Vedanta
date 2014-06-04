<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Vedanta.Models.Batches>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    New Batch
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="pageTitle">
        <div class="pageHeader">
            <h2>
                New Batch</h2>
        </div>
        <div class="pageLink">
            <a href="/Report/Batchs">
                <img src="../../Images/list.png" alt="" title="Batch List" /></a><%--<a href="/Report/Index">
                    <img src="../../Images/reports/reports.png" alt="" title="Reports" /></a>--%>
        </div>
    </div>
    <div id="Mainpg">
        <% using (Html.BeginForm("NewBatch", "Admin", FormMethod.Post, new { @id = "frmBatch" }))
           {%>
        <%: Html.ValidationSummary(true) %>
        <table class="DetailView" style="width: 100%; margin-top: -7px;">
            <%if (ViewData["Branches"] != null)
              { %>
            <tr>
                <td style="width: 150px;">
                    School
                </td>
                <td>
                    <%= Html.DropDownListFor(model => model.BranchId, (IEnumerable<SelectListItem>)ViewData["Branches"], "Select", new { @class = "selectNone" })%>
                    <%: Html.ValidationMessageFor(model => model.BranchId)%>
                </td>
            </tr>
            <%} %>
            <tr>
                <td>
                    Batch Code
                </td>
                <td>
                    <%: Html.TextBoxFor(model => model.BatchCode, new { maxlength = "50" })%>
                    <%: Html.ValidationMessageFor(model => model.BatchCode) %>
                </td>
            </tr>
            <tr>
                <td>
                    Batch Name
                </td>
                <td>
                    <%: Html.TextBoxFor(model => model.BatchName, new { maxlength = "50" })%>
                    <%: Html.ValidationMessageFor(model => model.BatchName) %>
                </td>
            </tr>
            <tr>
                <td>
                    Batch Start Date
                </td>
                <td>
                    <%: Html.TextBoxFor(model => model.BatchStartTime, new {@id="txtStartTime" })%>
                    <%: Html.ValidationMessageFor(model => model.BatchStartTime) %>
                    <div style="display: none">
                        <p>
                            <label for="culture">
                                Select a culture to use for formatting:</label>
                            <select id="culture">
                                <option value="en-EN" selected="selected">English</option>
                                <option value="de-DE">German</option>
                            </select>
                        </p>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    Batch End Date
                </td>
                <td>
                    <%: Html.TextBoxFor(model => model.BatchEndTime) %>
                    <%: Html.ValidationMessageFor(model => model.BatchEndTime) %>
                </td>
            </tr>
            <tr>
                <td>
                    Max Student Strenght
                </td>
                <td>
                    <%: Html.TextBoxFor(model => model.StudentStrength) %>
                    <%: Html.ValidationMessageFor(model => model.StudentStrength) %>
                </td>
            </tr>
        </table>
        <p>
            <input type="submit" value="Add Batch" class="submit" />
        </p>
        <% } %>
    </div>
</asp:Content>
