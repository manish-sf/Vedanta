<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Vedanta.Models.Assets>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    New Asset
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="pageTitle">
        <div class="pageHeader">
            <h2>
                New Asset</h2>
        </div>
        <div class="pageLink">
            <a href="/Assets/List">
                <img src="../../Images/list_2.png" alt="" title="Assets List" /></a>
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
        <%: Html.ValidationSummary(true) %>
        <table width="100%">
            <%if (ViewData["Branches"] != null)
              { %>
            <tr>
                <td style="width: 48%">
                    Branch
                    <br />
                    <%= Html.DropDownListFor(model => model.BranchId, (IEnumerable<SelectListItem>)ViewData["Branches"], ">> Select", new { @id = "ddlBranchId", @class = "selectNone" })%>
                    <%: Html.ValidationMessageFor(model => model.BranchId, "Branch is required")%>
                </td>
                <td>
                    <%: Html.LabelFor(model => model.Code)%>
                    <br />
                    <%: Html.TextBoxFor(model => model.Code)%>
                    <%: Html.ValidationMessageFor(model => model.Code)%>
                </td>
            </tr>
            <%} %>
            <tr>
                <td>
                    <%: Html.LabelFor(model => model.Name) %><br />
                    <%: Html.TextBoxFor(model => model.Name) %>
                    <%: Html.ValidationMessageFor(model => model.Name) %>
                </td>
                <td>
                    <%: Html.LabelFor(model => model.Quantity) %><br />
                    <%: Html.TextBoxFor(model => model.Quantity) %>
                    <%: Html.ValidationMessageFor(model => model.Quantity) %>
                </td>
            </tr>
            <tr>
                <td>
                    <%: Html.LabelFor(model => model.PurchasedDate) %><br />
                    <%: Html.TextBoxFor(model => model.PurchasedDate, new { @class = "datepicker" })%>
                    <%: Html.ValidationMessageFor(model => model.PurchasedDate) %>
                </td>
                <td>
                    <%: Html.LabelFor(model => model.LastRepaireDate) %><br />
                    <%: Html.TextBoxFor(model => model.LastRepaireDate, new { @class = "datepicker" })%>
                    <%: Html.ValidationMessageFor(model => model.LastRepaireDate) %>
                </td>
            </tr>
            <tr>
                <td>
                    <%: Html.LabelFor(model => model.LastAuditDate) %><br />
                    <%: Html.TextBoxFor(model => model.LastAuditDate, new {@class="datepicker" })%>
                    <%: Html.ValidationMessageFor(model => model.LastAuditDate) %>
                </td>
                <td>
                    <%: Html.LabelFor(model => model.IsWorking) %><br />
                    <%-- <%: Html.TextBoxFor(model => (bool)model.IsWorking)%>--%>
                    <input type="checkbox" name="chkIsWorking" checked />
                </td>
            </tr>
            <tr>
                <td>
                    <%: Html.LabelFor(model => model.WarrantyExpiryDate) %><br />
                    <%: Html.TextBoxFor(model => model.WarrantyExpiryDate, new { @class = "datepicker" })%>
                    <%: Html.ValidationMessageFor(model => model.WarrantyExpiryDate)%>
                </td>
                <td>
                    <%: Html.LabelFor(model => model.AMC_Reporesntative) %><br />
                    <%: Html.TextBoxFor(model => model.AMC_Reporesntative)%>
                    <%: Html.ValidationMessageFor(model => model.AMC_Reporesntative)%>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <%: Html.LabelFor(model => model.AMC_Address) %><br />
                    <%: Html.TextBoxFor(model => model.AMC_Address, new {@style="width:97%" })%>
                    <%: Html.ValidationMessageFor(model => model.AMC_Address)%>
                </td>
            </tr>
            <tr>
                <td>
                    <%: Html.LabelFor(model => model.AMC_Email) %><br />
                    <%: Html.TextBoxFor(model => model.AMC_Email)%>
                    <%: Html.ValidationMessageFor(model => model.AMC_Email)%>
                </td>
                <td>
                    <%: Html.LabelFor(model => model.AMC_Phone) %><br />
                    <%: Html.TextBoxFor(model => model.AMC_Phone)%>
                    <%: Html.ValidationMessageFor(model => model.AMC_Phone)%>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <div style="padding: 2px">
                        <input type="submit" name="Submit" value="Save Asset" class="submit" />
                    </div>
                </td>
            </tr>
        </table>
        <% } %>
    </div>
</asp:Content>
