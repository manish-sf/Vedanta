<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Vedanta.Models.NewAdmission>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    New Addmission
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript" language="javascript">
        $(document).ready(function () {
            jQuery(document).ajaxStart(function () {
                $("#divLoading").dialog('open');
                //$("#divLoading").show();
                // alert("it begins");
            })
            jQuery(document).ajaxStop(function () {
                // $("#divLoading").hide();
                $("#divLoading").dialog('close');
            })

            $(".ui-dialog-titlebar").hide();
        });

        $(function () {
            $("#divLoading").dialog('destroy').dialog({
                autoOpen: false,
                width: 500, height: 100,
                title: '<span style="color:#fff">lOADING</span>',
                modal: true,
                closeOnEscape: false
            });
        });


        function clearFileInput() {
            var newPreview = document.getElementById("photo-box");
            newPreview.style.display = 'block';
            var newimgLogo = document.getElementById("imgThumbnail2");
            newimgLogo.style.display = 'none';
            newimgLogo.value = "";
            var fuLogo = document.getElementById("photo-box");
            fuLogo.parentNode.innerHTML = fuLogo.parentNode.innerHTML;
            $("#lblerror").hide();
        };

        function ChangeImage(fileId, imageId) {
            var myform = document.createElement("form");
            myform.style.display = "none";
            myform.action = "/ImagePreview/AjaxSubmit";
            myform.enctype = "multipart/form-data";
            myform.method = "post";
            var imageLoad;
            var imageLoadParent;
            var is_chrome = /chrome/.test(navigator.userAgent.toLowerCase());
            if (is_chrome && document.getElementById(fileId).value == '')
                return; //Chrome bug onchange cancel
            if (document.all || is_chrome) {//IE
                imageLoad = document.getElementById(fileId);
                imageLoadParent = document.getElementById(fileId).parentNode;
                myform.appendChild(imageLoad);
                document.body.appendChild(myform);
            }
            else {//FF
                imageLoad = document.getElementById(fileId).cloneNode(true);
                myform.appendChild(imageLoad);
                document.body.appendChild(myform);
            }

            $(myform).ajaxSubmit({ success:
                    function (responseText) {
                        var d = new Date();
                        $(imageId)[0].src = "/ImagePreview/ImageLoad?a=".mce_src = "/ImagePreview/ImageLoad?a=" + d.getMilliseconds();
                        var newPhoto = document.getElementById("imgThumbnail2");
                        if (document.all || is_chrome)//IE
                            imageLoadParent.appendChild(myform.firstChild);
                        else//FF                     
                            document.body.removeChild(myform);
                        newPhoto.style.display = 'block';
                        // var divNoPhoto = document.getElementById("emptyLogo");
                        // divNoPhoto.style.display = 'none';
                    }
            });

        }

        function DoPreview() {

            img = document.getElementById("agentPhoto");
            var filename = $("#agentPhoto").val();
            //  fileinput = document.input.File;
            if (img && filename)
                img.src = filename.toString();
            //            var filename = $("#agentPhoto").val();
            //            var Img = new Image();
            //            Img.src = filename + "?" + (new Date()).getTime();
            //            //$("#imgThumbnail2").src = Img.src;
            //            //Img.src = fileName + "?" + (new Date()).getTime();
            //            $("#imgThumbnail2").attr("src", filename);
        }

        function fillBranchCourses() {
            $.ajax({
                type: "POST",
                url: "/Helper/GetCourseListByBranchId/",
                data: { "branchId": $("#BranchId").val() },
                success: function (data) {
                    populateDropdown($("#CourseId"), data);
                },
                failure: function (response) {
                    alert(response);
                }
            });

        }

        function getCurrentAge() {
            var dob = $('#DOB').val();
            dob = new Date(dob);
            if (dob != '') {
                var today = new Date();
                var age = Math.floor((today - dob) / (365.25 * 24 * 60 * 60 * 1000));
                //var dayDiff = Math.ceil(today - dob) / (1000 * 60 * 60 * 24 * 365);
                //alert("today:" + today + "age:" + age);
                // var age = parseInt(dayDiff);
                $('#txtAge').val(age);
            }
        }

      
    </script>
    <style>
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
        #spnUserAvailable
        {
            display: none;
            color: #5bb215;
            padding-left: 20px;
            background: url("../../images/tick_16.png") no-repeat;
            vertical-align: middle;
            margin-left: 5px;
        }
        #spnUserBooked
        {
            display: none;
            color: Red;
            padding-left: 20px;
            background: url("../../images/cross_16.png") no-repeat;
            vertical-align: middle;
            margin-left: 5px;
        }
    </style>
    <div class="pageTitle">
        <div class="pageHeader">
            <h2>
                New Addmission</h2>
        </div>
        <div class="pageLink">
            <a href="/Students/List">
                <img src="../../Images/list.png" alt="" title="Employee List" /></a>
            <%--  <%: Html.ActionLink("Go to Employee List", "List") %>--%>
        </div>
    </div>
    <% string admissionDisplay = "style='display:none'";
       string studentDisplay = string.Empty;
        //  Vedanta.Models.Admissions newAddmission = null;// new Vedanta.Models.Admissions();
    %>
    <%if (ViewData["Next"] != null)
      {
          if ((bool)ViewData["Next"] == true)
          {
              admissionDisplay = string.Empty;
              studentDisplay = "style='display:none'";
          }

      } %>
    <div id="Mainpg">
        <% Vedanta.Models.ApplicationMessages msg = new Vedanta.Models.ApplicationMessages();
           if (ViewData["Message"] != null)
           {
               msg = ViewData["Message"] as Vedanta.Models.ApplicationMessages;
          
        %>
        <div class="divMessage" style="width: 100%; height: 25px; background-color: Gray;
            color: Yellow;">
            <%: msg.MessageText %>
        </div>
        <%} %>
        <%--  <% using (Html.BeginForm())
           {%>--%>
        <% using (Html.BeginForm("New", "Students", FormMethod.Post, new { @id = "frmCreateStudent", enctype = "multipart/form-data" }))
           {%>
        <%: Html.ValidationSummary(true) %>
        <p style="margin: 0px; padding-top: 10px; text-align: right;">
            <span class="required">*</span>(Asterisk) indicates required fields</p>
        <div id="divAdmission">
            <table class="mainTable" border="0">
                <tr>
                    <td colspan="2" class="blankCell">
                        <legend>Admission Details</legend>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%: Html.LabelFor(model => model.NewAdm.RegistrationNumber) %><span class="required">*</span><br />
                        <%: Html.TextBoxFor(model => model.NewAdm.RegistrationNumber, new { @maxlength = 50, @onblur = "CheckRegistrationAvailability()" })%><br />
                        <%--<span id="spnUserAvailable">Congratulation! Registration Number is Valid.</span>--%><span
                            id="spnUserBooked">Sorry! Registration Number is already exists. try with new Registration
                            Number. </span>
                        <%: Html.ValidationMessageFor(model => model.NewAdm.RegistrationNumber)%>
                    </td>
                    <td>
                        <%: Html.LabelFor(model => model.NewAdm.RollNumber) %><span class="required">*</span><br />
                        <%: Html.TextBoxFor(model => model.NewAdm.RollNumber)%>
                        <%: Html.ValidationMessageFor(model => model.NewAdm.RollNumber)%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%: Html.LabelFor(model => model.NewAdm.CourseId) %><span class="required">*</span><br />
                        <%:Html.DropDownListFor(model => model.NewAdm.CourseId, (IEnumerable<SelectListItem>)ViewData["Courses"], "Select", new { @class = "selectNone", @id = "CourseId", onchange = "setCourseFee()" })%>
                        <%: Html.ValidationMessageFor(model => model.NewAdm.CourseId)%>
                    </td>
                    <td>
                        Course Fee Rs.<br />
                        <span id="spnCourseFee"></span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%: Html.LabelFor(model => model.NewAdm.AdmissionDate) %><span class="required">*</span><br />
                        <%: Html.TextBoxFor(model => model.NewAdm.AdmissionDate, new { @class = "datepicker" })%>
                        <%: Html.ValidationMessageFor(model => model.NewAdm.AdmissionDate)%>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%: Html.LabelFor(model => model.NewAdm.BatchId) %><br />
                        <%:Html.DropDownListFor(model => model.NewAdm.BatchId, (IEnumerable<SelectListItem>)ViewData["Batches"], "Select", new { @class = "selectNone", @id = "BatchId" })%>
                        <%: Html.ValidationMessageFor(model => model.NewAdm.BatchId)%>
                    </td>
                    <td>
                        <%: Html.LabelFor(model => model.NewAdm.BatchStartDate) %><br />
                        <%: Html.TextBoxFor(model => model.NewAdm.BatchStartDate, new { @class = "datepicker" })%>
                        <%: Html.ValidationMessageFor(model => model.NewAdm.BatchStartDate)%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%: Html.LabelFor(model => model.NewAdm.IsComputerKnown) %><br />
                        <%:Html.DropDownListFor(model => model.NewAdm.IsComputerKnown, (IEnumerable<SelectListItem>)ViewData["YesNo"], "Select", new { @class = "selectNone", @id = "IsComputerKnownId" })%>
                        <%: Html.ValidationMessageFor(model => model.NewAdm.IsComputerKnown)%>
                    </td>
                    <td>
                        <%: Html.LabelFor(model => model.NewAdm.ComputerKnowledgeLevelId) %><br />
                        <%:Html.DropDownListFor(model => model.NewAdm.ComputerKnowledgeLevelId, (IEnumerable<SelectListItem>)ViewData["ComputerKnoledgeLevels"], "Select", new { @class = "selectNone", @id = "ComputerKnoledgeLevelsId" })%>
                        <%: Html.ValidationMessageFor(model => model.NewAdm.ComputerKnowledgeLevelId)%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%: Html.LabelFor(model => model.NewAdm.ComputerInterestId) %><br />
                        <%:Html.DropDownListFor(model => model.NewAdm.ComputerInterestId, (IEnumerable<SelectListItem>)ViewData["ComputerInterests"], "Select", new { @class = "selectNone", @id = "ComputerInterestId" })%>
                        <%: Html.ValidationMessageFor(model => model.NewAdm.ComputerInterestId)%>
                    </td>
                    <td>
                        <%: Html.LabelFor(model => model.NewAdm.HowToKnowAboutUsId) %><br />
                        <%:Html.DropDownListFor(model => model.NewAdm.HowToKnowAboutUsId, (IEnumerable<SelectListItem>)ViewData["HowToKnowAboutUs"], "Select", new { @class = "selectNone", @id = "HowToKnowAboutUsId" })%>
                        <%: Html.ValidationMessageFor(model => model.NewAdm.HowToKnowAboutUsId)%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%: Html.LabelFor(model => model.NewAdm.NeedJobAssistance) %><br />
                        <%:Html.DropDownListFor(model => model.NewAdm.NeedJobAssistance, (IEnumerable<SelectListItem>)ViewData["YesNo"], "Select", new { @class = "selectNone", @id = "NeedJobAssistanceId" })%>
                        <%: Html.ValidationMessageFor(model => model.NewAdm.NeedJobAssistance)%>
                    </td>
                    <td>
                        <%: Html.LabelFor(model => model.NewAdm.Location) %><br />
                        <%: Html.TextBoxFor(model => model.NewAdm.Location, new { @maxlength = 50 })%>
                        <%: Html.ValidationMessageFor(model => model.NewAdm.Location)%>
                    </td>
                </tr>
            </table>
        </div>
        <div id="StudentDetails" <%=studentDisplay %>>
            <table class="mainTable" border="0">
                <tr>
                    <td colspan="3" class="blankCell">
                        <legend>Student Details</legend>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <div>
                            <div id="photo-box">
                                <img src="../../images/image-not-available.png" alt="" id="imgThumbnail2" style="height: 100px;
                                    width: 100px; padding: 5px;" /></div>
                            <div id="uploadImage">
                                <h2>
                                    Upload Image<%= Html.ValidationMessage("agentPhoto", "*")%></h2>
                                <span id="divAgentPhoto">
                                    <input id="agentPhoto" type="file" name="agentPhoto" style="padding: 5px; width: 300px"
                                        onchange="ChangeImage('agentPhoto','#imgThumbnail2')" />
                                    &nbsp;<br />
                                    <input type="button" name="resetLogo" value="Reset Image" id="btnReset" onclick="clearFileInput()" />
                                    <br />
                                    Only jpg, jpeg, gif and png file formats are allowed. </span>
                            </div>
                        </div>
                    </td>
                </tr>
                <%if (!Roles.IsUserInRole("CenterManager") && ViewData["Branches"] != null)
                  { %>
                <tr>
                    <td colspan="3">
                        <%: Html.LabelFor(model => model.NewStudent.BranchId) %><span class="required">*</span><br />
                        <%:Html.DropDownListFor(model => model.NewStudent.BranchId, (IEnumerable<SelectListItem>)ViewData["Branches"], "Select", new { @class = "selectNone", @id = "BranchId", onchange="fillBranchCourses()" })%>
                        <%: Html.ValidationMessageFor(model => model.NewStudent.BranchId) %>
                    </td>
                </tr>
                <%} %>
                <tr>
                    <td>
                        <%: Html.LabelFor(model => model.NewStudent.FirstName)%><span class="required">*</span>
                        <br />
                        <%: Html.TextBoxFor(model => model.NewStudent.FirstName, new {@maxlength=50 })%>
                        <%: Html.ValidationMessageFor(model => model.NewStudent.FirstName, "First Name is required")%>
                    </td>
                    <td>
                        <%: Html.LabelFor(model => model.NewStudent.MiddleName)%>
                        <br />
                        <%: Html.TextBoxFor(model => model.NewStudent.MiddleName, new { @maxlength = 50 })%>
                        <%: Html.ValidationMessageFor(model => model.NewStudent.MiddleName)%>
                    </td>
                    <td>
                        <%: Html.LabelFor(model => model.NewStudent.LastName)%>
                        <br />
                        <%: Html.TextBoxFor(model => model.NewStudent.LastName, new { @maxlength = 50 })%>
                        <%: Html.ValidationMessageFor(model => model.NewStudent.LastName)%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%: Html.LabelFor(model => model.NewStudent.Gender)%><span class="required">*</span>
                        <br />
                        <%:Html.DropDownListFor(model => model.NewStudent.Gender, (IEnumerable<SelectListItem>)ViewData["Genders"], "Select", new { @class = "selectNone", @id = "GenderId" })%>
                        <br />
                        <%: Html.ValidationMessageFor(model => model.NewStudent.Gender, "Gender is required")%>
                    </td>
                    <td colspan="2">
                        <%: Html.LabelFor(model => model.NewStudent.MaritalStatusId)%><span class="required">*</span>
                        <br />
                        <%:Html.DropDownListFor(model => model.NewStudent.MaritalStatusId, (IEnumerable<SelectListItem>)ViewData["MaritalStstus"], "Select", new { @class = "selectNone", @id = "MaritalStatusId" })%>
                        <br />
                        <%: Html.ValidationMessageFor(model => model.NewStudent.MaritalStatusId, "Marital Status is required")%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%: Html.LabelFor(model => model.NewStudent.DOB)%>
                        <br />
                        <%: Html.TextBoxFor(model => model.NewStudent.DOB, new { @class = "datepicker" ,@id="DOB",@onchange="getCurrentAge()"})%>
                        <%: Html.ValidationMessageFor(model => model.NewStudent.DOB)%>
                    </td>
                    <td colspan="2">
                        <%: Html.LabelFor(model => model.NewStudent.Age)%>
                        <br />
                        <%: Html.TextBoxFor(model => model.NewStudent.Age, new {@id="txtAge" })%>
                        <%: Html.ValidationMessageFor(model => model.NewStudent.Age)%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%: Html.LabelFor(model => model.NewStudent.FatherName)%><br />
                        <%: Html.TextBoxFor(model => model.NewStudent.FatherName, new { @maxlength = 100 })%>
                        <%: Html.ValidationMessageFor(model => model.NewStudent.FatherName)%>
                    </td>
                    <td colspan="2">
                        <%: Html.LabelFor(model => model.NewStudent.MotherName)%>
                        <br />
                        <%: Html.TextBoxFor(model => model.NewStudent.MotherName, new { @maxlength = 100 })%>
                        <%: Html.ValidationMessageFor(model => model.NewStudent.MotherName)%>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <%: Html.LabelFor(model => model.NewStudent.Street)%><span class="required">*</span>
                        <br />
                        <%: Html.TextAreaFor(model => model.NewStudent.Street, new {@maxlength = 100, @style = "width:85%;min-width:500px;height:50px;",@col="80",@row="5" })%>
                        <%: Html.ValidationMessageFor(model => model.NewStudent.Street, "Street Address is required")%>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <%: Html.LabelFor(model => model.NewStudent.Street2)%><br />
                        <%: Html.TextAreaFor(model => model.NewStudent.Street2, new {@maxlength = 100, @style = "width:85%;min-width:500px;height:50px;", @col = "80", @row = "5" })%>
                        <%: Html.ValidationMessageFor(model => model.NewStudent.Street2)%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%: Html.LabelFor(model => model.NewStudent.City) %><span class="required">*</span>
                        <br />
                        <%: Html.TextBoxFor(model => model.NewStudent.City, new { @maxlength = 50 })%>
                        <%: Html.ValidationMessageFor(model => model.NewStudent.City, "City is required")%>
                    </td>
                    <td>
                        <%: Html.LabelFor(model => model.NewStudent.CountryId) %><br />
                        <%:Html.DropDownListFor(model => model.NewStudent.CountryId, (IEnumerable<SelectListItem>)ViewData["Countries"], "Select", new { @class = "selectNone", @id = "CountryId", onchange = "fillSelectedCountryStateList()" })%>
                        <%: Html.ValidationMessageFor(model => model.NewStudent.CountryId) %>
                    </td>
                    <td>
                        <%: Html.LabelFor(model => model.NewStudent.StateId) %><span class="required">*</span>
                        <br />
                        <%:Html.DropDownListFor(model => model.NewStudent.StateId, (IEnumerable<SelectListItem>)ViewData["States"], "Select", new { @class = "selectNone", @id = "StateId" })%>
                        <%: Html.ValidationMessageFor(model => model.NewStudent.StateId, "State is required")%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%: Html.LabelFor(model => model.NewStudent.Zip) %>
                        <br />
                        <%: Html.TextBoxFor(model => model.NewStudent.Zip, new { @maxlength = 6 })%>
                        <%: Html.ValidationMessageFor(model => model.NewStudent.Zip) %>
                    </td>
                    <td>
                        <%: Html.LabelFor(model => model.NewStudent.Phone) %>
                        <br />
                        <%: Html.TextBoxFor(model => model.NewStudent.Phone, new { @maxlength = 15 })%>
                        <%: Html.ValidationMessageFor(model => model.NewStudent.Phone) %>
                    </td>
                    <td>
                        <%: Html.LabelFor(model => model.NewStudent.Cell)%>
                        <br />
                        <%: Html.TextBoxFor(model => model.NewStudent.Cell, new { @maxlength = 15 })%>
                        <%: Html.ValidationMessageFor(model => model.NewStudent.Cell)%>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <%: Html.LabelFor(model => model.NewStudent.Email) %><br />
                        <%: Html.TextBoxFor(model => model.NewStudent.Email, new { @maxlength = 100,@style="width:400px;" })%>
                        <%: Html.ValidationMessageFor(model => model.NewStudent.Email) %>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%: Html.LabelFor(model => model.NewStudent.NationalityId) %><br />
                        <%:Html.DropDownListFor(model => model.NewStudent.NationalityId, (IEnumerable<SelectListItem>)ViewData["Nationalities"], "Select", new { @class = "selectNone", @id = "NationalityId" })%>
                        <%: Html.ValidationMessageFor(model => model.NewStudent.NationalityId)%>
                    </td>
                    <td>
                        <%: Html.LabelFor(model => model.NewStudent.ReligionId) %><br />
                        <%:Html.DropDownListFor(model => model.NewStudent.ReligionId, (IEnumerable<SelectListItem>)ViewData["Religions"], "Select", new { @class = "selectNone", @id = "ReligionId" })%>
                        <%: Html.ValidationMessageFor(model => model.NewStudent.ReligionId)%>
                    </td>
                    <td>
                        <%: Html.LabelFor(model => model.NewStudent.Mothertoungue) %><br />
                        <%: Html.TextBoxFor(model => model.NewStudent.Mothertoungue  ,new { @maxlength = 50}) %>
                        <%: Html.ValidationMessageFor(model => model.NewStudent.Mothertoungue) %>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%: Html.LabelFor(model => model.NewStudent.PAN) %><br />
                        <%: Html.TextBoxFor(model => model.NewStudent.PAN, new { @maxlength = 50 })%>
                        <%: Html.ValidationMessageFor(model => model.NewStudent.PAN) %>
                    </td>
                    <td>
                        <%: Html.LabelFor(model => model.NewStudent.PassportNo) %><br />
                        <%: Html.TextBoxFor(model => model.NewStudent.PassportNo, new { @maxlength = 50 })%>
                        <%: Html.ValidationMessageFor(model => model.NewStudent.PassportNo) %>
                    </td>
                    <td>
                        <%: Html.LabelFor(model => model.NewStudent.UIDNo) %><br />
                        <%: Html.TextBoxFor(model => model.NewStudent.UIDNo, new { @maxlength = 50 })%>
                        <%: Html.ValidationMessageFor(model => model.NewStudent.UIDNo) %>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%: Html.LabelFor(model => model.NewStudent.QualificationId) %><br />
                        <%:Html.DropDownListFor(model => model.NewStudent.QualificationId, (IEnumerable<SelectListItem>)ViewData["Qualifications"], "Select", new { @class = "selectNone", @id = "QualificationId" })%>
                        <%: Html.ValidationMessageFor(model => model.NewStudent.QualificationId) %>
                    </td>
                    <td>
                        <%: Html.LabelFor(model => model.NewStudent.FamilyIncomeSlotId) %><br />
                        <%:Html.DropDownListFor(model => model.NewStudent.FamilyIncomeSlotId, (IEnumerable<SelectListItem>)ViewData["FamilyIncomeSlots"], "Select", new { @class = "selectNone", @id = "FamilyIncomeSlotId" })%>
                        <%: Html.ValidationMessageFor(model => model.NewStudent.FamilyIncomeSlotId) %>
                    </td>
                    <td>
                        <%: Html.LabelFor(model => model.NewStudent.OccupationId) %><br />
                        <%:Html.DropDownListFor(model => model.NewStudent.OccupationId, (IEnumerable<SelectListItem>)ViewData["Occupations"], "Select", new { @class = "selectNone", @id = "OccupationId" })%>
                        <%: Html.ValidationMessageFor(model => model.NewStudent.OccupationId) %>
                    </td>
                </tr>
            </table>
            <%--  <p>
                <input type="submit" value="Next>>" name="Submit" id="next" />
            </p>--%>
        </div>
        <%--    <%=admissionDisplay %>--%>
        <div id="AddmissionDetails">
            <table class="mainTable" border="0">
                <tr>
                    <td colspan="2" class="blankCell">
                        <legend>Payment Details</legend>
                    </td>
                </tr>
                <tr>
                    <td>
                        Pay Full Payment One Time
                    </td>
                    <td>
                        <input type="checkbox" id="chkFeeOneTime" name="chkFeeOneTime" title="">
                    </td>
                </tr>
                <tr>
                    <td>
                        <%: Html.LabelFor(model => model.NewAdm.DownPayment) %><span class="required">*</span><br />
                        <%: Html.TextBoxFor(model => model.NewAdm.DownPayment, new {@id="DownPayment" })%>
                        <%: Html.ValidationMessageFor(model => model.NewAdm.DownPayment)%>
                    </td>
                    <td>
                        <%: Html.LabelFor(model => model.NewAdm.MaximumDiscountAmount) %><br />
                        <%: Html.TextBoxFor(model => model.NewAdm.MaximumDiscountAmount, new { @id = "MaximumDiscountAmount" })%>
                        <%: Html.ValidationMessageFor(model => model.NewAdm.MaximumDiscountAmount)%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%: Html.LabelFor(model => model.NewAdm.PaymentModeId)%><span class="required">*</span><br />
                        <%:Html.DropDownListFor(model => model.NewAdm.PaymentModeId, (IEnumerable<SelectListItem>)ViewData["PaymentModes"], "Select", new { @class = "selectNone", @id = "PaymentModeId" })%>
                        <%: Html.ValidationMessageFor(model => model.NewAdm.PaymentModeId)%>
                    </td>
                    <td>
                        <%: Html.LabelFor(model => model.NewAdm.Description)%><br />
                        <%: Html.TextBoxFor(model => model.NewAdm.Description, new { @maxlength = 50 })%>
                        <%: Html.ValidationMessageFor(model => model.NewAdm.Description)%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%: Html.LabelFor(model => model.NewAdm.ManualReceiptNumber)%><span class="required">*</span><br />
                        <%: Html.TextBoxFor(model => model.NewAdm.ManualReceiptNumber, new { @maxlength = 50 })%>
                        <%: Html.ValidationMessageFor(model => model.NewAdm.ManualReceiptNumber)%>
                    </td>
                    <td>
                        <%: Html.LabelFor(model => model.NewAdm.NextPaymentDueDate) %><br />
                        <%: Html.TextBoxFor(model => model.NewAdm.NextPaymentDueDate, new { @class = "datepicker" })%>
                        <%: Html.ValidationMessageFor(model => model.NewAdm.NextPaymentDueDate)%>
                    </td>
                </tr>
            </table>
            <p>
                <input type="submit" value="Submit" name="Submit" id="submit" />
            </p>
        </div>
        <% } %>
    </div>
    <div id="divLoading" style="width: 100px; height: 30px; vertical-align: middle; padding-top: 20px;
        background-color: #f5f5f5; color: Black; border: 1px solid #79797a; text-align: center;
        display: none;" class="noprint">
        Please wait. Operation Under Process.
        <br />
        <img src="../../images/ajax-loader.gif" />
    </div>
</asp:Content>
