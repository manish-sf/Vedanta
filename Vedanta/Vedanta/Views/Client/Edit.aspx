<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Vedanta.Models.Clients>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
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
                        var divNoPhoto = document.getElementById("agentPhotos3");
                        divNoPhoto.style.display = 'none';
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
                Edit Client</h2>
        </div>
        <div class="pageLink">
            <%if (Roles.IsUserInRole("SuperAdmin"))
              {%>
            <a href="/Client/List">
                <img src="../../Images/list.png" alt="" title="Client List" /></a><%} %>
            <a href="/Client/Details/<%:Model.Id %>">
                <img src="../../Images/list-details.png" alt="" title="Client Details" /></a>
            <%--<span class="noprint">
                    &nbsp;|&nbsp;</span><a href="javascript:window.print()" class="noprint">Print</a>--%>
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
        <% using (Html.BeginForm("Edit", "Client", FormMethod.Post, new { @id = "frmEditClient", enctype = "multipart/form-data" }))
           {%>
        <%: Html.ValidationSummary(true) %>
        <table style="width: 100%;">
            <tr>
                <td class="editor-label" style="width: 150px;">
                    Client Name
                </td>
                <td class="editor-field">
                    <%: Html.TextBoxFor(model => model.Name, new {@style="width:450px" })%>
                    <%: Html.ValidationMessageFor(model => model.Name) %>
                </td>
            </tr>
            <tr>
                <td class="editor-label">
                    Business Type
                </td>
                <td class="editor-field">
                    <%= Html.DropDownListFor(model => model.BusinessTypeId, (IEnumerable<SelectListItem>)ViewData["BusinessTypeList"], "Select")%>
                    <%: Html.ValidationMessageFor(model => model.BusinessTypeId)%>
                </td>
            </tr>
            <tr>
                <td class="editor-label">
                    Address:
                </td>
                <td>
                    <table width="100%" class="DetailView">
                        <tr>
                            <td style="min-width: 30px;">
                                Lane:
                            </td>
                            <td>
                                <%: Html.TextBoxFor(model => model.Lane) %>
                                <%: Html.ValidationMessageFor(model => model.Lane) %>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Street:
                            </td>
                            <td>
                                <%: Html.TextBoxFor(model => model.Street) %>
                                <%: Html.ValidationMessageFor(model => model.Street) %>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                City:
                            </td>
                            <td>
                                <%: Html.TextBoxFor(model => model.City) %>
                                <%: Html.ValidationMessageFor(model => model.City) %>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Country:
                            </td>
                            <td>
                                <%= Html.DropDownListFor(model => model.CountryId, (IEnumerable<SelectListItem>)ViewData["CountryList"], "Select", new { @class = "selectNone", @id = "CountryId", onchange = "fillSelectedCountryStateList()" })%>
                                <%: Html.ValidationMessageFor(model => model.CountryId)%>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                State:
                            </td>
                            <td>
                                <%= Html.DropDownListFor(model => model.StateId, (IEnumerable<SelectListItem>)ViewData["StateList"], "Select", new { @class = "selectNone", @id = "StateId" })%>
                                <%: Html.ValidationMessageFor(model => model.StateId) %>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Zip:
                            </td>
                            <td>
                                <%: Html.TextBoxFor(model => model.Zip) %>
                                <%: Html.ValidationMessageFor(model => model.Zip) %>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="editor-label">
                    Phone(1)
                </td>
                <td class="editor-field">
                    <%: Html.TextBoxFor(model => model.Phone1) %>
                    <%: Html.ValidationMessageFor(model => model.Phone1) %>
                </td>
            </tr>
            <tr>
                <td class="editor-label">
                    Phone(2)
                </td>
                <td class="editor-field">
                    <%: Html.TextBoxFor(model => model.Phone2) %>
                    <%: Html.ValidationMessageFor(model => model.Phone2) %>
                </td>
            </tr>
            <tr>
                <td class="editor-label">
                    Cell
                </td>
                <td class="editor-field">
                    <%: Html.TextBoxFor(model => model.Cell) %>
                    <%: Html.ValidationMessageFor(model => model.Cell) %>
                </td>
            </tr>
            <tr>
                <td class="editor-label">
                    Email
                </td>
                <td class="editor-field">
                    <%: Html.TextBoxFor(model => model.Email) %>
                    <%: Html.ValidationMessageFor(model => model.Email) %>
                </td>
            </tr>
            <tr>
                <td class="editor-label">
                    Website
                </td>
                <td class="editor-field">
                    <%: Html.TextBoxFor(model => model.Website) %>
                    <%: Html.ValidationMessageFor(model => model.Website) %>
                </td>
            </tr>
            <tr>
                <td class="editor-label">
                    Created Date
                </td>
                <td class="editor-field">
                    <%if (Roles.IsUserInRole("SuperAdmin"))
                      { %>
                    <%: Html.TextBoxFor(model => model.CreateDate, new {@class="date" })%>
                    <%: Html.ValidationMessageFor(model => model.CreateDate)%>
                    <%}
                      else
                      { %>
                    <%:Model.CreateDate%>
                    <%} %>
                </td>
            </tr>
            <tr>
                <td class="editor-label">
                    Contract Start Date
                </td>
                <td class="editor-field">
                    <%if (Roles.IsUserInRole("SuperAdmin"))
                      { %>
                    <%: Html.TextBoxFor(model => model.ContractStartDate, new {@class="date" })%>
                    <%: Html.ValidationMessageFor(model => model.ContractStartDate) %>
                    <%}
                      else
                      { %>
                    <%:Model.ContractStartDate%>
                    <%} %>
                </td>
            </tr>
            <tr>
                <td class="editor-label">
                    Contract End Date
                </td>
                <td class="editor-field">
                    <%if (Roles.IsUserInRole("SuperAdmin"))
                      { %>
                    <%: Html.TextBoxFor(model => model.ContractEndDate)%>
                    <%: Html.ValidationMessageFor(model => model.ContractEndDate)%><%}
                      else
                      { %>
                    <%:Model.ContractEndDate%>
                    <%} %>
                </td>
            </tr>
            <tr>
                <td class="editor-label">
                    Max. Number Of Schools Allowed To Maintain
                </td>
                <td class="editor-field">
                    <%: Html.TextBoxFor(model => model.NoOfSchoolsPermitted) %>
                    <%: Html.ValidationMessageFor(model => model.NoOfSchoolsPermitted) %>
                </td>
            </tr>
            <tr>
                <td class="editor-label">
                    Max. Number Of Users Allowed To Maintain
                </td>
                <td class="editor-field">
                    <%: Html.TextBoxFor(model => model.NoOfUsers) %>
                    <%: Html.ValidationMessageFor(model => model.NoOfUsers) %>
                </td>
            </tr>
            <tr>
                <td style="text-align: left; vertical-align: top">
                    <div>
                        <div id="photo-box">
                            <%if (Model != null && Model.Logo != null)
                              { %>
                            <img src="/Client/ClientLogoLoader/<%: Model.Id %>" alt="" id="agentPhotos<%: Model.Id %>"
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
            <input type="submit" value="Save Client" class="submit" />
        </p>
        <% } %>
    </div>
</asp:Content>
