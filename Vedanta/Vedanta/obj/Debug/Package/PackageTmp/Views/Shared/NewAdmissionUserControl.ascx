<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IEnumerable<Vedanta.Models.vw_Admissions>>" %>
<table class="GridView" id="tblSearch">
    <tr>
        <th>
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
        <th>
            Reg. Number
        </th>
        <th>
            Course
        </th>
        <th>
            Name
        </th>
        <th>
            Father Name
        </th>
        <th>
            Admission Date
        </th>
        <th>
            Batch Time
        </th>
        <th>
            Collection
        </th>
        <th>
            Next Due Date
        </th>
        <th>
            Due Amount
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
            <a href="/Students/EditAdmission/<%: item.Id%>">
                <img src="../../images/pencil-icon.png" id="imgEditEmployee_<%: item.Id%>" alt=""
                    title="Edit" style="border-style: none;" /></a>
        </td>
        <%if (!Roles.IsUserInRole("CenterManager"))
          { %>
        <td>
            <%: item.BranchCode%>
            <%if (Roles.IsUserInRole("SuperAdmin"))
              {%><br />
            (
            <%:item.ClientId%>)
            <%} %>
        </td>
        <%}%>
        <td>
            <%: item.RegistrationNumber%>
        </td>
        <td>
            <%: item.CourseCode%>
        </td>
        <td>
            <%: item.FirstName%>&nbsp;<%: item.MiddleName%>&nbsp;<%: item.LastName%>
        </td>
        <td>
            <%: item.FatherName%>
        </td>
        <td>
            <%: String.Format("{0:dd/MM/yyyy}", item.AdmissionDate)%>
        </td>
        <td>
            <%:item.BatchStartTime%>
            -<br />
            <%:item.BatchEndTime%>
        </td>
        <td>
            <%:  String.Format("{0:0.00}", item.FeeCollected)%>
        </td>
        <td>
            <%:String.Format("{0:dd/MM/yyyy}", item.NextPaymentDueDate)%>
        </td>
        <td>
            <%:  String.Format("{0:0.00}", ((item.CourseFees ?? 0) - (item.FeeCollected ?? 0)))%>
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
