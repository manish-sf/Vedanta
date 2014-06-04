
function CheckUserAvailability() {
    $.ajax({
        type: "POST",
        url: "/Helper/isUserNameExits/",
        data: { "id": $('#UserName').val() },
        success: function (data) {
            //populateDropdown($("#BranchId"), data);
            //alert(data);
            if (data != null && data != undefined) {
                if (data == false) {
                    $("#spnUserAvailable").show();
                    $("#spnUserBooked").hide();
                }
                else {
                    $("#spnUserAvailable").hide();
                    $("#spnUserBooked").show();
                }
            }
            // $("#divEmpDetails").html(data.Name + "<br/> " + data.Designation + "<br/>" + data.Branch + " " + data.City + " " + data.State);
        },
        failure: function (response) {
            alert(response);
        }
    });
}

function getEmployeeDetails() {
    $.ajax({
        type: "POST",
        url: "/Helper/GetEmployeeByEmployeeId/",
        data: { "id": $('#EmployeeId').val() },
        success: function (data) {
            //populateDropdown($("#BranchId"), data);
            // alert(data.Name);
            $("#divEmpDetails").html(data.Name + "<br/> " + data.Designation + "<br/>" + data.Branch + " " + data.City + " " + data.State);
        },
        failure: function (response) {
            alert(response);
        }
    });
}

function setCourseFee() {
    $.ajax({
        type: "POST",
        url: "/Helper/GetCourseFeeByCourseId/",
        data: { "courseId": $('#CourseId option:selected').val() },
        success: function (data) {
            //alert(data.MaximumDiscountAmount + ',' + data.MinimumDownPayment);
            if (data != null && data != undefined) {
                $("#spnCourseFee").text(data.CourseFees);
                $("#MaximumDiscountAmount").val(data.MaximumDiscountAmount);
                $("#DownPayment").val(data.MinimumDownPayment);
            }
            else {
                $("#spnCourseFee").text('');
                $("#MaximumDiscountAmount").val('');
                $("#DownPayment").val('');
            }
        },
        failure: function (response) {
            alert(response);
            $("#spnCourseFee").text('');
            $("#MaximumDiscountAmount").val('');
            $("#DownPayment").val('');
        }
    });
}



function fillSelectedCountryStateList() {
    $.ajax({
        type: "POST",
        url: "/Helper/GetStateListByCountryId/",
        data: { "id": $('#CountryId option:selected').val() },
        success: function (data) {
            populateDropdown($("#StateId"), data);
        },
        failure: function (response) {
            alert(response);
        }
    });
}


function fillSelectedZoneRegionList() {
    $.ajax({
        type: "POST",
        url: "/Helper/GetRegionListByZoneId/",
        data: { "id": $('#ZoneId option:selected').val() },
        success: function (data) {
            populateDropdown($("#RegionId"), data);
        },
        failure: function (response) {
            alert(response);
        }
    });
}

function CheckRegistrationAvailability() {

    $.ajax({
        type: "POST",
        url: "/Helper/isRegistrationNumberExits/",
        data: { "id": $('#NewAdm_RegistrationNumber').val() },
        success: function (data) {
            //populateDropdown($("#BranchId"), data);
            //alert(data);
            if (data != null && data != undefined) {
                if (data == false) {
                    // $("#spnUserAvailable").hide();
                    $("#spnUserBooked").hide();
                }
                else {
                    // $("#spnUserAvailable").show();
                    $("#spnUserBooked").show();
                }
            }
            // $("#divEmpDetails").html(data.Name + "<br/> " + data.Designation + "<br/>" + data.Branch + " " + data.City + " " + data.State);
        },
        failure: function (response) {
            alert(response);
        }
    });
}

function fillSelectedRegionBranchList() {
    $.ajax({
        type: "POST",
        url: "/Helper/GetBranchListByRegionId/",
        data: { "id": $('#RegionId option:selected').val() },
        success: function (data) {
            populateDropdown($("#BranchId"), data);
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
