<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IEnumerable<Vedanta.Models.vw_Student_Lists>>" %>
<table class="GridView" id="tblSearch">
    <tr>
        <th style="width: 20px;">
        </th>
        <%if (!Roles.IsUserInRole("CenterManager"))
          { %>
        <th>
            Branch
            <%if (Roles.IsUserInRole("SuperAdmin"))
              {%><br />
            Client<%} %>
        </th>
        <%} %>
        <th style="width: 150px;">
            Name
        </th>
        <th style="width: 40px;">
            Gender
        </th>
        <th style="width: 120px;">
            Father Name
        </th>
        <th>
            Address
        </th>
        <th style="width: 60px;">
            Phone
        </th>
        <th>
            Image
        </th>
        <th style="width: 70px;">
            Courses
        </th>
    </tr>
    <% 
        if (Model != null && Model.Count() > 0)
        {
            foreach (var item in Model)
            {
                if (item.IsBranchActive == true || Roles.IsUserInRole("SuperAdmin"))
                { %>
    <tr>
        <td>
            <a href="/Students/Edit/<%: item.id%>">
                <img src="../../images/pencil-icon.png" id="imgEditLedger_<%: item.id%>" alt="" title="Edit"
                    style="border-style: none;" />
            </a>
        </td>
        <%if (!Roles.IsUserInRole("CenterManager"))
          { %>
        <td>
            <%: item.BranchName%>
            <%}
          if (Roles.IsUserInRole("SuperAdmin"))
          {%><br />
            (
            <%:item.ClientId%>)
        </td>
        <%} %>
        <td>
            <%: item.FirstName%>&nbsp;<%: item.MiddleName%>&nbsp;<%: item.LastName%>
        </td>
        <td>
            <%: item.Gender%>
        </td>
        <td>
            <%: item.FatherName%>
        </td>
        <td>
            <div style="width: 125px; height: 30px; overflow: hidden;" title=" <%: item.Street%>  <%: item.Street2%> <%: item.City%>&nbsp;<%: item.State%>&nbsp;<%: item.Country%>&nbsp;<%: item.Zip%> Phone: <%: item.Phone%> <%: item.Cell %>">
                <%: item.Street%><br />
                <%: item.Street2%>
                <br />
                <%: item.City%>&nbsp;<%: item.State%>&nbsp;<%: item.Country%>&nbsp;<%: item.Zip%>
            </div>
        </td>
        <td>
            <%: item.Cell%>
        </td>
        <td style="padding: 5px; width: 55px; height: 55px; font-size: x-small; font-family: Verdana;
            text-align: center; vertical-align: middle" class="photo">
            <img src="/Students/StudentImageLoader/<%: item.id %>" alt="" id="agentPhoto<%: item.id %>"
                style="height: 50px; width: 50px; padding-top: 5px;" />
            <%--  <%}
              else
              { %>
            <div id="photo-box">
                <img src="../../images/image-not-available.png" alt="" id="imgThumbnail2" style="height: 50px;
                    width: 50px; padding: 5px;" /></div>
            <%} %>--%>
        </td>
        <td>
            <%: item.Courses%>
            <br />
            <a href="/Students/New/<%: item.id %>" title="New Course Admission">New Course</a>
        </td>
    </tr>
    <% }
            }
        }
        else
        { %>
    <tr>
        <%if (!Roles.IsUserInRole("CenterManager"))
          { %>
        <td colspan="9">
            <div class="NoRecordFound">
                No Record Found.
            </div>
        </td>
        <%}
          else
          { %>
        <td colspan="9">
            <div class="NoRecordFound">
                No Record Found.
            </div>
        </td>
        <%} %>
    </tr>
    <%} %>
</table>
