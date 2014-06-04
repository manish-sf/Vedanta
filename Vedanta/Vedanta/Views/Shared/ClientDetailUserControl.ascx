<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<Vedanta.Models.vw_Users_Lists>" %>
<div id="divClientLogo" style="width: 80px; float: left;">
    <%  
        if (Session["ClientId"] != null && Roles.IsUserInRole("Admin"))
        {%>
    <img src="/Client/ClientLogoLoader/<%:Session["ClientId"] %>" alt="" id="clientLogo"
        style="height: 70px; width: 70px;" />
    <%} if (Session["ClientId"] != null && Session["BranchId"] != null && Roles.IsUserInRole("CenterManager"))
        { %>
    <img src="/Branch/BranchLogoLoader/<%:Session["BranchId"] %>" alt="" id="Img1" style="height: 70px;
        width: 70px;" />
    <%} %>
</div>
<div id="divClientDetails" style="width: 250px; float: left;">
    <%if (Roles.IsUserInRole("SuperAdmin"))
      { %>
    <strong>Administrator</strong><br />
    Scan Services
    <%}
      else
      { %>
    <strong>
        <%if (Roles.IsUserInRole("Admin"))
          { %>
        <%:Model.Name%></strong>&nbsp;(<%:string.Format("{0:dd/MM/yyyy}", Model.ContractStartDate)%>
    to
    <%:string.Format("{0:dd/MM/yyyy}", Model.ContractEndDate)%>)<br />
    <%:Model.Street%>&nbsp;<%:Model.City%>&nbsp;<%:Model.StateName%><br />
    <%:Model.CountryName%><br />
    Email:<%:Model.Email%><br />
    Website:<%:Model.Website%><%} if (Roles.IsUserInRole("CenterManager"))
          { %>
    <%:Model.BranchName%></strong>&nbsp;(<%:string.Format("{0:dd/MM/yyyy}", Model.ContractStartDate)%>
    to
    <%:string.Format("{0:dd/MM/yyyy}", Model.ContractEndDate)%>)<br />
    Email:<%:Model.Email%>
    <% }
      } %>
</div>
