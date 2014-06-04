<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Vedanta.Models.EXPENSESHEAD>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit Ledger
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <center>
        <div style="width: 950px; text-align: left;">
            <div style="float: left">
                <h1>
                    Edit Ledger</h1>
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
                        <td class="field-Label">
                            Ledger Type
                        </td>
                        <td>
                            <%= Html.DropDownListFor(model => model.LedgerTypeId, (IEnumerable<SelectListItem>)ViewData["LedgerTypes"], "Select", new { @id = "ddlLedgerTypeId", @class = "selectNone" })%>
                            <%--<%: Html.TextBoxFor(model => model.DRCR_CODE) %>--%>
                            <%: Html.ValidationMessageFor(model => model.LedgerTypeId)%>
                        </td>
                    </tr>
                    <tr>
                        <td class="field-Label">
                            Ledger Code
                        </td>
                        <td>
                            <%: Html.TextBoxFor(model => model.CODE, new { @maxlength = "3" })%>
                            (Numeric Value)
                        </td>
                    </tr>
                    <tr>
                        <td class="field-Label">
                            Ledger Name
                        </td>
                        <td>
                            <%: Html.TextBoxFor(model => model.NAME, new { @maxlength = "30" })%>
                            <%: Html.ValidationMessageFor(model => model.NAME)%>
                        </td>
                    </tr>
                </table>
                <hr />
                <p>
                    <input type="submit" value="Save Ledger" />
                </p>
                <% } %>
            </div>
        </div>
    </center>
</asp:Content>
