<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IEnumerable<Vedanta.Models.vw_Admissions>>" %>
<table class="GridView" id="tblSearch">
    <tr>
        <th>
            <%if (!Roles.IsUserInRole("CenterManager"))
              { %>
            Branch
            <%} %>
            <%if (Roles.IsUserInRole("SuperAdmin"))
              {%><br />
            Client<%} %>
        </th>
        <th>
            Course
        </th>
        <th>
            Name
        </th>
        <th>
            Gender
        </th>
        <th>
            Address
        </th>
        <th>
            Admission Date
        </th>
        <th>
            Reg. Number
        </th>
        <th>
            Batch Time
        </th>
        <th>
            Collection
        </th>
        <th>
            Image
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
            <%if (!Roles.IsUserInRole("CenterManager"))
              { %>
            <%: item.BranchName%>
            <%}
              if (Roles.IsUserInRole("SuperAdmin"))
              {%><br />
            (
            <%:item.ClientId%>)
            <%} %>
        </td>
        <td>
            <%: item.CourseCode%>
        </td>
        <td>
            <%: item.FirstName%>&nbsp;<%: item.MiddleName%>&nbsp;<%: item.LastName%>
        </td>
        <td>
            <%: item.Gender%>
        </td>
        <%--  <td>
            <%: item.FatherName %>
        </td>--%>
        <td>
            <div style="width: 125px; height: 30px; overflow: hidden;" title=" <%: item.Street%>  <%: item.Street2%> <%: item.City%>&nbsp;<%: item.State%>&nbsp;<%: item.Country%>&nbsp;<%: item.Zip%> Phone: <%: item.Phone%> <%: item.Cell %>">
                <%: item.Street%><br />
                <%: item.Street2%>
                <br />
                <%: item.City%>&nbsp;<%: item.State%>&nbsp;<%: item.Country%>&nbsp;<%: item.Zip%>
                <br />
                Phone:&nbsp;<%: item.Phone%>&nbsp;
                <%: item.Cell%>
            </div>
        </td>
        <td>
            <%: String.Format("{0:dd/MM/yyyy}", item.AdmissionDate)%>
        </td>
        <td>
            <%: item.RegistrationNumber%>
        </td>
        <td>
            <%:item.BatchStartTime%>
            -<br />
            <%:item.BatchEndTime%>
        </td>
        <td>
            <%:  String.Format("{0:0.00}", item.FeeCollected)%>
        </td>
        <td style="padding: 5px; width: 55px; height: 55px; font-size: x-small; font-family: Verdana;
            text-align: center; vertical-align: middle" class="photo">
            <img src="/Students/StudentImageLoader/<%: item.StudentId %>" alt="" id="agentPhoto<%: item.StudentId %>"
                style="height: 50px; width: 50px; padding-top: 5px;" />
            <%--  <%}
              else
              { %>
            <div id="photo-box">
                <img src="../../images/image-not-available.png" alt="" id="imgThumbnail2" style="height: 50px;
                    width: 50px; padding: 5px;" /></div>
            <%} %>--%>
        </td>
        <%--  <td>
            <%: item.BranchCode %>
        </td>--%>
    </tr>
    <% }
            }
        }
        else
        { %>
    <tr>
        <td colspan="11">
            <div class="NoRecordFound">
                No Record Found.
            </div>
        </td>
    </tr>
    <%} %>
</table>
