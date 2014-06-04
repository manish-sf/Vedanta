<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IEnumerable<Vedanta.Models.vw_Employees>>" %>
<script>
    function deleteEmployee(eId) {
        alert(eId);
        $.ajax({
            type: "POST",
            url: "/Employee/Delete/",
            data: { "searchText": '', "idToDelete": eId },
            success: function (data) {
                //$('#divSearchResult').html(data.Name);
                //                        $("#divSearchResult").html('');
                //                        $.each(data, function () {
                //                            $("#divSearchResult").append('<br>' + this.Name);
                //                        });
                //                        //alert(data.length);
                //                        if (data.length > 0)
                //                            $("#divSearchResult").show();
                alert("employee deleted sucessfully");
                $("#searchResult").html(data);
            },
            failure: function (response) {
                alert(response);
            }
        });
    }

</script>
<table class="GridView" id="tblSearch">
    <tr>
        <th>
            <%if (Roles.IsUserInRole("SuperAdmin"))
              {%>
            Client<%} %>
        </th>
        <th>
            Id
        </th>
        <th>
            Name
        </th>
        <th>
            DOB
        </th>
        <th>
            Gender
        </th>
        <th>
            Father Name
        </th>
        <th>
            Address
        </th>
        <th>
            Designation
        </th>
        <th>
            Joining Date
        </th>
        <th>
            Branch
        </th>
    </tr>
    <% if (Model != null && Model.Count() > 0)
       {
           foreach (var item in Model)
           {
               if (item.IsBranchActive == true || Roles.IsUserInRole("SuperAdmin"))
               { %>
    <tr>
        <td>
            <%if (Roles.IsUserInRole("SuperAdmin"))
              {%>
            <%:item.ClientId%>
            <%}
              else
              { %>
            <a href="/Employee/Edit/<%: item.EmployeeId%>">
                <img src="../../images/pencil-icon.png" id="imgEditEmployee_<%: item.EmployeeId%>"
                    alt="" title="Edit" style="border-style: none;" /></a><img src="../../images/del.png"
                        id="imgEmpDelete_<%: item.EmployeeId%>" alt="" title="Delete" style="border-style: none;
                        cursor: pointer;" onclick="deleteEmployee('<%: item.EmployeeId%>')" />
            <%} %>
        </td>
        <td>
            <%: item.EmployeeId%>
        </td>
        <td>
            <%: item.FirstName%>&nbsp;<%: item.MiddleName%>&nbsp;<%: item.LastName%>
        </td>
        <td>
            <%: String.Format("{0:MM/dd/yyy}", item.DOB)%>
        </td>
        <td>
            <%: item.Gender%>
        </td>
        <td>
            <%: item.FatherName%>
        </td>
        <td>
            <%: item.Street%><br />
            <%: item.Street2%>
            <br />
            <%: item.City%>&nbsp;<%: item.State%>&nbsp;<%: item.Country%>&nbsp;<%: item.Zip%><br />
            <%: item.Phone%>&nbsp;<%: item.Mobile%><br />
            <%: item.Email%>
        </td>
        <td>
            <%: item.RankName%>
        </td>
        <td>
            <%: String.Format("{0:MM/dd/yyy}", item.JoiningDate)%>
        </td>
        <td>
            <%if (item.BranchId != null)
              { %>
            <%: item.BranchName%>
            <%} %>
        </td>
    </tr>
    <% }
           }
       }
       else
       { %>
    <tr>
        <td colspan="10">
            <div class="NoRecordFound">
                No Record Found.
            </div>
        </td>
    </tr>
    <%} %>
</table>
