<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Vedanta.Models.Branches>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit Branch
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
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
                        //divNoPhoto.style.display = 'none';
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
                Edit Branch</h2>
        </div>
        <div class="pageLink">
            <a href="/Branch/BranchList">
                <img src="../../Images/list_2.png" alt="" title="Branch List" /></a> <a href="/Branch/Details/<%:Model.Id %>">
                    <img src="../../Images/back.png" alt="" title="Back To Detail" /></a>
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
        <% using (Html.BeginForm("Close", "Branch", FormMethod.Post, new { @id = "frmEditBranch", enctype = "multipart/form-data" }))
           {%>
        <%: Html.ValidationSummary(true) %>
        <p style="margin: 0px; padding-top: 10px; text-align: right;">
            <span class="required">*</span>(Asterisk) indicates required fields</p>
        <table class="mainTable" border="0">
            <tr>
                <td colspan="2">
                    <%: Html.LabelFor(model => model.BranchTypeId)%><span class="required">*</span><br />
                    <%:Html.DropDownListFor(model => model.BranchTypeId, (IEnumerable<SelectListItem>)ViewData["BranchTypes"], "Select", new { @class = "selectNone", @id = "branchTypeId", @disabled = "disabled" })%>
                    <%: Html.ValidationMessageFor(model => model.BranchTypeId)%>
                </td>
            </tr>
            <tr>
                <td>
                    <%: Html.LabelFor(model => model.BranchCode) %><span class="required">*</span><br />
                    <%: Html.TextBoxFor(model => model.BranchCode, new { @readonly="readonly" })%>
                    <%: Html.ValidationMessageFor(model => model.BranchCode) %>
                </td>
                <td>
                    <%: Html.LabelFor(model => model.BranchName) %><span class="required">*</span><br />
                    <%: Html.TextBoxFor(model => model.BranchName, new { @readonly = "readonly" })%>
                    <%: Html.ValidationMessageFor(model => model.BranchName) %>
                </td>
            </tr>
            <%if (ViewData["Zones"] != null)
              { %>
            <tr>
                <td>
                    <%: Html.LabelFor(model => model.ZonalOfficeId)%><span class="required">*</span><br />
                    <%:Html.DropDownListFor(model => model.ZonalOfficeId, (IEnumerable<SelectListItem>)ViewData["Zones"], "Select", new { @class = "selectNone", @id = "ZoneId", onchange = "fillSelectedZoneRegionList()", @disabled = "disabled" })%>
                    <%: Html.ValidationMessageFor(model => model.ZonalOfficeId)%>
                </td>
                <td>
                    <%: Html.LabelFor(model => model.RegionalOfficeId)%><span class="required">*</span><br />
                    <%:Html.DropDownListFor(model => model.RegionalOfficeId, (IEnumerable<SelectListItem>)ViewData["Regions"], "Select", new { @class = "selectNone", @id = "RegionId", @disabled = "disabled" })%>
                    <%: Html.ValidationMessageFor(model => model.RegionalOfficeId)%>
                </td>
            </tr>
            <%} %>
            <tr>
                <td colspan="2">
                    <%: Html.LabelFor(model => model.Address1) %><span class="required">*</span><br />
                    <%: Html.TextBoxFor(model => model.Address1, new { @style = "width:85%;min-width:500px;", @readonly = "readonly" })%>
                    <%: Html.ValidationMessageFor(model => model.Address1, "Street Address is required")%>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <%: Html.LabelFor(model => model.Address2) %><br />
                    <%: Html.TextBoxFor(model => model.Address2, new { @style = "width:85%;min-width:500px;", @readonly = "readonly" })%>
                    <%: Html.ValidationMessageFor(model => model.Address2) %>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <%: Html.LabelFor(model => model.City) %><span class="required">*</span><br />
                    <%: Html.TextBoxFor(model => model.City, new { @readonly = "readonly" }) %>
                    <%: Html.ValidationMessageFor(model => model.City, "City is required")%>
                </td>
            </tr>
            <tr>
                <td>
                    <%: Html.LabelFor(model => model.CountryId) %><br />
                    <%:Html.DropDownListFor(model => model.CountryId, (IEnumerable<SelectListItem>)ViewData["Countries"], "Select", new { @class = "selectNone", @id = "CountryId", onchange = "fillSelectedCountryStateList()"})%>
                    <%: Html.ValidationMessageFor(model => model.CountryId) %>
                </td>
                <td>
                    <%: Html.LabelFor(model => model.StateId) %><span class="required">*</span><br />
                    <%:Html.DropDownListFor(model => model.StateId, (IEnumerable<SelectListItem>)ViewData["States"], "Select", new { @class = "selectNone", @id = "StateId" })%>
                    <%: Html.ValidationMessageFor(model => model.StateId, "State is required")%>
                </td>
            </tr>
            <tr>
                <td>
                    <%: Html.LabelFor(model => model.PIN) %><span class="required">*</span><br />
                    <%: Html.TextBoxFor(model => model.PIN, new { @readonly = "readonly" }) %>
                    <%: Html.ValidationMessageFor(model => model.PIN) %>
                </td>
                <td>
                    <%: Html.LabelFor(model => model.Phones) %><br />
                    <%: Html.TextBoxFor(model => model.Phones, new { @readonly = "readonly" })%>
                    <%: Html.ValidationMessageFor(model => model.Phones) %>
                </td>
            </tr>
            <tr>
                <td>
                    <%: Html.LabelFor(model => model.Fax) %><br />
                    <%: Html.TextBoxFor(model => model.Fax, new { @readonly = "readonly" })%>
                    <%: Html.ValidationMessageFor(model => model.Fax) %>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <%: Html.LabelFor(model => model.Email) %><br />
                    <%: Html.TextBoxFor(model => model.Email, new { @style = "width:400px;", @readonly = "readonly" })%>
                    <%: Html.ValidationMessageFor(model => model.Email) %>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <%: Html.LabelFor(model => model.Remarks) %><br />
                    <%: Html.TextBoxFor(model => model.Remarks, new { @style = "width:85%;min-width:500px;" })%>
                    <%: Html.ValidationMessageFor(model => model.Remarks) %>
                </td>
            </tr>
            <tr>
                <td class="editor-label">
                    Logo
                </td>
                <td>
                    <div>
                        <div id="photo-box">
                            <%if (Model != null && Model.Logo != null)
                              { %>
                            <img src="/Branch/BranchLogoLoader/<%: Model.Id %>" alt="" id="agentPhotos<%: Model.Id %>"
                                style="height: 100px; width: 100px; padding-top: 5px;" />
                            <img src="../../images/image-not-available.png" alt="" id="imgThumbnail2" style="height: 100px;
                                width: 100px; padding: 5px; display: none;" />
                            <%}
                              else
                              { %>
                            <img src="../../images/image-not-available.png" alt="" id="imgThumbnail2" style="height: 100px;
                                width: 100px; padding: 5px; display: none;" />
                            <%} %>
                        </div>
                        <div id="uploadImage">
                            <h2>
                                Upload Image<%= Html.ValidationMessage("agentPhoto", "*")%></h2>
                            <span id="divAgentPhoto">
                                <input id="agentPhoto" type="file" name="agentPhoto" style="padding: 5px; width: 300px"
                                    onchange="ChangeImage('agentPhoto','#imgThumbnail2')" />
                                <br />
                                <input type="button" name="resetLogo" value="Reset Image" id="btnReset" onclick="clearFileInput()" />
                                <br />
                                Only jpg, jpeg, gif and png file formats are allowed. </span>
                        </div>
                    </div>
                </td>
            </tr>
        </table>
        <p>
            <input type="submit" value="Update" id="submit" title="Update Branch" />
        </p>
        <% } %>
    </div>
</asp:Content>
