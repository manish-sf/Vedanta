<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Vedanta.Models.ClientRepresentatives>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    New Client Representative
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        function fillSelectedCountryStateList() {
            $.ajax({
                type: "POST",
                url: "/Client/GetStateListByCountryId/",
                data: { "id": $('#CountryId option:selected').val() },
                success: function (data) {
                    populateDropdown($("#StateId"), data);
                },
                failure: function (response) {
                    alert(response);
                }
            });
        }

        function populateDropdown(select, data) {
            select.html('');
            $.each(data, function (id, option) {
                select.append($('<option></option>').val(option.Value).html(option.Text));
            });
        }

    </script>
    <h2>
        New Representative
    </h2>
    <%if (ViewData["Client"] != null)
      {
          MyClients.Models.vw_ClientList client = (MyClients.Models.vw_ClientList)ViewData["Client"];
          if (client != null)
          {
    %>
    <div style="text-align: right; margin-top: -35px; border-bottom: 2px solid #000;
        padding-bottom: 3px;">
        Client Name:<strong><%: client.Name %>
            [<%: client.Id %>]</strong>
    </div>
    <% using (Html.BeginForm())
       {%>
    <%: Html.ValidationSummary(true) %>
    <fieldset>
        <legend>Fields</legend>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.FirstName) %>
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(model => model.FirstName) %>
            <%: Html.ValidationMessageFor(model => model.FirstName) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.LastName) %>
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(model => model.LastName) %>
            <%: Html.ValidationMessageFor(model => model.LastName) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.Lane) %>
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(model => model.Lane) %>
            <%: Html.ValidationMessageFor(model => model.Lane) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.Street) %>
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(model => model.Street) %>
            <%: Html.ValidationMessageFor(model => model.Street) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.City) %>
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(model => model.City) %>
            <%: Html.ValidationMessageFor(model => model.City) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.CountryId) %>
        </div>
        <div class="editor-field">
            <%= Html.DropDownListFor(model => model.CountryId, (IEnumerable<SelectListItem>)ViewData["CountryList"], "Select", new { @class = "selectNone", @id = "CountryId", onchange = "fillSelectedCountryStateList()" })%>
            <%: Html.ValidationMessageFor(model => model.CountryId)%>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.StateId) %>
        </div>
        <div class="editor-field">
            <%= Html.DropDownListFor(model => model.StateId, (IEnumerable<SelectListItem>)ViewData["StateList"], "Select", new { @class = "selectNone", @id = "StateId" })%>
            <%: Html.ValidationMessageFor(model => model.StateId) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.Zip) %>
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(model => model.Zip) %>
            <%: Html.ValidationMessageFor(model => model.Zip) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.Phone) %>
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(model => model.Phone) %>
            <%: Html.ValidationMessageFor(model => model.Phone) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.Extension) %>
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(model => model.Extension) %>
            <%: Html.ValidationMessageFor(model => model.Extension) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.Cell) %>
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(model => model.Cell) %>
            <%: Html.ValidationMessageFor(model => model.Cell) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.Email) %>
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(model => model.Email) %>
            <%: Html.ValidationMessageFor(model => model.Email) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.IsActive) %>
        </div>
        <div class="editor-field">
            <%--    <%: Html.TextBoxFor(model => model.IsActive) %>
            <%: Html.ValidationMessageFor(model => model.IsActive) %>
            --%>
            <%= Html.RadioButton("rdoYes", "true", new { id = "rdoYes", @class = "required" })%>Yes
            &nbsp;
            <%= Html.RadioButton("rdoYes", "false", new { id = "rdoNo", @class = "required" })%>No
            <label for="rdoYes" class="error" generated="true">
            </label>
        </div>
        <p>
            <input type="submit" value="Create" />
        </p>
    </fieldset>
    <% } %>
    <div>
        <%: Html.ActionLink("Back to List", "RepresentativeList", new { @id = client.Id })%>
    </div>
    <%}
      }%>
</asp:Content>
