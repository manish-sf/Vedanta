<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Vedanta.Models.vw_Student_Lists>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Student List
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        #divSearch
        {
            float: left;
            height: 100%;
            min-width: 355px;
            text-align: right;
        }
        #btnSearch
        {
            background: none; /*  background-image: url('../images/find.png');*/
            background-repeat: no-repeat;
            border: none;
            height: 24px;
            width: 2px;
        }
        
        #btnSearch hover
        {
            border: none;
        }
        
        #txtSearch
        {
            border: 1px solid #000;
            height: 22px;
            border: none;
            width: 285px;
        }
        #wrapper
        {
            background-color: #fff;
            border: 1px solid rgb(195, 195, 195);
            width: 300px;
            height: 30px;
            float: right;
            text-align: left;
            border-radius: 5px;
            vertical-align: top;
            padding: 2px;
        }
        
        #divPopResult
        {
            background-color: #ffffff;
            text-align: left;
            margin-top: 22px;
            padding-left: 5px;
            display: none;
            height: 200px;
            color: #023a67;
            overflow: scroll;
            opacity: 0.90;
            filter: alpha(opacity=0);
            z-index: 999999;
            margin-left: 50px;
        }
        #divPopResult ul
        {
            list-style-type: square;
            text-align: left;
            padding-left: 0px;
            background-color: #c3c3c3;
        }
        
        #divPopResult ul li
        {
            background-color: #fff;
            color: #000;
            padding-bottom: 2px;
            border-bottom-color: #7d7d7d;
            min-height: 30px;
        }
        
        #divPopResult ul li a
        {
            color: #000;
            padding-bottom: 2px;
            border-bottom-color: #7d7d7d;
            text-decoration: none;
            width: 100%;
            height: 100%;
            padding-left: 5px;
        }
        #divPopResult ul li a:hover
        {
            background-color: #fff;
            color: #5c5757;
            padding-bottom: 2px;
            border-bottom-color: #fff;
            width: 100%;
            height: 100%;
            font-weight: bold;
        }
        
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
            width: 50px;
            height: 50px;
            padding: 5px;
            text-align: left;
            overflow: hidden;
            float: left;
        }
    </style>
    <script type="text/javascript">
        var tableToExcel = (function () {
            var uri = 'data:application/vnd.ms-excel;base64,'
    , template = '<html xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns="http://www.w3.org/TR/REC-html40"><head><!--[if gte mso 9]><xml><x:ExcelWorkbook><x:ExcelWorksheets><x:ExcelWorksheet><x:Name>{worksheet}</x:Name><x:WorksheetOptions><x:DisplayGridlines/></x:WorksheetOptions></x:ExcelWorksheet></x:ExcelWorksheets></x:ExcelWorkbook></xml><![endif]--></head><body><table>{table}</table></body></html>'
    , base64 = function (s) { return window.btoa(unescape(encodeURIComponent(s))) }
    , format = function (s, c) { return s.replace(/{(\w+)}/g, function (m, p) { return c[p]; }) }
            return function (table, name) {
                if (!table.nodeType) table = document.getElementById(table)
                var ctx = { worksheet: name || 'Worksheet', table: table.innerHTML }
                window.location.href = uri + base64(format(template, ctx))
            }
        })();


        $(document).ready(function () {


            //            $("#btnExport").click(function (e) {
            //                window.open('data:application/vnd.ms-excel,' + $('#searchResult').html());
            //                e.preventDefault();
            //            });


            $("#btnSearch").click(function () {
                // alert("Hello");
                $.ajax({
                    type: "POST",
                    url: "/Students/List/",
                    data: { "searchText": $("#txtSearch").val() },
                    success: function (data) {
                        //$('#divSearchResult').html(data.Name);
                        //                        $("#divSearchResult").html('');
                        //                        $.each(data, function () {
                        //                            $("#divSearchResult").append('<br>' + this.Name);
                        //                        });
                        //                        //alert(data.length);
                        //                        if (data.length > 0)
                        //                            $("#divSearchResult").show();

                        $("#searchResult").html(data);
                    },
                    failure: function (response) {
                        alert(response);
                    }
                });
            });

            $("#txtSearch").focusout(function () {
                // $("#divPopResult").hide();
            });

            $("#txtSearch").bind('keydown', function (e) {                // 
                if (e.keyCode == 13) {
                    // if ($("#txtSearch").val().length > 3) {
                    // alert("Enter Pressed");
                    $("#divPopResult").hide();
                    $("#btnSearch").click();
                    //}
                }
            });

            //            $("#txtSearch").keyup(function (e) {
            //                $("#divPopResult").hide();
            //                console.log($("#txtSearch").val());
            //                if ($("#txtSearch").val().length > 3) {

            //                    $.ajax({
            //                        type: "POST",
            //                        url: "/Helper/SearchStudentByFreeText/",
            //                        data: { "searchText": $("#txtSearch").val() },
            //                        success: function (data) {
            //                            //$('#divSearchResult').html(data.Name);
            //                            $("#divPopResult ul").html('');
            //                            //$("#divPopResult").append('<ul>');
            //                            // populateDropdown($("#ddlEmpls"), data);
            //                            $.each(data, function () {
            //                                //$("#divPopResult").append('<br/><span class="empList">' + this.Name + '</span>');

            //                                $("#divPopResult ul").append('<li><a href="#">' + this.Name + '</a></li>');
            //                            });
            //                            //                            
            //                            if (data.length > 0)
            //                                $("#divPopResult").show();

            //                        },
            //                        failure: function (response) {
            //                            alert(response);
            //                        }
            //                    });
            //                }
            //            });

            function populateDropdown(select, data) {
                // alert("filling drop down");
                select.html('');
                $.each(data, function (id, option) {
                    select.append($('<option></option>').val(option.Id).html(option.Name));
                });
            }
        });
       
    </script>
    <div class="pageTitle">
        <div class="pageHeader">
            <h2>
                Students List</h2>
        </div>
        <div id="divSearch">
            <div id="wrapper">
                <%: Html.TextBox("txtSearch", string.Empty, new {id="txtSearch", @placeholder = "Search Student by name reg. course",@title="Search employee" })%>
                <input type="button" id="btnSearch" value="" title="Search employee" />
            </div>
            <br />
            <div id="divPopResult" style="">
                <ul>
                </ul>
            </div>
        </div>
        <div class="pageLink">
            <a href="/Students/New">
                <img src="../../Images/add_user.png" alt="" title="New Admission" /></a> <a href="/Students/Fees">
                    <img src="../../Images/cash_stack_add.png" alt="" title="Fee Collection" />
                </a>
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
        <input type="button" value="" id="btnExport" onclick="tableToExcel('tblSearch', 'W3C Example Table')"
            title="Export to Excel" />&nbsp;
        <% using (Ajax.BeginForm("List", "Students", new AjaxOptions { HttpMethod = "POST", UpdateTargetId = "searchResult", InsertionMode = InsertionMode.Replace }))
           { %>
        <div id="searchResult">
            <%Html.RenderPartial("StudentListUserControl", Model);%>
        </div>
        <%} %>
    </div>
</asp:Content>
