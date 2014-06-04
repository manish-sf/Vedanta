<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Vedanta.Models.EXPENSESHEAD>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Ledger Master
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <center>
        <div style="width: 950px; text-align: left;">
            <div style="float: left">
                <h1>
                    Ledger Master</h1>
            </div>
            <div style="float: right; vertical-align: middle; height: 30px; margin-top: 20px">
                <%: Html.ActionLink("Ledger List", "LedgersList","Admin") %></div>
            <div style="clear: both">
                <hr />
                <% if (ViewData["Message"] != null)
                   { %>
                <div class="info-message">
                    <%: ViewData["Message"]%>
                </div>
                <%} %>
                <% using (Html.BeginForm())
                   {%>
                <%: Html.ValidationSummary(true) %>
                <table width="100%" class="DatailsView">
                    <tr>
                        <td style="vertical-align: top; padding-bottom: 5px;">
                            Ledger Type
                        </td>
                        <td style="vertical-align: top; padding-bottom: 5px;">
                            <%= Html.DropDownListFor(model => model.LedgerTypeId, (IEnumerable<SelectListItem>)ViewData["LedgerTypes"], "Select", new { @id = "ddlLedgerTypeId", @class = "required selectNone" })%>
                            <%: Html.ValidationMessageFor(model => model.LedgerTypeId)%>
                        </td>
                    </tr>
                    <tr>
                        <td style="vertical-align: top; padding-bottom: 5px;">
                            Ledger Code
                        </td>
                        <td style="vertical-align: top; padding-bottom: 5px;">
                            <%: Html.TextBoxFor(model => model.CODE, new { @class = "required",  @maxlength = "3" })%>
                            (Numeric Value 3)
                        </td>
                    </tr>
                    <tr>
                        <td style="vertical-align: top; padding-bottom: 5px;">
                            Ledger Name
                        </td>
                        <td style="vertical-align: top; padding-bottom: 5px;">
                            <%: Html.TextBoxFor(model => model.NAME, new { @class = "required", @maxlength = "30" })%>
                            <br />
                            (Max 30 chars)
                            <%: Html.ValidationMessageFor(model => model.NAME) %>
                        </td>
                    </tr>
                </table>
                <hr />
                <p>
                    <input type="submit" value="Add Ledger" />
                </p>
                <% } %>
            </div>
        </div>
    </center>
</asp:Content>
