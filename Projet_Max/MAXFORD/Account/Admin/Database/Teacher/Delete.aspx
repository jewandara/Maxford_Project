<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Teacher/Teacher.Master" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="MAXFORD.Account.Admin.Database.Teacher.Delete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .gridview th { font-size: large;font-weight: bold;color: Navy;border: 1px solid black;padding: 8px;}                
        .gridview th a{ text-decoration:none; }
        .gridview th a:hover{ color:#39423b }
        .gridview td { padding: 8px; border: 1px solid black;}
        .gridview tr td a { text-decoration:none; display:block; padding:7px; background:#099999; }
        .gridview tr td a:hover {background:#175858; color:#fff }
    </style>
    <script src="NewFolder1/scripts/jquery-1.4.3.min.js" type="text/javascript"></script>
    <style type="text/css">
        .web_dialog_overlay
        {
            position: fixed;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            height: 100%;
            width: 100%;
            margin: 0;
            padding: 0;
            background: #0a240f;
            opacity: .65;
            filter: alpha(opacity=65);
            -moz-opacity: .65;
            z-index: 101;
            display: none;
        }
        .web_dialog
        {
            display: none;
            position: fixed;
            width: 380px;
            height: 150px;
            top: 50%;
            left: 50%;
            margin-left: -190px;
            margin-top: -100px;
            background-color: #ffffff;
            border: 2px solid #740c0c;
            padding: 0px;
            z-index: 102;
            font-family: Verdana;
            font-size: 10pt;
        }
        .web_dialog_title
        {
            border-bottom: solid 2px #740c0c;
            background-color: #740c0c;
            padding: 4px;
            color: White;
            font-weight:bold;
        }
        .web_dialog_title a
        {
            color: White;
            text-decoration: none;
        }
        .align_right
        {
            text-align: right;
        }
    </style>
    <script type="text/javascript">

        $(document).ready(function () {
            $("#btnShowSimple").click(function (e) {
                ShowDialog(false);
                e.preventDefault();
            });

            $("#btnShowModal").click(function (e) {
                ShowDialog(true);
                e.preventDefault();
            });

            $("#btnClose").click(function (e) {
                HideDialog();
                e.preventDefault();
            });

            $("#btnSubmit").click(function (e) {
                var brand = $("#brands input:radio:checked").val();
                $("#output").html("<b>Your favorite mobile brand: </b>" + brand);
                HideDialog();
                e.preventDefault();
            });
        });

        function ShowDialog(modal) {
            $("#overlay").show();
            $("#dialog").fadeIn(300);

            if (modal) {
                $("#overlay").unbind("click");
            }
            else {
                $("#overlay").click(function (e) {
                    HideDialog();
                });
            }
        }

        function HideDialog() {
            $("#overlay").hide();
            $("#dialog").fadeOut(300);
        }

</script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="container">
        <div class="pageContainer">
            <div style="border:solid 2px #099999; padding:15px;">
                <div class="max_middle_nav_bar">
                    <ul>
                        <li><a id="A1" runat="server" href="~/Account/Admin/Manage.aspx" > HOME </a></li> >
                        <li><a id="A2" runat="server" href="~/Account/Admin/Database/Default.aspx" > DATABASE </a></li> >
                        <li><a id="A3" runat="server" href="~/Account/Admin/Database/Teacher/Default.aspx" > VIEW </a></li>
                    </ul>
                </div>

                    <input type="button" id="btnShowModal" value="Modal Dialog" />

                    <br /><br />
                    <div id="output"></div>
                    <div id="overlay" class="web_dialog_overlay"></div>
    
                    <div id="dialog" class="web_dialog">
                        <table style="width: 100%; border: 0px;" cellpadding="3" cellspacing="0">
                            <tr>
                                <td class="web_dialog_title">Delete Maxford Teacher</td>
                                <td class="web_dialog_title align_right">
                                    <a href="#" id="btnClose">X</a>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2" style="padding-left: 15px;">
                                    <b>Are you sure you want to delete this teacher? </b>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <div id="brands">
                                        <input id="brand1" name="brand" type="radio" checked="checked" value="Nokia" hidden="hidden" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="text-align: center;">
                                    <input id="btnSubmit" type="button" value="DELETE" />
                                    <input id="Button1" type="button" value="CANCEL" />
                                </td>
                            </tr>
                        </table>
                    </div>


                <br />
            </div>
        </div>
    </div>



<script src="assets/jquery/jquery.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/smooth-scroll/SmoothScroll.js"></script>
<script src="assets/mobirise/js/script.js"></script>
</asp:Content>
