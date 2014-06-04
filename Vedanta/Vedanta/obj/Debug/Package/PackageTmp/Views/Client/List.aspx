<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Vedanta.Models.vw_ClientList>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Clients List
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script src="../../Scripts/jquery-1.10.1.min.js" type="text/javascript"></script>
    <%--<div id="sticky-footer" style="width: 100%; min-width: 1024px; position: fixed; bottom: 8px;
        right: 0; background: #c4c1af; height: 45px; padding: 2px;">
        <div style="background-color: #fff; width: 44px; float: right;">
            <img id="imgup" src="../../images/1_navigation_expand.png" style="cursor: pointer;
                width: auto; height: 42px; border: 1px solid white" alt="" title="Collapse" />
        </div>
        <!-- AddThis Button BEGIN -->
        <div id="url" class="addthis_toolbox addthis_default_style addthis_32x32_style" style="margin: 0 auto;
            width: 62%; padding-top: 5px;" addthis:url='www.scanservices.co.in' addthis:title='Software Development'>
            <div class="addthis_toolbox addthis_default_style addthis_32x32_style">
                <a class="addthis_button_facebook"></a><a class="addthis_button_twitter"></a><a class="addthis_button_pinterest_share">
                    <a class="addthis_button_email"></a></a><a class="addthis_button_google_plusone_share">
                    </a><a class="addthis_button_compact"></a><a class="addthis_counter addthis_bubble_style">
                    </a>
            </div>
        </div>
        <script type="text/javascript">            var addthis_config = { "data_track_addressbar": true };</script>
        <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-534e4d70498de42b"></script>
        <!-- AddThis Button END -->
    </div>--%>
    
    <div class="pageTitle">
        <div class="pageHeader">
            <h2>
                Clients List</h2>
        </div>
        <div class="pageLink">
            <a href="/Client/Create">
                <img src="../../Images/add_user.png" alt="" title="Add Client" /></a> <a href="javascript:window.print()">
                    <img class="printer" src="../../Images/print_32.png" alt="Print" title="Print Receipt" /></a>
            <%--<span class="noprint">
                    &nbsp;|&nbsp;</span><a href="javascript:window.print()" class="noprint">Print</a>--%>
        </div>
    </div>
    <div id="Mainpg">
        <table class="GridView">
            <tr>
                <th>
                    Name
                </th>
                <th>
                    Business type
                </th>
                <th>
                    Address
                </th>
                <th>
                    Phone/Cell
                </th>
                <th style="width: 70px;">
                    Email
                </th>
                <th style="width: 70px;">
                    Website
                </th>
                <th style="width: 60px;">
                    Contract Period
                </th>
                <th>
                </th>
            </tr>
            <% if (Model != null && Model.Count() > 0)
               { %>
            <% foreach (var item in Model)
               { %>
            <tr>
                <td>
                    <a href="/Client/Details/<%: item.Id%>">
                        <%: item.Name%></a>
                </td>
                <td>
                    <%: item.BusinessName  %>
                </td>
                <td>
                    <%: item.Lane%>,
                    <%: item.Street%>,
                    <%: item.City%>,
                    <%: item.StateName%>,
                    <%: item.Zip%>
                </td>
                <td>
                    <%: item.Phone1%>,<%: item.Cell%>
                </td>
                <td style="width: 70px;">
                    <%: item.Email%>
                </td>
                <td style="width: 70px;">
                    <%: item.Website %>
                </td>
                <td>
                    <%: String.Format("{0:MM/dd/yy}", item.ContractStartDate)%>
                    -
                    <%: String.Format("{0:MM/dd/yy}", item.ContractEndDate)%>
                </td>
                <td>
                    <a href="/Branch/BranchList/<%:item.Id %>" title="Branch">B</a> &nbsp; <a href="/Client/Settings/<%:item.Id %>"
                        title="Setting">S</a>
                </td>
            </tr>
            <% }%>
            <%}
               else
               { %><tr>
                   <td colspan="8">
                       Clients record not found.
                   </td>
               </tr>
            <%} %>
        </table>
    </div>
</asp:Content>
