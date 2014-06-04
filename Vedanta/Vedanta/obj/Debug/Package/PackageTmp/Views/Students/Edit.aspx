<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Vedanta.Models.Students>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit Student Details
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
    </style>
    <div class="pageTitle">
        <div class="pageHeader">
            <h2>
                Edit Student Details</h2>
        </div>
        <div class="pageLink">
            <a href="/Students/List">
                <img src="../../Images/list.png" alt="" title="Student List" /></a>
        </div>
    </div>
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
        <% using (Html.BeginForm("Edit", "Students", FormMethod.Post, new { @id = "frmEditStudent", enctype = "multipart/form-data" }))
           {%>
        <%: Html.ValidationSummary(true) %>
        <p style="margin: 0px; padding-top: 10px; text-align: right;">
            <span class="required">*</span>(Asterisk) indicates required fields</p>
        <div id="StudentDetails">
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
                <%if (!Roles.IsUserInRole("CenterManager") && ViewData["Branchs"] != null)
                  { %>
                <tr>
                    <td colspan="3">
                        <%: Html.LabelFor(model => model.BranchId) %><span class="required">*</span><br />
                        <%:Html.DropDownListFor(model => model.BranchId, (IEnumerable<SelectListItem>)ViewData["Branchs"], "Select", new { @class = "selectNone", @id = "BranchId", onchange="fillBranchCourses()" })%>
                        <%: Html.ValidationMessageFor(model => model.BranchId) %>
                    </td>
                </tr>
                <%} %>
                <tr>
                    <td>
                        <%: Html.LabelFor(model => model.FirstName)%><span class="required">*</span>
                        <br />
                        <%: Html.TextBoxFor(model => model.FirstName)%>
                        <%: Html.ValidationMessageFor(model => model.FirstName, "First Name is required")%>
                    </td>
                    <td>
                        <%: Html.LabelFor(model => model.MiddleName)%>
                        <br />
                        <%: Html.TextBoxFor(model => model.MiddleName)%>
                        <%: Html.ValidationMessageFor(model => model.MiddleName)%>
                    </td>
                    <td>
                        <%: Html.LabelFor(model => model.LastName)%>
                        <br />
                        <%: Html.TextBoxFor(model => model.LastName)%>
                        <%: Html.ValidationMessageFor(model => model.LastName)%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%: Html.LabelFor(model => model.Gender)%><span class="required">*</span>
                        <br />
                        <%:Html.DropDownListFor(model => model.Gender, (IEnumerable<SelectListItem>)ViewData["Genders"], "Select", new { @class = "selectNone", @id = "GenderId" })%>
                        <br />
                        <%: Html.ValidationMessageFor(model => model.Gender, "Gender is required")%>
                    </td>
                    <td colspan="2">
                        <%: Html.LabelFor(model => model.MaritalStatusId)%><span class="required">*</span>
                        <br />
                        <%:Html.DropDownListFor(model => model.MaritalStatusId, (IEnumerable<SelectListItem>)ViewData["MaritalStstus"], "Select", new { @class = "selectNone", @id = "MaritalStatusId" })%>
                        <br />
                        <%: Html.ValidationMessageFor(model => model.MaritalStatusId, "Marital Status is required")%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%: Html.LabelFor(model => model.DOB)%>
                        <br />
                        <%: Html.TextBoxFor(model => model.DOB, new { @class = "datepicker" ,@id="DOB",@onchange="getCurrentAge()"})%>
                        <%: Html.ValidationMessageFor(model => model.DOB)%>
                    </td>
                    <td colspan="2">
                        <%: Html.LabelFor(model => model.Age)%>
                        <br />
                        <%: Html.TextBoxFor(model => model.Age, new {@id="txtAge" })%>
                        <%: Html.ValidationMessageFor(model => model.Age)%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%: Html.LabelFor(model => model.FatherName)%><br />
                        <%: Html.TextBoxFor(model => model.FatherName)%>
                        <%: Html.ValidationMessageFor(model => model.FatherName)%>
                    </td>
                    <td colspan="2">
                        <%: Html.LabelFor(model => model.MotherName)%>
                        <br />
                        <%: Html.TextBoxFor(model => model.MotherName)%>
                        <%: Html.ValidationMessageFor(model => model.MotherName)%>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <%: Html.LabelFor(model => model.Street)%><span class="required">*</span>
                        <br />
                        <%: Html.TextAreaFor(model => model.Street, new { @style = "width:85%;min-width:500px;height:50px;",@col="80",@row="5" })%>
                        <%: Html.ValidationMessageFor(model => model.Street, "Street Address is required")%>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <%: Html.LabelFor(model => model.Street2)%><br />
                        <%: Html.TextAreaFor(model => model.Street2, new { @style = "width:85%;min-width:500px;height:50px;", @col = "80", @row = "5" })%>
                        <%: Html.ValidationMessageFor(model => model.Street2)%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%: Html.LabelFor(model => model.City) %><span class="required">*</span>
                        <br />
                        <%: Html.TextBoxFor(model => model.City) %>
                        <%: Html.ValidationMessageFor(model => model.City, "City is required")%>
                    </td>
                    <td>
                        <%: Html.LabelFor(model => model.CountryId) %><br />
                        <%:Html.DropDownListFor(model => model.CountryId, (IEnumerable<SelectListItem>)ViewData["Countries"], "Select", new { @class = "selectNone", @id = "CountryId", onchange = "fillSelectedCountryStateList()" })%>
                        <%: Html.ValidationMessageFor(model => model.CountryId) %>
                    </td>
                    <td>
                        <%: Html.LabelFor(model => model.StateId) %><span class="required">*</span>
                        <br />
                        <%:Html.DropDownListFor(model => model.StateId, (IEnumerable<SelectListItem>)ViewData["States"], "Select", new { @class = "selectNone", @id = "StateId" })%>
                        <%: Html.ValidationMessageFor(model => model.StateId, "State is required")%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%: Html.LabelFor(model => model.Zip) %>
                        <br />
                        <%: Html.TextBoxFor(model => model.Zip) %>
                        <%: Html.ValidationMessageFor(model => model.Zip) %>
                    </td>
                    <td>
                        <%: Html.LabelFor(model => model.Phone) %>
                        <br />
                        <%: Html.TextBoxFor(model => model.Phone) %>
                        <%: Html.ValidationMessageFor(model => model.Phone) %>
                    </td>
                    <td>
                        <%: Html.LabelFor(model => model.Cell)%>
                        <br />
                        <%: Html.TextBoxFor(model => model.Cell)%>
                        <%: Html.ValidationMessageFor(model => model.Cell)%>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <%: Html.LabelFor(model => model.Email) %><br />
                        <%: Html.TextBoxFor(model => model.Email, new {@style="width:400px;" })%>
                        <%: Html.ValidationMessageFor(model => model.Email) %>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%: Html.LabelFor(model => model.NationalityId) %><br />
                        <%:Html.DropDownListFor(model => model.NationalityId, (IEnumerable<SelectListItem>)ViewData["Nationalities"], "Select", new { @class = "selectNone", @id = "NationalityId" })%>
                        <%: Html.ValidationMessageFor(model => model.NationalityId)%>
                    </td>
                    <td>
                        <%: Html.LabelFor(model => model.ReligionId) %><br />
                        <%:Html.DropDownListFor(model => model.ReligionId, (IEnumerable<SelectListItem>)ViewData["Religions"], "Select", new { @class = "selectNone", @id = "ReligionId" })%>
                        <%: Html.ValidationMessageFor(model => model.ReligionId)%>
                    </td>
                    <td>
                        <%: Html.LabelFor(model => model.Mothertoungue) %><br />
                        <%: Html.TextBoxFor(model => model.Mothertoungue) %>
                        <%: Html.ValidationMessageFor(model => model.Mothertoungue) %>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%: Html.LabelFor(model => model.PAN) %><br />
                        <%: Html.TextBoxFor(model => model.PAN) %>
                        <%: Html.ValidationMessageFor(model => model.PAN) %>
                    </td>
                    <td>
                        <%: Html.LabelFor(model => model.PassportNo) %><br />
                        <%: Html.TextBoxFor(model => model.PassportNo) %>
                        <%: Html.ValidationMessageFor(model => model.PassportNo) %>
                    </td>
                    <td>
                        <%: Html.LabelFor(model => model.UIDNo) %><br />
                        <%: Html.TextBoxFor(model => model.UIDNo) %>
                        <%: Html.ValidationMessageFor(model => model.UIDNo) %>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%: Html.LabelFor(model => model.QualificationId) %><br />
                        <%:Html.DropDownListFor(model => model.QualificationId, (IEnumerable<SelectListItem>)ViewData["Qualifications"], "Select", new { @class = "selectNone", @id = "QualificationId" })%>
                        <%: Html.ValidationMessageFor(model => model.QualificationId) %>
                    </td>
                    <td>
                        <%: Html.LabelFor(model => model.FamilyIncomeSlotId) %><br />
                        <%:Html.DropDownListFor(model => model.FamilyIncomeSlotId, (IEnumerable<SelectListItem>)ViewData["FamilyIncomeSlots"], "Select", new { @class = "selectNone", @id = "FamilyIncomeSlotId" })%>
                        <%: Html.ValidationMessageFor(model => model.FamilyIncomeSlotId) %>
                    </td>
                    <td>
                        <%: Html.LabelFor(model => model.OccupationId) %><br />
                        <%:Html.DropDownListFor(model => model.OccupationId, (IEnumerable<SelectListItem>)ViewData["Occupations"], "Select", new { @class = "selectNone", @id = "OccupationId" })%>
                        <%: Html.ValidationMessageFor(model => model.OccupationId) %>
                    </td>
                </tr>
            </table>
            <%--  <p>
                <input type="submit" value="Next>>" name="Submit" id="next" />
            </p>--%>
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
