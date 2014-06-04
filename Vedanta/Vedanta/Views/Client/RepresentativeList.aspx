<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/MyMaster.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Vedanta.Models.ClientRepresentatives>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Representative List
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Representative List</h2>
    <%if (ViewData["Client"] != null)
      {
          Vedanta.Models.vw_ClientList client = (Vedanta.Models.vw_ClientList)ViewData["Client"];
          if (client != null)
          {
    %>
    <div style="text-align: right; margin-top: -35px; border-bottom: 2px solid #000;
        padding-bottom: 3px;">
        Client Name:<strong><%: client.Name %>
            [<%: client.Id %>]</strong>
    </div>
    <table width="100%" class="GridView">
        <tr>
            <th>
                Name
            </th>
            <th>
                Address
            </th>
            <th>
                Phone
            </th>
            <th>
                Cell
            </th>
            <th>
                Email
            </th>
            <th>
                IsActive
            </th>
        </tr>
        <%if (Model != null & Model.Count() > 0)
          {
              foreach (var item in Model)
              { %>
        <tr>
            <td>
                <%: item.FirstName %>
                <%: item.LastName %>
            </td>
            <td>
                <%: item.Lane %>
                <%: item.Street %>
                <%: item.City %>
                <%: item.Zip %>
            </td>
            <td>
                <%: item.Phone %>
                <%if (!string.IsNullOrEmpty(item.Extension))
                  { %>
                (<%: item.Extension %>)
                <%} %>
            </td>
            <td>
                <%: item.Cell %>
            </td>
            <td>
                <%: item.Email %>
            </td>
            <td>
                <%: item.IsActive %>
            </td>
        </tr>
        <% }
          }
          else
          {
        %>
        <tr>
            <td colspan="6">
                Client representatives record not found.
            </td>
        </tr>
        <%} %>
    </table>
    <p>
        <%: Html.ActionLink("Add New", "CreateRepresentative", new { @id=client.Id})%>
    </p>
    <%}
      }%>
</asp:Content>
