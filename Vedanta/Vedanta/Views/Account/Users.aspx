<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Vedanta.Models.vw_Users_Lists>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Users
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        #divSearch
        {
            float: left;
            height: 110px;
            min-width: 355px;
            text-align: right;
        }
        #wrapper
        {
            background-color: #fff;
            border: 1px solid rgb(195, 195, 195); /* border:1px solid #872020;*/
            width: 355px;
            height: 92%;
            float: right;
            text-align: center;
            border-radius: 5px;
            vertical-align: top;
            padding: 2px;
        }
    </style>
    <script>
        $(document).ready(function () {


            //            $("#btnExport").click(function (e) {
            //                window.open('data:application/vnd.ms-excel,' + $('#searchResult').html());
            //                e.preventDefault();
            //            });


            $("#btnSearch").click(function () {
                // alert("Hello");
                //alert($('#BranchId option:selected').val());
                $.ajax({
                    type: "POST",
                    url: "/Account/Users/",
                    //data: { "searchText": $("#txtSearch").val() },
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
        });
    </script>
    <div class="pageTitle">
        <div class="pageHeader">
            <h2>
                Users List</h2>
        </div>
        <%--<div id="divSearch">
            <div id="wrapper">
                <span id="spnZone">Zones:
                    <%: Html.DropDownList("Zonales", (IEnumerable<SelectListItem>)ViewData["Zones"], "Select", new { @class = "selectNone", @id = "ZoneId", @width = "150", onchange = "fillSelectedZoneRegionList()" })%>
                </span>
                <p>
                    <%if (ViewData["Regions"] != null)
                      { %>
                    <span id="spnRegion">Regions:
                        <%: Html.DropDownList("Regionals", (IEnumerable<SelectListItem>)ViewData["Regions"], "Select", new { @class = "selectNone", @id = "RegionId", @style = "width:150px;", onchange = "fillSelectedRegionBranchList()" })%></span>
                    <br />
                    <%} %>
                    <span id="spnBranch">Branchs:
                        <%: Html.DropDownList("Branchs", (IEnumerable<SelectListItem>)ViewData["Branches"], "Select", new { @class = "selectNone", @id = "BranchId"})%></span>
                    <input type="button" id="btnSearch" value="Search" title="Search employee" class="btnSearch"></p>
            </div>
        </div>--%>
        <div class="pageLink">
            <%--<%: Html.ActionLink("New Employee", "New", null, new { @title = "add new employee" })%>--%>
            <a href="/Account/Register">
                <img src="../../Images/add_user.png" alt="" title="Register New User" /></a>
            <a href="javascript:window.print()">
                <img class="printer" src="../../Images/print_32.png" alt="Print" title="Print Receipt" /></a>
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
        <% using (Ajax.BeginForm("Users", "Account", new AjaxOptions { HttpMethod = "POST", UpdateTargetId = "searchResult", InsertionMode = InsertionMode.Replace }))
           { %>
        <div id="searchResult">
            <%Html.RenderPartial("UserListUserControl", Model);%>
        </div>
        <%} %>
    </div>
</asp:Content>
