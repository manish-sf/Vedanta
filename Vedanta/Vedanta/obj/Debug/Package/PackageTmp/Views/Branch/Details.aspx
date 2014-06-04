<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Vedanta.Models.vw_Branches>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Branch Details
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
                Branch Details</h2>
        </div>
        <div class="pageLink">
            <%if (Roles.IsUserInRole("Admin"))
              {%>
            <a href="/Branch/BranchList">
                <img src="../../Images/list_2.png" alt="" title="Branch List" /></a><%} %>
            <a href="/Branch/Edit/<%:Model.Id %>">
                <img src="../../Images/edit_details.png" alt="" title="Branch Edit" /></a>
            <%--<span class="noprint">
                    &nbsp;|&nbsp;</span><a href="javascript:window.print()" class="noprint">Print</a>--%>
        </div>
    </div>
    <div id="Mainpg">
        <div style="text-align: right; margin-top: 0px; border-bottom: 2px solid #000; padding-bottom: 3px;">
            Branch Name:<strong>
                <%: Model.BranchName %>[<%: Model.BranchCode %>]</strong>
        </div>
        <div style="padding-top: 20px;">
            <table class="DetailView" width="100%">
                <tr>
                    <td style="width: 150px;">
                        Branch Type
                    </td>
                    <td>
                        <%: Model.BranchType %>
                    </td>
                </tr>
                <tr>
                    <td style="width: 150px;">
                        Branch Code
                    </td>
                    <td>
                        <%: Model.BranchCode %>
                    </td>
                </tr>
                <tr>
                    <td style="width: 150px;">
                        Name
                    </td>
                    <td>
                        <%: Model.BranchName%>
                    </td>
                </tr>
                <%if (Model.ZonalOfficeId != null)
                  { %>
                <tr>
                    <td>
                        Zone Name
                    </td>
                    <td>
                        <%:Model.ZoneName %>
                    </td>
                </tr>
                <%} if (Model.RegionalOfficeId != null)
                  { %>
                <tr>
                    <td>
                        Region Name
                    </td>
                    <td>
                        <%:Model.RegionName %>
                    </td>
                </tr>
                <%} %>
                <tr>
                    <td>
                        Address
                    </td>
                    <td>
                        <%: Model.Address1 %>
                        <%: Model.Address2 %>
                        <%: Model.City %>
                        <%: Model.PIN %>
                    </td>
                </tr>
                <tr>
                    <td>
                        State
                    </td>
                    <td>
                        <%: Model.State %>
                    </td>
                </tr>
                <tr>
                    <td>
                        Country
                    </td>
                    <td>
                        <%: Model.Country %>
                    </td>
                </tr>
                <tr>
                    <td>
                        Phone
                    </td>
                    <td>
                        <%: Model.Phones %>
                    </td>
                </tr>
                <tr>
                    <td>
                        Fax
                    </td>
                    <td>
                        <%: Model.Fax %>
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
                <%--  <tr>
                    <td>
                        Website
                    </td>
                    <td>
                        <%: Model.Website %>
                    </td>
                </tr>--%>
                <tr>
                    <td>
                        Created Date
                    </td>
                    <td>
                        <%: String.Format("{0:dd/MMM/yyyy}", Model.CreatedDate ) %>
                    </td>
                </tr>
                <tr>
                    <td>
                        Last Updated Date
                    </td>
                    <td>
                        <%: String.Format("{0:dd/MMM/yyyy}", Model.LastUpdatedDate  ) %>
                    </td>
                </tr>
                <tr>
                    <td>
                        Logo
                    </td>
                    <td>
                        <div id="photo-box">
                            <%if (Model.ContentType != null)
                              { %>
                            <img src="/Branch/BranchLogoLoader/<%: Model.Id %>" alt="" id="agentPhoto<%: Model.Id %>"
                                style="height: 100px; width: 100px; padding-top: 5px;" />
                            <%}
                              else
                              { %>
                            <img src="../../images/image-not-available.png" alt="" id="imgThumbnail2" style="height: 100px;
                                width: 100px; padding: 5px;" /><%} %>
                        </div>
                    </td>
                </tr>
            </table>
        </div>
        <%--  <p>
            <%: Html.ActionLink("Edit", "Edit", new { id=Model.Id }) %>
            |
            <%: Html.ActionLink("Back to List", "Index") %>
        </p>--%>
    </div>
</asp:Content>
