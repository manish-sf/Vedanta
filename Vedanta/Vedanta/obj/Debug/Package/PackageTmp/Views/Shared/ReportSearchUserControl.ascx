<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>
<div id="wrapperReport">
    <table id="tbleReportSearch" width="99%" cellspacing="0" cellpadding="0">
        <tr>
            <td>
                From<%:Html.TextBox("DateFrom", null, new { @class="datepicker" ,@width="80px;"})%>
            </td>
            <td>
                To:
                <%:Html.TextBox("ToDate", null, new { @class="datepicker" })%>
            </td>
        </tr>
        <%if (ViewData["Zones"] != null)
          { %>
        <tr>
            <td colspan="2">
                Zones:
                <%: Html.DropDownList("Zonales", (IEnumerable<SelectListItem>)ViewData["Zones"], "Select", new { @class = "selectNone", @id = "ZoneId", @width = "150", onchange = "fillSelectedZoneRegionList()" })%>
            </td>
        </tr>
        <%} if (ViewData["Regions"] != null)
          { %>
        <tr>
            <td colspan="2">
                Regions:<%: Html.DropDownList("Regions", (IEnumerable<SelectListItem>)ViewData["Regions"], "Select", new { @class = "selectNone", @id = "RegionId", @style = "width:150px;", onchange = "fillSelectedRegionBranchList()" })%></span>
            </td>
        </tr>
        <%} if (ViewData["Branches"] != null)
          { %>
        <tr>
            <td colspan="2">
                Branchs:
                <%: Html.DropDownList("Branchs", (IEnumerable<SelectListItem>)ViewData["Branches"], "Select", new { @class = "selectNone", @id = "BranchId" })%>
                <input type="button" id="btnSearch" value="Search" title="Search employee" class="btnSearch">
            </td>
        </tr>
        <%} %>
    </table>
    <%-- <span id="spnDateRange"></span>
    <p>
        <span id="spnZone"></span>
        <br />
        <span id="spnRegion"><span id="spnBranch">
    </p>--%>
</div>
