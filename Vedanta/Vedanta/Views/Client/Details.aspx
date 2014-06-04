<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Vedanta.Models.vw_ClientList>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Client Details
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        #photo-box
        {
            -moz-border-radius: 10px 10px 10px 10px;
            -khtml-border-radius: 10px 10px 10px 10px;
            -webkit-border-radius: 10px 10px 10px 10px;
            border-radius: 10px 10px 10px 10px;
            background: url(../../images/login-back.png) repeat scroll center center transparent;
            border: 1px solid #cfe1ea;
            -moz-box-shadow: rgba(205, 205, 205, 0.7) 0px 0px 5px 0px;
            -webkit-box-shadow: rgba(205, 205, 205, 0.7) 0px 0px 5px 0px;
            -khtml-box-shadow: rgba(205, 205, 205, 0.7) 0px 0px 5px 0px;
            box-shadow: rgba(205, 205, 205, 0.7) 0px 0px 5px 0px;
            opacity: 0.85;
            width: 100px;
            height: 100px;
            padding: 20px;
            text-align: left;
            overflow: hidden;
            float: left;
        }
        
        #uploadImage
        {
            margin-left: 20px;
            float: left;
        }
    </style>
    <div class="pageTitle">
        <div class="pageHeader">
            <h2>
                Edit Client</h2>
        </div>
        <div class="pageLink">
            <%if (Roles.IsUserInRole("SuperAdmin"))
              {%>
            <a href="/Client/List">
                <img src="../../Images/list.png" alt="" title="Client List" /></a><%} %>
            <a href="/Client/Edit">
                <img src="../../Images/edit_details.png" alt="" title="Client Edit" /></a> <a href="/Client/Settings">
                    <img src="../../Images/edit_details.png" alt="" title="Client Settings" /></a>
            <%--<span class="noprint">
                    &nbsp;|&nbsp;</span><a href="javascript:window.print()" class="noprint">Print</a>--%>
        </div>
    </div>
    <div id="Mainpg">
        <div style="text-align: right; margin-top: 0px; border-bottom: 2px solid #000; padding-bottom: 3px;">
            Client Name:<strong>
                <%: Model.Name %>[<%: Model.Id %>]</strong>
        </div>
        <div style="padding-top: 20px;">
            <table class="DetailView" width="100%">
                <tr>
                    <td style="width: 150px;">
                        Name
                    </td>
                    <td>
                        <%: Model.Name %>
                    </td>
                </tr>
                <tr>
                    <td>
                        Business
                    </td>
                    <td>
                        <%: Model.BusinessName  %>
                    </td>
                </tr>
                <tr>
                    <td>
                        Address
                    </td>
                    <td>
                        <%: Model.Lane %>
                        <%: Model.Street %>
                        <%: Model.City %>
                        <%: Model.Zip %>
                    </td>
                </tr>
                <tr>
                    <td>
                        State
                    </td>
                    <td>
                        <%: Model.StateName %>
                    </td>
                </tr>
                <tr>
                    <td>
                        Country
                    </td>
                    <td>
                        <%: Model.CountryName %>
                    </td>
                </tr>
                <tr>
                    <td>
                        Phone
                    </td>
                    <td>
                        <%: Model.Phone1 %>
                        <%: Model.Phone2 %>
                    </td>
                </tr>
                <tr>
                    <td>
                        Cell
                    </td>
                    <td>
                        <%: Model.Cell %>
                    </td>
                </tr>
                <tr>
                    <td>
                        Email
                    </td>
                    <td>
                        <%: Model.Email %>
                    </td>
                </tr>
                <tr>
                    <td>
                        Website
                    </td>
                    <td>
                        <%: Model.Website %>
                    </td>
                </tr>
                <tr>
                    <td>
                        Created Date
                    </td>
                    <td>
                        <%: String.Format("{0:dd/MMM/yyyy}", Model.CreateDate) %>
                    </td>
                </tr>
                <tr>
                    <td>
                        Contract Start Date
                    </td>
                    <td>
                        <%: String.Format("{0:dd/MMM/yyyy}", Model.ContractStartDate) %>
                    </td>
                </tr>
                <tr>
                    <td>
                        Contract End Date
                    </td>
                    <td>
                        <%: String.Format("{0:dd/MMM/yyyy}", Model.ContractEndDate ) %>
                    </td>
                </tr>
                <tr>
                    <td>
                        Max. School Permitted
                    </td>
                    <td>
                        <%: Model.NoOfSchoolsPermitted %>
                    </td>
                </tr>
                <tr>
                    <td>
                        Number Of Client Users Allowed
                    </td>
                    <td>
                        <%: Model.NoOfUsers %>
                    </td>
                </tr>
                <tr>
                    <td>
                        Created Date
                    </td>
                    <td>
                        <%: String.Format("{0:dd/MMM/yyyy}", Model.CreateDate ) %>
                    </td>
                </tr>
                <tr>
                    <td>
                        Last Updated Date
                    </td>
                    <td>
                        <%: String.Format("{0:dd/MMM/yyyy}", Model.LastUpdated  ) %>
                    </td>
                </tr>
                <tr>
                    <td>
                        Logo
                    </td>
                    <td>
                        <div id="photo-box">
                            <%--      <%if (Model.Logo != null)
                          { %>--%>
                            <img src="/Client/ClientLogoLoader/<%: Model.Id %>" alt="" id="agentPhoto<%: Model.Id %>"
                                style="height: 100px; width: 100px; padding-top: 5px;" />
                            <%--  <%}
                          else
                          { %>
                        <img src="../../images/image-not-available.png" alt="" id="imgThumbnail2" style="height: 100px;
                            width: 100px; padding: 5px;" /><%} %>--%>
                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
